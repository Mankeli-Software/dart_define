// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flavor_configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FlavorConfiguration _$FlavorConfigurationFromJson(Map json) => $checkedCreate(
      'FlavorConfiguration',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['name', 'description'],
        );
        final val = FlavorConfiguration(
          name: $checkedConvert('name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
        );
        return val;
      },
    );
