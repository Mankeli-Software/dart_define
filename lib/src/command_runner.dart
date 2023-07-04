import 'package:args/args.dart';
import 'package:args/command_runner.dart';
import 'package:cli_completion/cli_completion.dart';
import 'package:cmd_plus/cmd_plus.dart';
import 'package:dart_define/src/commands/commands.dart';
import 'package:dart_define/src/extension/extension.dart';
import 'package:dart_define/src/resource/resource.dart';
import 'package:dart_define/src/version.gen.dart';
import 'package:pub_updater/pub_updater.dart';

const executableName = 'dart_define';
const packageName = 'dart_define';
const description =
    'Utility for generating and populating dart-define config files';

/// {@template dart_define_command_runner}
/// A [CommandRunner] for the CLI.
///
/// ```
/// $ my_executable --version
/// ```
/// {@endtemplate}
class DartDefineCommandRunner extends CompletionCommandRunner<int> {
  /// {@macro dart_define_command_runner}
  DartDefineCommandRunner({
    Logger? logger,
    PubUpdater? pubUpdater,
  })  : _logger = logger ?? Logger(),
        _pubUpdater = pubUpdater ?? PubUpdater(),
        super(executableName, description) {
    // Add root options and flags
    argParser
      ..addFlag(
        'version',
        abbr: 'v',
        negatable: false,
        help: 'Print the current version.',
      )
      ..addFlag(
        'verbose',
        help: 'Noisy logging, including all shell commands executed.',
      );
  }

  @override
  void printUsage() => _logger.info(usage);

  final Logger _logger;
  final PubUpdater _pubUpdater;

  @override
  Future<int> run(Iterable<String> args) async {
    final cmdPlus = CmdPlus();

    final parser = ArgParser()
      ..addOption(kYamlPathArg)
      ..addFlag(
        'help',
        abbr: 'h',
        negatable: false,
        help: 'Print this usage information.',
      );

    final results = parser.parse(args);

    final yamlPath = results.getAndMaybeOverrideOriginal<String>(
      kYamlPathArg,
      kYamlPathArgDefault,
    );

    cmdPlus.logger.info('Using config file: $yamlPath');
    cmdPlus.logger.info('Args: $args');
    cmdPlus.logger.info('Results: $results');
    cmdPlus.logger.info('Options: ${results.options}');
    cmdPlus.logger.info('Args: ${results.arguments}');

    // Add sub commands
    addCommand(
      GenerateCommand(
        cmdPlus: cmdPlus,
        yamlPath: yamlPath,
      ),
    );
    addCommand(
      UpdateCommand(
        cmdPlus: cmdPlus,
        pubUpdater: _pubUpdater,
      ),
    );
    try {
      final topLevelResults = parse(args);
      if (topLevelResults['verbose'] == true) {
        _logger.level = Level.verbose;
      }
      return await runCommand(topLevelResults) ?? ExitCode.success.code;
    } on FormatException catch (e, stackTrace) {
      // On format errors, show the commands error message, root usage and
      // exit with an error code
      _logger
        ..err(e.message)
        ..err('$stackTrace')
        ..info('')
        ..info(usage);
      return ExitCode.usage.code;
    } on UsageException catch (e) {
      // On usage errors, show the commands usage message and
      // exit with an error code
      _logger
        ..err(e.message)
        ..info('')
        ..info(e.usage);
      return ExitCode.usage.code;
    }
  }

  @override
  Future<int?> runCommand(ArgResults topLevelResults) async {
    // Fast track completion command
    if (topLevelResults.command?.name == 'completion') {
      await super.runCommand(topLevelResults);
      return ExitCode.success.code;
    }

    // Verbose logs
    _logger
      ..detail('Argument information:')
      ..detail('  Top level options:');
    for (final option in topLevelResults.options) {
      if (topLevelResults.wasParsed(option)) {
        _logger.detail('  - $option: ${topLevelResults[option]}');
      }
    }
    if (topLevelResults.command != null) {
      final commandResult = topLevelResults.command!;
      _logger
        ..detail('  Command: ${commandResult.name}')
        ..detail('    Command options:');
      for (final option in commandResult.options) {
        if (commandResult.wasParsed(option)) {
          _logger.detail('    - $option: ${commandResult[option]}');
        }
      }
    }

    // Run the command or show version
    final int? exitCode;
    if (topLevelResults['version'] == true) {
      _logger.info(packageVersion);
      exitCode = ExitCode.success.code;
    } else {
      exitCode = await super.runCommand(topLevelResults);
    }

    // Check for updates
    if (topLevelResults.command?.name != UpdateCommand.commandName) {
      await _checkForUpdates();
    }

    return exitCode;
  }

  /// Checks if the current version (set by the build runner on the
  /// version.gen.dart file) is the most recent one. If not, show a prompt to the
  /// user.
  Future<void> _checkForUpdates() async {
    try {
      final latestVersion = await _pubUpdater.getLatestVersion(packageName);
      final isUpToDate = packageVersion == latestVersion;
      if (!isUpToDate) {
        _logger
          ..info('')
          ..info(
            '''
${lightYellow.wrap('Update available!')} ${lightCyan.wrap(packageVersion)} \u2192 ${lightCyan.wrap(latestVersion)}
Run ${lightCyan.wrap('$executableName update')} to update''',
          );
      }
    } catch (_) {}
  }
}
