// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dart_define_configuration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DartDefineConfiguration {
  @JsonKey(name: kGenerateDartArg, defaultValue: kGenerateDartArgDefault)
  bool get generateDart;
  @JsonKey(name: kGenerateJsonArg, defaultValue: kGenerateJsonArgDefault)
  bool get generateJson;
  @JsonKey(name: kGenerateGitignore, defaultValue: kGenerateGitignoreDefault)
  bool get generateGitignore;
  @JsonKey(name: kDartPathArg, defaultValue: kDartPathArgDefault)
  String get dartPath;
  @JsonKey(name: kJsonPathArg, defaultValue: kJsonPathArgDefault)
  String get jsonPath;
  @JsonKey(name: kClassNameArg, defaultValue: kClassNameArgDefault)
  String get className;
  @JsonKey(name: kVariablesKey, defaultValue: [])
  List<VariableConfiguration> get variables;
  @JsonKey(name: kFlavorsKey)
  List<FlavorConfiguration>? get flavors;

  /// Create a copy of DartDefineConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DartDefineConfigurationCopyWith<DartDefineConfiguration> get copyWith =>
      _$DartDefineConfigurationCopyWithImpl<DartDefineConfiguration>(
          this as DartDefineConfiguration, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DartDefineConfiguration &&
            (identical(other.generateDart, generateDart) ||
                other.generateDart == generateDart) &&
            (identical(other.generateJson, generateJson) ||
                other.generateJson == generateJson) &&
            (identical(other.generateGitignore, generateGitignore) ||
                other.generateGitignore == generateGitignore) &&
            (identical(other.dartPath, dartPath) ||
                other.dartPath == dartPath) &&
            (identical(other.jsonPath, jsonPath) ||
                other.jsonPath == jsonPath) &&
            (identical(other.className, className) ||
                other.className == className) &&
            const DeepCollectionEquality().equals(other.variables, variables) &&
            const DeepCollectionEquality().equals(other.flavors, flavors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      generateDart,
      generateJson,
      generateGitignore,
      dartPath,
      jsonPath,
      className,
      const DeepCollectionEquality().hash(variables),
      const DeepCollectionEquality().hash(flavors));

  @override
  String toString() {
    return 'DartDefineConfiguration(generateDart: $generateDart, generateJson: $generateJson, generateGitignore: $generateGitignore, dartPath: $dartPath, jsonPath: $jsonPath, className: $className, variables: $variables, flavors: $flavors)';
  }
}

/// @nodoc
abstract mixin class $DartDefineConfigurationCopyWith<$Res> {
  factory $DartDefineConfigurationCopyWith(DartDefineConfiguration value,
          $Res Function(DartDefineConfiguration) _then) =
      _$DartDefineConfigurationCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: kGenerateDartArg, defaultValue: kGenerateDartArgDefault)
      bool generateDart,
      @JsonKey(name: kGenerateJsonArg, defaultValue: kGenerateJsonArgDefault)
      bool generateJson,
      @JsonKey(
          name: kGenerateGitignore, defaultValue: kGenerateGitignoreDefault)
      bool generateGitignore,
      @JsonKey(name: kDartPathArg, defaultValue: kDartPathArgDefault)
      String dartPath,
      @JsonKey(name: kJsonPathArg, defaultValue: kJsonPathArgDefault)
      String jsonPath,
      @JsonKey(name: kClassNameArg, defaultValue: kClassNameArgDefault)
      String className,
      @JsonKey(name: kVariablesKey, defaultValue: [])
      List<VariableConfiguration> variables,
      @JsonKey(name: kFlavorsKey) List<FlavorConfiguration>? flavors});
}

