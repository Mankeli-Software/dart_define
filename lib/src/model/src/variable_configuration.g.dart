// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variable_configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VariableConfiguration _$VariableConfigurationFromJson(Map json) =>
    $checkedCreate(
      'VariableConfiguration',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['name', 'description', 'default', 'required'],
        );
        final val = VariableConfiguration(
          name: $checkedConvert('name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
          defaultValue: $checkedConvert('default', (v) => v),
          required: $checkedConvert('required', (v) => v as bool? ?? true),
        );
        return val;
      },
      fieldKeyMap: const {'defaultValue': 'default'},
    );

Map<String, dynamic> _$VariableConfigurationToJson(
        VariableConfiguration instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'default': instance.defaultValue,
      'required': instance.required,
    };

Map<String, dynamic> _$$_VariableConfigurationToJson(
        _$_VariableConfiguration instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'default': instance.defaultValue,
      'required': instance.required,
    };
