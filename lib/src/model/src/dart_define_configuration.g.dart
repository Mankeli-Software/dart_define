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
      'dart_path',
      'json_path',
      'class_name',
      'variables'
    ],
  );
  return DartDefineConfiguration(
    generateDart: json['dart'] as bool? ?? true,
    generateJson: json['json'] as bool? ?? true,
    dartPath: json['dart_path'] as String? ?? 'lib/dart_define.gen.dart',
    jsonPath: json['json_path'] as String? ?? 'dart_define.json',
    className: json['class_name'] as String? ?? 'DartDefine',
    variables: (json['variables'] as List<dynamic>?)
            ?.map((e) => VariableConfiguration.fromJson(e as Map))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$DartDefineConfigurationToJson(
        DartDefineConfiguration instance) =>
    <String, dynamic>{
      'dart': instance.generateDart,
      'json': instance.generateJson,
      'dart_path': instance.dartPath,
      'json_path': instance.jsonPath,
      'class_name': instance.className,
      'variables': instance.variables.map((e) => e.toJson()).toList(),
    };

Map<String, dynamic> _$$_DartDefineConfigurationToJson(
        _$_DartDefineConfiguration instance) =>
    <String, dynamic>{
      'dart': instance.generateDart,
      'json': instance.generateJson,
      'dart_path': instance.dartPath,
      'json_path': instance.jsonPath,
      'class_name': instance.className,
      'variables': instance.variables.map((e) => e.toJson()).toList(),
    };
