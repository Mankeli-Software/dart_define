import 'dart:io';

import 'package:cmd_plus/cmd_plus.dart';
import 'package:dart_define/src/command_runner.dart';
import 'package:dart_define/src/commands/commands.dart';
import 'package:dart_define/src/version.gen.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pub_updater/pub_updater.dart';
import 'package:test/test.dart';

class _MockLogger extends Mock implements Logger {}

class _MockCmdPlus extends Mock implements CmdPlus {}

class _MockProcessResult extends Mock implements ProcessResult {}

class _MockProgress extends Mock implements Progress {}

class _MockPubUpdater extends Mock implements PubUpdater {}

void main() {
  const latestVersion = '0.0.0';

  group('update', () {
    late PubUpdater pubUpdater;
    late Logger logger;
    late CmdPlus cmdPlus;
    late ProcessResult processResult;
    late DartDefineCommandRunner commandRunner;

    setUp(() {
      final progress = _MockProgress();
      final progressLogs = <String>[];
      pubUpdater = _MockPubUpdater();
      logger = _MockLogger();
      cmdPlus = _MockCmdPlus();

      when(() => cmdPlus.logger).thenReturn(logger);
      processResult = _MockProcessResult();
      commandRunner = DartDefineCommandRunner(
        logger: logger,
        pubUpdater: pubUpdater,
      );

      when(
        () => pubUpdater.getLatestVersion(any()),
      ).thenAnswer((_) async => packageVersion);
      when(
        () => pubUpdater.update(
          packageName: packageName,
          versionConstraint: latestVersion,
        ),
      ).thenAnswer((_) async => processResult);
      when(
        () => pubUpdater.isUpToDate(
          packageName: any(named: 'packageName'),
          currentVersion: any(named: 'currentVersion'),
        ),
      ).thenAnswer((_) async => true);
      when(() => progress.complete(any())).thenAnswer((_) {
        final message = _.positionalArguments.elementAt(0) as String?;
        if (message != null) progressLogs.add(message);
      });
      when(() => logger.progress(any())).thenReturn(progress);
      when(() => processResult.exitCode).thenReturn(ExitCode.success.code);
    });

    test('can be instantiated without a pub updater', () {
      final command = UpdateCommand(cmdPlus: cmdPlus);
      expect(command, isNotNull);
    });
  });
}