/// @nodoc
class _$DartDefineConfigurationCopyWithImpl<$Res>
    implements $DartDefineConfigurationCopyWith<$Res> {
  _$DartDefineConfigurationCopyWithImpl(this._self, this._then);

  final DartDefineConfiguration _self;
  final $Res Function(DartDefineConfiguration) _then;

  /// Create a copy of DartDefineConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? generateDart = null,
    Object? generateJson = null,
    Object? generateGitignore = null,
    Object? dartPath = null,
    Object? jsonPath = null,
    Object? className = null,
    Object? variables = null,
    Object? flavors = freezed,
  }) {
    return _then(_self.copyWith(
      generateDart: null == generateDart
          ? _self.generateDart
          : generateDart // ignore: cast_nullable_to_non_nullable
              as bool,
      generateJson: null == generateJson
          ? _self.generateJson
          : generateJson // ignore: cast_nullable_to_non_nullable
              as bool,
      generateGitignore: null == generateGitignore
          ? _self.generateGitignore
          : generateGitignore // ignore: cast_nullable_to_non_nullable
              as bool,
      dartPath: null == dartPath
          ? _self.dartPath
          : dartPath // ignore: cast_nullable_to_non_nullable
              as String,
      jsonPath: null == jsonPath
          ? _self.jsonPath
          : jsonPath // ignore: cast_nullable_to_non_nullable
              as String,
      className: null == className
          ? _self.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
      variables: null == variables
          ? _self.variables
          : variables // ignore: cast_nullable_to_non_nullable
              as List<VariableConfiguration>,
      flavors: freezed == flavors
          ? _self.flavors
          : flavors // ignore: cast_nullable_to_non_nullable
              as List<FlavorConfiguration>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    anyMap: true,
    checked: false,
    disallowUnrecognizedKeys: true,
    explicitToJson: true,
    createToJson: false)
class _DartDefineConfiguration extends DartDefineConfiguration {
  const _DartDefineConfiguration(
      {@JsonKey(name: kGenerateDartArg, defaultValue: kGenerateDartArgDefault)
      this.generateDart = kGenerateDartArgDefault,
      @JsonKey(name: kGenerateJsonArg, defaultValue: kGenerateJsonArgDefault)
      this.generateJson = kGenerateJsonArgDefault,
      @JsonKey(
          name: kGenerateGitignore, defaultValue: kGenerateGitignoreDefault)
      this.generateGitignore = kGenerateGitignoreDefault,
      @JsonKey(name: kDartPathArg, defaultValue: kDartPathArgDefault)
      this.dartPath = kDartPathArgDefault,
      @JsonKey(name: kJsonPathArg, defaultValue: kJsonPathArgDefault)
      this.jsonPath = kJsonPathArgDefault,
      @JsonKey(name: kClassNameArg, defaultValue: kClassNameArgDefault)
      this.className = kClassNameArgDefault,
      @JsonKey(name: kVariablesKey, defaultValue: [])
      final List<VariableConfiguration> variables = const [],
      @JsonKey(name: kFlavorsKey) final List<FlavorConfiguration>? flavors})
      : _variables = variables,
        _flavors = flavors,
        super._();

  @override
  @JsonKey(name: kGenerateDartArg, defaultValue: kGenerateDartArgDefault)
  final bool generateDart;
  @override
  @JsonKey(name: kGenerateJsonArg, defaultValue: kGenerateJsonArgDefault)
  final bool generateJson;
  @override
  @JsonKey(name: kGenerateGitignore, defaultValue: kGenerateGitignoreDefault)
  final bool generateGitignore;
  @override
  @JsonKey(name: kDartPathArg, defaultValue: kDartPathArgDefault)
  final String dartPath;
  @override
  @JsonKey(name: kJsonPathArg, defaultValue: kJsonPathArgDefault)
  final String jsonPath;
  @override
  @JsonKey(name: kClassNameArg, defaultValue: kClassNameArgDefault)
  final String className;
  final List<VariableConfiguration> _variables;
  @override
  @JsonKey(name: kVariablesKey, defaultValue: [])
  List<VariableConfiguration> get variables {
    if (_variables is EqualUnmodifiableListView) return _variables;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_variables);
  }

  final List<FlavorConfiguration>? _flavors;
  @override
  @JsonKey(name: kFlavorsKey)
  List<FlavorConfiguration>? get flavors {
    final value = _flavors;
    if (value == null) return null;
    if (_flavors is EqualUnmodifiableListView) return _flavors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of DartDefineConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DartDefineConfigurationCopyWith<_DartDefineConfiguration> get copyWith =>
      __$DartDefineConfigurationCopyWithImpl<_DartDefineConfiguration>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DartDefineConfiguration &&
            (identical(other.generateDart, generateDart) ||
                other.generateDart == generateDart) &&
            (identical(other.generateJson, generateJson) ||
                other.generateJson == generateJson) &&
            (identical(other.generateGitignore, generateGitignore) ||
                other.generateGitignore == generateGitignore) &&
            (identical(other.dartPath, dartPath) ||
                other.dartPath == dartPath) &&
            (identical(other.jsonPath, jsonPath) ||
                other.jsonPath == jsonPath) &&
            (identical(other.className, className) ||
                other.className == className) &&
            const DeepCollectionEquality()
                .equals(other._variables, _variables) &&
            const DeepCollectionEquality().equals(other._flavors, _flavors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      generateDart,
      generateJson,
      generateGitignore,
      dartPath,
      jsonPath,
      className,
      const DeepCollectionEquality().hash(_variables),
      const DeepCollectionEquality().hash(_flavors));

  @override
  String toString() {
    return 'DartDefineConfiguration(generateDart: $generateDart, generateJson: $generateJson, generateGitignore: $generateGitignore, dartPath: $dartPath, jsonPath: $jsonPath, className: $className, variables: $variables, flavors: $flavors)';
  }
}

/// @nodoc
abstract mixin class _$DartDefineConfigurationCopyWith<$Res>
    implements $DartDefineConfigurationCopyWith<$Res> {
  factory _$DartDefineConfigurationCopyWith(_DartDefineConfiguration value,
          $Res Function(_DartDefineConfiguration) _then) =
      __$DartDefineConfigurationCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: kGenerateDartArg, defaultValue: kGenerateDartArgDefault)
      bool generateDart,
      @JsonKey(name: kGenerateJsonArg, defaultValue: kGenerateJsonArgDefault)
      bool generateJson,
      @JsonKey(
          name: kGenerateGitignore, defaultValue: kGenerateGitignoreDefault)
      bool generateGitignore,
      @JsonKey(name: kDartPathArg, defaultValue: kDartPathArgDefault)
      String dartPath,
      @JsonKey(name: kJsonPathArg, defaultValue: kJsonPathArgDefault)
      String jsonPath,
      @JsonKey(name: kClassNameArg, defaultValue: kClassNameArgDefault)
      String className,
      @JsonKey(name: kVariablesKey, defaultValue: [])
      List<VariableConfiguration> variables,
      @JsonKey(name: kFlavorsKey) List<FlavorConfiguration>? flavors});
}

