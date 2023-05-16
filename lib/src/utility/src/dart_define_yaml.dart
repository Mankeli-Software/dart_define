import 'dart:io';

import 'package:checked_yaml/checked_yaml.dart';
import 'package:dart_define/src/model/model.dart';
import 'package:dart_define/src/resource/resource.dart';
import 'package:path/path.dart' as p;

/// {@template dart_define_yaml}
/// A interface for interacting with config yaml to read the configurations
/// {@endtemplate}
class DartDefineYaml {
  /// {@macro dart_define_yaml}
  DartDefineYaml({
    this.path = kYamlPathArgDefault,
    this.workingDirectory = kWorkingDirectoryArgDefault,
  });

  /// Path to the config yaml file
  final String path;

  /// The working directory to use as the base for the path.
  final String workingDirectory;

  /// Reads the configuration from the yaml file
  DartDefineConfiguration readConfiguration() {
    final file = File(p.join(workingDirectory, path));

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

    final config = map['dart_define'] as Map<String, dynamic>?;

    if (config == null) {
      throw Exception(
        'Config file does not contain dart_define key',
      );
    }

    return DartDefineConfiguration.fromJson(config);
  }
}
