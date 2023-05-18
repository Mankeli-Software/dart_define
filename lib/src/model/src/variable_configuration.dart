// ignore_for_file: invalid_annotation_target, strict_raw_type

import 'package:dart_define/src/resource/resource.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'variable_configuration.g.dart';
part 'variable_configuration.gen.dart';

/// {@template variable_configuration}
/// A model representing a single variables configuration
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
class VariableConfiguration with _$VariableConfiguration {
  const factory VariableConfiguration({
    @JsonKey(name: kNameKey) required String name,
    @JsonKey(name: kDescriptionKey) required String description,
    @JsonKey(name: kDefaultKey) dynamic defaultValue,
    @JsonKey(
      name: kRequiredKey,
      defaultValue: kRequiredVariableDefault,
    )
    @Default(kRequiredVariableDefault)
    bool required,
  }) = _VariableConfiguration;

  factory VariableConfiguration.fromJson(Map json) =>
      _$VariableConfigurationFromJson(json);
}
