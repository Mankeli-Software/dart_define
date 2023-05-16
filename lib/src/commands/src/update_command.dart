import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:cmd_plus/cmd_plus.dart';
import 'package:dart_define/src/command_runner.dart';
import 'package:dart_define/src/version.gen.dart';
import 'package:pub_updater/pub_updater.dart';

/// {@template update_command}
/// A command which updates the CLI.
/// {@endtemplate}
class UpdateCommand extends Command<int> {
  /// {@macro update_command}
  UpdateCommand({
    required this.cmdPlus,
    PubUpdater? pubUpdater,
  }) : _pubUpdater = pubUpdater ?? PubUpdater();

  final CmdPlus cmdPlus;
  final PubUpdater _pubUpdater;

  @override
  String get description => 'Update the CLI.';

  static const String commandName = 'update';

  @override
  String get name => commandName;

  @override
  Future<int> run() async {
    final updateCheckProgress = cmdPlus.logger.progress('Checking for updates');
    late final String latestVersion;
    try {
      latestVersion = await _pubUpdater.getLatestVersion(packageName);
    } catch (error) {
      updateCheckProgress.fail();
      cmdPlus.logger.err('$error');
      return ExitCode.software.code;
    }
    updateCheckProgress.complete('Checked for updates');

    final isUpToDate = packageVersion == latestVersion;
    if (isUpToDate) {
      cmdPlus.logger.info('CLI is already at the latest version.');
      return ExitCode.success.code;
    }

    final updateProgress =
        cmdPlus.logger.progress('Updating to $latestVersion');

    late final ProcessResult result;
    try {
      result = await _pubUpdater.update(
        packageName: packageName,
        versionConstraint: latestVersion,
      );
    } catch (error) {
      updateProgress.fail();
      cmdPlus.logger.err('$error');
      return ExitCode.software.code;
    }

    if (result.exitCode != ExitCode.success.code) {
      updateProgress.fail();
      cmdPlus.logger.err('Error updating CLI: ${result.stderr}');
      return ExitCode.software.code;
    }

    updateProgress.complete('Updated to $latestVersion');

    return ExitCode.success.code;
  }
}
