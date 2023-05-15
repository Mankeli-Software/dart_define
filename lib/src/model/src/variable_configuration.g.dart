// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variable_configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VariableConfiguration _$$_VariableConfigurationFromJson(
        Map<String, dynamic> json) =>
    _$_VariableConfiguration(
      name: json['name'] as String,
      description: json['description'] as String,
      defaultValue: json['default'],
      required: json['required'] as bool? ?? true,
    );

Map<String, dynamic> _$$_VariableConfigurationToJson(
        _$_VariableConfiguration instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'default': instance.defaultValue,
      'required': instance.required,
    };
