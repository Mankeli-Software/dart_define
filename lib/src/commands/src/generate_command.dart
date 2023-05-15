import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:cmd_plus/cmd_plus.dart';
import 'package:dart_define/src/extension/extension.dart';
import 'package:dart_define/src/resource/resource.dart';
import 'package:dart_define/src/utility/src/dart_code_generator.dart';
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
        defaultsTo: kDartPathArgDefault,
      )
      ..addOption(
        kJsonPathArg,
        help: 'Path to the generated json file',
        valueHelp: 'defaults to $kJsonPathArgDefault',
        defaultsTo: kJsonPathArgDefault,
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
        defaultsTo: kGenerateDartArgDefault,
      )
      ..addFlag(
        kGenerateJsonArg,
        help: 'Whether to generate the json boilerplate',
        defaultsTo: kGenerateJsonArgDefault,
      )
      ..addFlag(
        kGeneratePlatformArg,
        help: 'Whether to generate the platform specific boilerplate',
        defaultsTo: kGeneratePlatformArgDefault,
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
    final generatePlatform = argResults!.get<bool>(kGeneratePlatformArg);
    final className = argResults!.get<String>(kClassNameArg);

    final readingConfig = cmdPlus.logger.progress(
      'Reading config yaml',
    );

    final yaml = DartDefineYaml(
      path: yamlPath,
      workingDirectory: workingDirectory,
    );

    // TODO: validate that all the required fields are given as parameter

    final config = yaml.readConfiguration();

    readingConfig.complete();

    if (generateJson) {
      final generatingJson = cmdPlus.logger.progress(
        'Generating json files',
      );
      // TODO: write to the json files

      generatingJson.complete();
    }

    if (generateDart) {
      final generatingDart = cmdPlus.logger.progress(
        'Generating dart files',
      );

      DartCodeGenerator(
        target: File(dartPath),
        className: className,
        configuration: config,
      ).generate();

      generatingDart.complete();
    }

    if (generatePlatform) {
      final generatingPlatform = cmdPlus.logger.progress(
        'Generating platform files',
      );

      // TODO: write to the platform files

      generatingPlatform.complete();
    }

    return ExitCode.success.code;
  }
}
