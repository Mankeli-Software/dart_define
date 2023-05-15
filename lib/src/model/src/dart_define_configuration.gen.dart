// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dart_define_configuration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DartDefineConfiguration _$DartDefineConfigurationFromJson(
    Map<String, dynamic> json) {
  return _DartDefineConfiguration.fromJson(json);
}

/// @nodoc
mixin _$DartDefineConfiguration {
  @JsonKey(name: kGeneratePlatformArg)
  bool get generatePlatform => throw _privateConstructorUsedError;
  @JsonKey(name: kGenerateDartArg)
  bool get generateDart => throw _privateConstructorUsedError;
  @JsonKey(name: kGenerateJsonArg)
  bool get generateJson => throw _privateConstructorUsedError;
  @JsonKey(name: kVariablesKey)
  List<VariableConfiguration> get variables =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DartDefineConfigurationCopyWith<DartDefineConfiguration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DartDefineConfigurationCopyWith<$Res> {
  factory $DartDefineConfigurationCopyWith(DartDefineConfiguration value,
          $Res Function(DartDefineConfiguration) then) =
      _$DartDefineConfigurationCopyWithImpl<$Res, DartDefineConfiguration>;
  @useResult
  $Res call(
      {@JsonKey(name: kGeneratePlatformArg) bool generatePlatform,
      @JsonKey(name: kGenerateDartArg) bool generateDart,
      @JsonKey(name: kGenerateJsonArg) bool generateJson,
      @JsonKey(name: kVariablesKey) List<VariableConfiguration> variables});
}

/// @nodoc
class _$DartDefineConfigurationCopyWithImpl<$Res,
        $Val extends DartDefineConfiguration>
    implements $DartDefineConfigurationCopyWith<$Res> {
  _$DartDefineConfigurationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? generatePlatform = null,
    Object? generateDart = null,
    Object? generateJson = null,
    Object? variables = null,
  }) {
    return _then(_value.copyWith(
      generatePlatform: null == generatePlatform
          ? _value.generatePlatform
          : generatePlatform // ignore: cast_nullable_to_non_nullable
              as bool,
      generateDart: null == generateDart
          ? _value.generateDart
          : generateDart // ignore: cast_nullable_to_non_nullable
              as bool,
      generateJson: null == generateJson
          ? _value.generateJson
          : generateJson // ignore: cast_nullable_to_non_nullable
              as bool,
      variables: null == variables
          ? _value.variables
          : variables // ignore: cast_nullable_to_non_nullable
              as List<VariableConfiguration>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DartDefineConfigurationCopyWith<$Res>
    implements $DartDefineConfigurationCopyWith<$Res> {
  factory _$$_DartDefineConfigurationCopyWith(_$_DartDefineConfiguration value,
          $Res Function(_$_DartDefineConfiguration) then) =
      __$$_DartDefineConfigurationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: kGeneratePlatformArg) bool generatePlatform,
      @JsonKey(name: kGenerateDartArg) bool generateDart,
      @JsonKey(name: kGenerateJsonArg) bool generateJson,
      @JsonKey(name: kVariablesKey) List<VariableConfiguration> variables});
}

/// @nodoc
class __$$_DartDefineConfigurationCopyWithImpl<$Res>
    extends _$DartDefineConfigurationCopyWithImpl<$Res,
        _$_DartDefineConfiguration>
    implements _$$_DartDefineConfigurationCopyWith<$Res> {
  __$$_DartDefineConfigurationCopyWithImpl(_$_DartDefineConfiguration _value,
      $Res Function(_$_DartDefineConfiguration) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? generatePlatform = null,
    Object? generateDart = null,
    Object? generateJson = null,
    Object? variables = null,
  }) {
    return _then(_$_DartDefineConfiguration(
      generatePlatform: null == generatePlatform
          ? _value.generatePlatform
          : generatePlatform // ignore: cast_nullable_to_non_nullable
              as bool,
      generateDart: null == generateDart
          ? _value.generateDart
          : generateDart // ignore: cast_nullable_to_non_nullable
              as bool,
      generateJson: null == generateJson
          ? _value.generateJson
          : generateJson // ignore: cast_nullable_to_non_nullable
              as bool,
      variables: null == variables
          ? _value._variables
          : variables // ignore: cast_nullable_to_non_nullable
              as List<VariableConfiguration>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DartDefineConfiguration extends _DartDefineConfiguration {
  const _$_DartDefineConfiguration(
      {@JsonKey(name: kGeneratePlatformArg)
          this.generatePlatform = true,
      @JsonKey(name: kGenerateDartArg)
          this.generateDart = true,
      @JsonKey(name: kGenerateJsonArg)
          this.generateJson = true,
      @JsonKey(name: kVariablesKey)
          final List<VariableConfiguration> variables = const []})
      : _variables = variables,
        super._();

  factory _$_DartDefineConfiguration.fromJson(Map<String, dynamic> json) =>
      _$$_DartDefineConfigurationFromJson(json);

  @override
  @JsonKey(name: kGeneratePlatformArg)
  final bool generatePlatform;
  @override
  @JsonKey(name: kGenerateDartArg)
  final bool generateDart;
  @override
  @JsonKey(name: kGenerateJsonArg)
  final bool generateJson;
  final List<VariableConfiguration> _variables;
  @override
  @JsonKey(name: kVariablesKey)
  List<VariableConfiguration> get variables {
    if (_variables is EqualUnmodifiableListView) return _variables;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_variables);
  }

  @override
  String toString() {
    return 'DartDefineConfiguration(generatePlatform: $generatePlatform, generateDart: $generateDart, generateJson: $generateJson, variables: $variables)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DartDefineConfiguration &&
            (identical(other.generatePlatform, generatePlatform) ||
                other.generatePlatform == generatePlatform) &&
            (identical(other.generateDart, generateDart) ||
                other.generateDart == generateDart) &&
            (identical(other.generateJson, generateJson) ||
                other.generateJson == generateJson) &&
            const DeepCollectionEquality()
                .equals(other._variables, _variables));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, generatePlatform, generateDart,
      generateJson, const DeepCollectionEquality().hash(_variables));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DartDefineConfigurationCopyWith<_$_DartDefineConfiguration>
      get copyWith =>
          __$$_DartDefineConfigurationCopyWithImpl<_$_DartDefineConfiguration>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DartDefineConfigurationToJson(
      this,
    );
  }
}

abstract class _DartDefineConfiguration extends DartDefineConfiguration {
  const factory _DartDefineConfiguration(
          {@JsonKey(name: kGeneratePlatformArg)
              final bool generatePlatform,
          @JsonKey(name: kGenerateDartArg)
              final bool generateDart,
          @JsonKey(name: kGenerateJsonArg)
              final bool generateJson,
          @JsonKey(name: kVariablesKey)
              final List<VariableConfiguration> variables}) =
      _$_DartDefineConfiguration;
  const _DartDefineConfiguration._() : super._();

  factory _DartDefineConfiguration.fromJson(Map<String, dynamic> json) =
      _$_DartDefineConfiguration.fromJson;

  @override
  @JsonKey(name: kGeneratePlatformArg)
  bool get generatePlatform;
  @override
  @JsonKey(name: kGenerateDartArg)
  bool get generateDart;
  @override
  @JsonKey(name: kGenerateJsonArg)
  bool get generateJson;
  @override
  @JsonKey(name: kVariablesKey)
  List<VariableConfiguration> get variables;
  @override
  @JsonKey(ignore: true)
  _$$_DartDefineConfigurationCopyWith<_$_DartDefineConfiguration>
      get copyWith => throw _privateConstructorUsedError;
}
