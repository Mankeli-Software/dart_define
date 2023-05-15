// ignore_for_file: invalid_annotation_target

import 'package:dart_define/src/model/model.dart';
import 'package:dart_define/src/resource/resource.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dart_define_configuration.g.dart';
part 'dart_define_configuration.gen.dart';

/// {@template dart_define_configuration}
/// A model representing dart define configuration
/// {@endtemplate}
@freezed
class DartDefineConfiguration with _$DartDefineConfiguration {
  const factory DartDefineConfiguration({
    @Default(true)
    @JsonKey(name: kGeneratePlatformArg)
        bool generatePlatform,
    @Default(true)
    @JsonKey(name: kGenerateDartArg)
        bool generateDart,
    @Default(true)
    @JsonKey(name: kGenerateJsonArg)
        bool generateJson,
    @JsonKey(name: kVariablesKey)
    @Default([])
        List<VariableConfiguration> variables,
  }) = _DartDefineConfiguration;

  const DartDefineConfiguration._();

  factory DartDefineConfiguration.fromJson(Map<String, dynamic> json) =>
      _$DartDefineConfigurationFromJson(json);
}
