// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dart_define_configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DartDefineConfiguration _$$_DartDefineConfigurationFromJson(
        Map<String, dynamic> json) =>
    _$_DartDefineConfiguration(
      generatePlatform: json['generate_platform'] as bool? ?? true,
      generateDart: json['generate_dart'] as bool? ?? true,
      generateJson: json['generate_json'] as bool? ?? true,
      variables: (json['variables'] as List<dynamic>?)
              ?.map((e) =>
                  VariableConfiguration.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_DartDefineConfigurationToJson(
        _$_DartDefineConfiguration instance) =>
    <String, dynamic>{
      'generate_platform': instance.generatePlatform,
      'generate_dart': instance.generateDart,
      'generate_json': instance.generateJson,
      'variables': instance.variables.map((e) => e.toJson()).toList(),
    };
