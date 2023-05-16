// ignore_for_file: invalid_annotation_target

import 'package:dart_define/src/resource/resource.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'variable_configuration.g.dart';
part 'variable_configuration.gen.dart';

/// {@template variable_configuration}
/// A model representing a single variables configuration
/// {@endtemplate}
@freezed
class VariableConfiguration with _$VariableConfiguration {
  const factory VariableConfiguration({
    @JsonKey(name: kNameKey) required String name,
    @JsonKey(name: kDescriptionKey) required String description,
    @JsonKey(name: kDefaultKey) dynamic defaultValue,
    @JsonKey(name: kRequiredKey) @Default(true) bool required,
  }) = _VariableConfiguration;

  factory VariableConfiguration.fromJson(Map<String, dynamic> json) =>
      _$VariableConfigurationFromJson(json);
}
