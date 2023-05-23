// ignore_for_file: invalid_annotation_target, strict_raw_type

import 'package:dart_define/src/model/model.dart';
import 'package:dart_define/src/resource/resource.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dart_define_configuration.g.dart';
part 'dart_define_configuration.gen.dart';

/// {@template dart_define_configuration}
/// A model representing dart define configuration
/// {@endtemplate}
@JsonSerializable(
  anyMap: true,
  checked: false,
  disallowUnrecognizedKeys: true,
  explicitToJson: true,
  createToJson: false,
)
@Freezed(
  fromJson: false,
  toJson: false,
)
class DartDefineConfiguration with _$DartDefineConfiguration {
  const factory DartDefineConfiguration({
    @Default(kGenerateDartArgDefault)
    @JsonKey(
      name: kGenerateDartArg,
      defaultValue: kGenerateDartArgDefault,
    )
    bool generateDart,
    @Default(kGenerateJsonArgDefault)
    @JsonKey(
      name: kGenerateJsonArg,
      defaultValue: kGenerateJsonArgDefault,
    )
    bool generateJson,
    @Default(kDartPathArgDefault)
    @JsonKey(
      name: kDartPathArg,
      defaultValue: kDartPathArgDefault,
    )
    String dartPath,
    @Default(kJsonPathArgDefault)
    @JsonKey(
      name: kJsonPathArg,
      defaultValue: kJsonPathArgDefault,
    )
    String jsonPath,
    @Default(kClassNameArgDefault)
    @JsonKey(
      name: kClassNameArg,
      defaultValue: kClassNameArgDefault,
    )
    String className,
    @Default([])
    @JsonKey(
      name: kVariablesKey,
      defaultValue: [],
    )
    List<VariableConfiguration> variables,
    @JsonKey(
      name: kFlavorsKey,
    )
    List<FlavorConfiguration>? flavors,
  }) = _DartDefineConfiguration;

  const DartDefineConfiguration._();

  factory DartDefineConfiguration.fromJson(Map json) =>
      _$DartDefineConfigurationFromJson(json);
}
