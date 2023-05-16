import 'dart:io';

import 'package:checked_yaml/checked_yaml.dart';
import 'package:dart_define/src/model/model.dart';
import 'package:dart_define/src/resource/resource.dart';

/// {@template dart_define_yaml}
/// A interface for interacting with config yaml to read the configurations
/// {@endtemplate}
class DartDefineYaml {
  /// {@macro dart_define_yaml}
  DartDefineYaml();

  /// Reads the configuration from the yaml file
  DartDefineConfiguration readConfiguration() {
    final file = File(kYamlPathArgDefault);

    if (!file.existsSync()) {
      throw Exception(
        'Could not find config file at path: ${file.absolute.path}',
      );
    }

    return checkedYamlDecode<DartDefineConfiguration>(
      file.readAsStringSync(),
      _configFromMap,
      sourceUrl: Uri.parse(file.absolute.path),
      allowNull: true,
    );
  }

  DartDefineConfiguration _configFromMap(Map<dynamic, dynamic>? map) {
    if (map == null) {
      throw Exception('Config file is empty');
    }

    final config = map[kConfigKey] as Map<dynamic, dynamic>?;

    if (config == null) {
      throw Exception(
        'Config file does not contain $kConfigKey key',
      );
    }

    return DartDefineConfiguration.fromJson(config);
  }
}
