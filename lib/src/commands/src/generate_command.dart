import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:cmd_plus/cmd_plus.dart';
import 'package:dart_define/src/extension/extension.dart';
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
        kYamlPathArg,
        help: 'Path to the config yaml file',
        valueHelp: 'defaults to $kYamlPathArgDefault',
        defaultsTo: kYamlPathArgDefault,
      )
      ..addOption(
        kDartPathArg,
        help: 'Path to the generated dart file',
        valueHelp: 'defaults to $kDartPathArgDefault',
      )
      ..addOption(
        kJsonPathArg,
        help: 'Path to the generated json file',
        valueHelp: 'defaults to $kJsonPathArgDefault',
      )
      ..addOption(
        kWorkingDirectoryArg,
        help: 'Path to the working directory',
        valueHelp: 'defaults to $kWorkingDirectoryArgDefault',
        defaultsTo: kWorkingDirectoryArgDefault,
      )
      ..addOption(
        kClassNameArg,
        help: 'Name of the generated dart class',
        valueHelp: 'defaults to $kClassNameArgDefault',
        defaultsTo: kClassNameArgDefault,
      )
      ..addFlag(
        kGenerateDartArg,
        help: 'Whether to generate the dart boilerplate',
        defaultsTo: null,
      )
      ..addFlag(
        kGenerateJsonArg,
        help: 'Whether to generate the json boilerplate',
        defaultsTo: null,
      )
      ..addFlag(
        kGenerateIosArg,
        help: 'Whether to generate the IOS specific boilerplate',
        defaultsTo: null,
      )
      ..addFlag(
        kGenerateAndroidArg,
        help: 'Whether to generate the Android specific boilerplate',
        defaultsTo: null,
      );
  }

  @override
  String get description =>
      'A command for generating the boilerplate code for dart-define configurations';

  @override
  String get name => 'generate';

  final CmdPlus cmdPlus;

  @override
  Future<int> run() async {
    final yamlPath = argResults!.get<String>(kYamlPathArg);
    final dartPath = argResults!.get<String>(kDartPathArg);
    final jsonPath = argResults!.get<String>(kJsonPathArg);
    final workingDirectory = argResults!.get<String>(kWorkingDirectoryArg);
    final generateDart = argResults!.get<bool>(kGenerateDartArg);
    final generateJson = argResults!.get<bool>(kGenerateJsonArg);
    final generateIos = argResults!.get<bool>(kGenerateIosArg);
    final generateAndroid = argResults!.get<bool>(kGenerateAndroidArg);
    final className = argResults!.get<String>(kClassNameArg);

    final readingConfig = cmdPlus.logger.progress(
      'Reading config yaml',
    );

    final yaml = DartDefineYaml(
      path: yamlPath,
      workingDirectory: workingDirectory,
    );

    final config = yaml.readConfiguration();

    final argumentVariables = argResults!.getVariables();

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

    readingConfig.complete();

    if (config.generateJson.maybeOverride(generateJson)) {
      final generatingJson = cmdPlus.logger.progress(
        'Generating json files',
      );

      JsonConfigurationGenerator(
        target: File(
          config.jsonPath.maybeOverride(jsonPath),
        ),
        configuration: config,
        variables: argumentVariables,
      ).generate();

      generatingJson.complete();
    }

    if (config.generateDart.maybeOverride(generateDart)) {
      final generatingDart = cmdPlus.logger.progress(
        'Generating dart files',
      );

      DartConfigurationGenerator(
        target: File(
          config.dartPath.maybeOverride(dartPath),
        ),
        className: className,
        configuration: config,
      ).generate();

      generatingDart.complete();
    }

    if (config.generateAndroid.maybeOverride(generateAndroid)) {
      final generatingAndroid = cmdPlus.logger.progress(
        'Generating Android files',
      );

      // TODO: write to the platform files

      generatingAndroid.complete();
    }

    if (config.generateIos.maybeOverride(generateIos)) {
      final generatingIos = cmdPlus.logger.progress(
        'Generating iOS files',
      );

      generatingIos.complete();
    }

    return ExitCode.success.code;
  }
}
