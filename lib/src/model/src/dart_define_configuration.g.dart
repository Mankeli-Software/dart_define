// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dart_define_configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DartDefineConfiguration _$$_DartDefineConfigurationFromJson(
        Map<String, dynamic> json) =>
    _$_DartDefineConfiguration(
      generateIos: json['generate_ios'] as bool? ?? kGenerateIosArgDefault,
      generateAndroid:
          json['generate_android'] as bool? ?? kGenerateAndroidArgDefault,
      generateDart: json['generate_dart'] as bool? ?? kGenerateDartArgDefault,
      generateJson: json['generate_json'] as bool? ?? kGenerateJsonArgDefault,
      dartPath: json['dart_path'] as String? ?? kDartPathArgDefault,
      jsonPath: json['json_path'] as String? ?? kJsonPathArgDefault,
      variables: (json['variables'] as List<dynamic>?)
              ?.map((e) =>
                  VariableConfiguration.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_DartDefineConfigurationToJson(
        _$_DartDefineConfiguration instance) =>
    <String, dynamic>{
      'generate_ios': instance.generateIos,
      'generate_android': instance.generateAndroid,
      'generate_dart': instance.generateDart,
      'generate_json': instance.generateJson,
      'dart_path': instance.dartPath,
      'json_path': instance.jsonPath,
      'variables': instance.variables.map((e) => e.toJson()).toList(),
    };
