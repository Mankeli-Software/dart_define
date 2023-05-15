import 'dart:io';

import 'package:dart_define/src/command_runner.dart';

/// The dart_define cli tool can be used by activating the package
/// ```sh
/// # Activate the package
/// dart pub global activate dart_define
/// # Run generator
/// dart_define generate
/// ```
///
/// OR by running the executable with build_runner
/// ```sh
/// # Add dependency
/// flutter pub add --dev dart_define
/// # Run generator
/// flutter pub run dart_define generate
/// ```
Future<void> main(List<String> args) async {
  await _flushThenExit(await DartDefineCommandRunner().run(args));
}

/// Flushes the stdout and stderr streams, then exits the program with the given
/// status code.
///
/// This returns a Future that will never complete, since the program will have
/// exited already. This is useful to prevent Future chains from proceeding
/// after you've decided to exit.
Future<void> _flushThenExit(int status) {
  return Future.wait<void>([stdout.close(), stderr.close()])
      .then<void>((_) => exit(status));
}
