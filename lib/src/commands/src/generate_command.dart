// ignore_for_file: avoid_redundant_argument_values

import 'dart:convert';
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
    required String yamlPath,
  }) {
    argParser
      ..addOption(
        kYamlPathArg,
        help: 'Path to the config yaml file',
        valueHelp: kYamlPathArgDefault,
        defaultsTo: kYamlPathArgDefault,
      )
      ..addSeparator('Config overrides from $yamlPath');

    final readingConfig = cmdPlus.logger.progress(
      'Reading config from $yamlPath',
    );

    final yaml = DartDefineYaml();

    try {
      config = yaml.readConfiguration(path: yamlPath);
    } catch (e) {
      config = const DartDefineConfiguration();
    }

    for (final variable in config.variables) {
      argParser.addOption(
        variable.name,
        help:
            '${variable.required ? 'required' : 'optional'}: ${variable.description}}',
        defaultsTo: variable.defaultValue?.toString(),
        valueHelp: variable.defaultValue?.toString(),
      );
    }

    final flavors = config.flavors;

    if (flavors != null) {
      if (config.variables.any((v) => v.name == kFlavorArg)) {
        throw ArgumentError(
          'You cannot specify a variable named "$kFlavorArg" when you have flavors in your config file. This name is reserved for the flavor argument.',
        );
      }

      config = config.copyWith(
        variables: [
          ...config.variables,
          VariableConfiguration(
            name: kFlavorArg,
            description: '',
            defaultValue: flavors.first.name,
          ),
        ],
      );

      argParser.addOption(
        kFlavorArg,
        help: 'optional: Flavor to generate the code for',
        allowed: flavors.map((e) => e.name),
        valueHelp: flavors.first.name,
        defaultsTo: flavors.first.name,
      );
    }

    readingConfig.complete();
    argParser
      ..addOption(
        kDartPathArg,
        help: 'Path to the generated dart file',
        valueHelp: config.dartPath,
        defaultsTo: config.dartPath,
      )
      ..addOption(
        kJsonPathArg,
        help: 'Path to the generated json file',
        valueHelp: config.jsonPath,
        defaultsTo: config.jsonPath,
      )
      ..addOption(
        kClassNameArg,
        help: 'Name of the generated dart class',
        valueHelp: config.className,
        defaultsTo: config.className,
      )
      ..addFlag(
        kGenerateDartArg,
        help: 'Whether to generate the dart boilerplate or not',
        defaultsTo: config.generateDart,
      )
      ..addFlag(
        kGenerateJsonArg,
        help: 'Whether to generate the json boilerplate or not',
        defaultsTo: config.generateJson,
      )
      ..addFlag(
        kGenerateGitignore,
        help: 'Whether to append gitignore with the config json or not',
        defaultsTo: config.generateGitignore,
      )
      ..addFlag(
        kForceArg,
        help:
            'This flag will override everything in the json file with default values from CLI options, system environment or yaml file.',
        defaultsTo: kForceArgDefault,
        negatable: false,
      );
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
    final force = argResults!.getAndMaybeOverrideOriginal<bool>(
      kForceArg,
      kForceArgDefault,
    );
    final generateGitignore = argResults!.getAndMaybeOverrideOriginal<bool>(
      kGenerateGitignore,
      config.generateGitignore,
    );

    final className = argResults!.getAndMaybeOverrideOriginal<String>(
      kClassNameArg,
      config.className,
    );

    final argumentVariables = argResults!.getVariables(config.variables);

    final jsonFile = File(jsonPath);

    /// Checks if all the required arguments are given, throws otherwise
    for (final variable in config.variables) {
      bool nameMatcher(ArgumentVariable v) => v.name == variable.name;
      bool nonNullNameMatcher(ArgumentVariable v) =>
          nameMatcher(v) && v.value != null;

      var argVariable = argumentVariables.firstWhere(
        nonNullNameMatcher,
        orElse: () => ArgumentVariable(
          name: variable.name,
          value: PlatformExtension.getEnvValue(variable.name),
        ),
      );

      // If we are not forcing the update, we check if the variable already exists in the json file
      if (!force && jsonFile.existsSync()) {
        try {
          final json = jsonFile.readAsStringSync();
          final map = jsonDecode(json) as Map<String, dynamic>;
          if (map.containsKey(variable.name)) {
            argVariable = argVariable.copyWith(
              value: map[variable.name],
            );
          }
        } catch (e) {
          throw ArgumentError(
            'The json file at $jsonPath is not a valid json file. Use --force to override the whole file or fix it yourself before running this command again.',
          );
        }
      }

      if (argVariable.value == null) {
        if (variable.required) {
          /// If the argument is required and it is not given in the command options,
          /// we throw an error
          throw ArgumentError(
            'The required argument ${variable.name} is not given as CLI option and is not found from system environment.',
          );
        }
        if (variable.defaultValue == null) {
          throw ArgumentError(
            'The optional argument ${variable.name} does not have a default value',
          );
        }
        argVariable = ArgumentVariable(
          name: variable.name,
          value: variable.defaultValue,
        );
      }

      argumentVariables
        ..removeWhere(nameMatcher)
        ..add(argVariable);
    }

    if (generateJson) {
      final generatingJson = cmdPlus.logger.progress(
        'Generating json files',
      );

      JsonConfigurationGenerator(
        target: jsonFile,
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

    if (generateGitignore && generateJson) {
      final generatingGitignore = cmdPlus.logger.progress(
        'Generating gitignore',
      );

      GitignoreConfigurationGenerator(
        target: File('.gitignore'),
        jsonPath: jsonPath,
      ).generate();

      generatingGitignore.complete();
    }

    return ExitCode.success.code;
  }
}