/// @nodoc
class __$DartDefineConfigurationCopyWithImpl<$Res>
    implements _$DartDefineConfigurationCopyWith<$Res> {
  __$DartDefineConfigurationCopyWithImpl(this._self, this._then);

  final _DartDefineConfiguration _self;
  final $Res Function(_DartDefineConfiguration) _then;

  /// Create a copy of DartDefineConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? generateDart = null,
    Object? generateJson = null,
    Object? generateGitignore = null,
    Object? dartPath = null,
    Object? jsonPath = null,
    Object? className = null,
    Object? variables = null,
    Object? flavors = freezed,
  }) {
    return _then(_DartDefineConfiguration(
      generateDart: null == generateDart
          ? _self.generateDart
          : generateDart // ignore: cast_nullable_to_non_nullable
              as bool,
      generateJson: null == generateJson
          ? _self.generateJson
          : generateJson // ignore: cast_nullable_to_non_nullable
              as bool,
      generateGitignore: null == generateGitignore
          ? _self.generateGitignore
          : generateGitignore // ignore: cast_nullable_to_non_nullable
              as bool,
      dartPath: null == dartPath
          ? _self.dartPath
          : dartPath // ignore: cast_nullable_to_non_nullable
              as String,
      jsonPath: null == jsonPath
          ? _self.jsonPath
          : jsonPath // ignore: cast_nullable_to_non_nullable
              as String,
      className: null == className
          ? _self.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
      variables: null == variables
          ? _self._variables
          : variables // ignore: cast_nullable_to_non_nullable
              as List<VariableConfiguration>,
      flavors: freezed == flavors
          ? _self._flavors
          : flavors // ignore: cast_nullable_to_non_nullable
              as List<FlavorConfiguration>?,
    ));
  }
}

// dart format on
