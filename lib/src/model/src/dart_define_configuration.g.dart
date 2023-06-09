// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dart_define_configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DartDefineConfiguration _$DartDefineConfigurationFromJson(Map json) {
  $checkKeys(
    json,
    allowedKeys: const [
      'dart',
      'json',
      'gitignore',
      'dart_path',
      'json_path',
      'class_name',
      'variables',
      'flavors'
    ],
  );
  return DartDefineConfiguration(
    generateDart: json['dart'] as bool? ?? true,
    generateJson: json['json'] as bool? ?? true,
    generateGitignore: json['gitignore'] as bool? ?? true,
    dartPath: json['dart_path'] as String? ?? 'lib/dart_define.gen.dart',
    jsonPath: json['json_path'] as String? ?? 'dart_define.json',
    className: json['class_name'] as String? ?? 'dart_define',
    variables: (json['variables'] as List<dynamic>?)
            ?.map((e) => VariableConfiguration.fromJson(e as Map))
            .toList() ??
        [],
    flavors: (json['flavors'] as List<dynamic>?)
        ?.map((e) => FlavorConfiguration.fromJson(e as Map))
        .toList(),
  );
}
