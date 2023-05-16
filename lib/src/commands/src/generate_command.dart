import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:cmd_plus/cmd_plus.dart';
import 'package:dart_define/src/extension/extension.dart';
import 'package:dart_define/src/model/model.dart';
import 'package:dart_define/src/resource/resource.dart';
import 'package:dart_define/src/utility/utility.dart';

/// {@template generate_command}
///
/// `my_executable sample`
/// A [Command] to exemplify a sub command
/// {@endtemplate}
class GenerateCommand extends Command<int> {
  /// {@macro generate_command}
  GenerateCommand({
    required this.cmdPlus,
  }) {
    argParser
      ..addOption(
        kDartPathArg,
        help: 'Path to the generated dart file',
        valueHelp: kDartPathArgDefault,
        defaultsTo: kDartPathArgDefault,
      )
      ..addOption(
        kJsonPathArg,
        help: 'Path to the generated json file',
        valueHelp: kJsonPathArgDefault,
        defaultsTo: kJsonPathArgDefault,
      )
      ..addOption(
        kClassNameArg,
        help: 'Name of the generated dart class',
        valueHelp: kClassNameArgDefault,
        defaultsTo: kClassNameArgDefault,
      )
      ..addFlag(
        kGenerateDartArg,
        help: 'Whether to generate the dart boilerplate or not',
        defaultsTo: null,
      )
      ..addFlag(
        kGenerateJsonArg,
        help: 'Whether to generate the json boilerplate or not',
        defaultsTo: null,
      )
      ..addSeparator('Variables from config yaml');

    final readingConfig = cmdPlus.logger.progress(
      'Reading config from pubspec.yaml',
    );

    final yaml = DartDefineYaml();

    config = yaml.readConfiguration();

    for (final variable in config.variables) {
      argParser.addOption(
        variable.name,
        help: variable.description,
        defaultsTo:
            variable.required ? null : variable.defaultValue?.toString(),
        valueHelp: variable.defaultValue?.toString(),
        mandatory: variable.required,
      );
    }

    readingConfig.complete();
  }

  @override
  String get description =>
      'A command for generating the boilerplate code for dart-define configurations';

  @override
  String get name => 'generate';

  final CmdPlus cmdPlus;

  late DartDefineConfiguration config;

  @override
  Future<int> run() async {
    /// Possibly override values from the config file with CLI args
    final dartPath = argResults!.getAndMaybeOverrideOriginal<String>(
      kDartPathArg,
      config.dartPath,
    );
    final jsonPath = argResults!.getAndMaybeOverrideOriginal<String>(
      kJsonPathArg,
      config.jsonPath,
    );
    final generateDart = argResults!.getAndMaybeOverrideOriginal<bool>(
      kGenerateDartArg,
      config.generateDart,
    );
    final generateJson = argResults!.getAndMaybeOverrideOriginal<bool>(
      kGenerateJsonArg,
      config.generateJson,
    );

    final className = argResults!.getAndMaybeOverrideOriginal<String>(
      kClassNameArg,
      config.className,
    );

    final argumentVariables = argResults!.getVariables(config.variables);

    /// Checks if all the required arguments are given, throws otherwise
    for (final variable in config.variables) {
      /// If the variable is given in the command options, we can continue in
      /// all the cases
      if (argumentVariables.any((e) => e.name == variable.name)) continue;

      if (variable.required) {
        /// If the argument is required and it is not given in the command options,
        /// we throw an error
        throw ArgumentError(
          'The required argument ${variable.name} is not given',
        );
      } else {
        /// If the variable is not required and is not given in the command options,
        /// but it has a default value, we can continue
        if (variable.defaultValue != null) continue;

        /// If the variable is not required and it does not have a default value and
        /// its not given in the command options, we throw an error
        throw ArgumentError(
          'The optional argument ${variable.name} does not have a default value',
        );
      }
    }

    if (generateJson) {
      final generatingJson = cmdPlus.logger.progress(
        'Generating json files',
      );

      JsonConfigurationGenerator(
        target: File(
          jsonPath,
        ),
        configuration: config,
        variables: argumentVariables,
      ).generate();

      generatingJson.complete();
    }

    if (generateDart) {
      final generatingDart = cmdPlus.logger.progress(
        'Generating dart files',
      );

      DartConfigurationGenerator(
        target: File(
          dartPath,
        ),
        className: className,
        configuration: config,
        variables: argumentVariables,
      ).generate();

      generatingDart.complete();
    }

    return ExitCode.success.code;
  }
}
