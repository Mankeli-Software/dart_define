import 'dart:io';

/// {@template platform_extension}
/// Extensions on [Platform] to make it easier to work with
/// {@endtemplate}
extension PlatformExtension on Platform {
  /// Returns the value of the environment variable [key]
  static String? getEnvValue(String key) {
    if (Platform.environment.containsKey(key)) {
      return Platform.environment[key];
    } else {
      return null;
    }
  }
}
