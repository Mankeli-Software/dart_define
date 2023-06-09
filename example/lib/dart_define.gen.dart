// This file was generated by package:dart_define, DO NOT modify or remove these comments
class DartDefine {
  DartDefine._();

  /// The flavor the app was launched with
  static Flavor get flavor => FlavorExtension.fromString(
        const String.fromEnvironment('FLAVOR'),
      );

  /// An example String value
  static const stringValue = String.fromEnvironment('STRING_VALUE');

  /// An example int value
  static const intValue = int.fromEnvironment('INT_VALUE');

  /// An example bool value
  static const boolValue = bool.fromEnvironment('BOOL_VALUE');
}

/// The flavors supported by the application
enum Flavor {
  /// The production flavor
  production,

  /// The staging flavor
  staging,

  /// The development flavor
  development,
}

extension FlavorExtension on Flavor {
  static Flavor fromString(String value) {
    switch (value) {
      case 'production':
        return Flavor.production;
      case 'staging':
        return Flavor.staging;
      case 'development':
        return Flavor.development;
      default:
        throw throw Exception('Invalid flavor');
    }
  }
}
