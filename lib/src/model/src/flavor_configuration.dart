// ignore_for_file: invalid_annotation_target, strict_raw_type

import 'package:dart_define/src/resource/resource.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'flavor_configuration.g.dart';
part 'flavor_configuration.gen.dart';

/// {@template flavor_configuration}
/// A model representing a single flavors configuration
/// {@endtemplate}
@JsonSerializable(
  anyMap: true,
  checked: true,
  disallowUnrecognizedKeys: true,
  explicitToJson: true,
  createToJson: false,
)
@Freezed(
  fromJson: false,
  toJson: false,
)
class FlavorConfiguration with _$FlavorConfiguration {
  const factory FlavorConfiguration({
    @JsonKey(name: kNameKey) required String name,
    @JsonKey(name: kDescriptionKey) required String description,
  }) = _FlavorConfiguration;

  factory FlavorConfiguration.fromJson(Map json) =>
      _$FlavorConfigurationFromJson(json);
}
