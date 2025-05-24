// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'variable_configuration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VariableConfiguration {
  @JsonKey(name: kNameKey)
  String get name;
  @JsonKey(name: kDescriptionKey)
  String get description;
  @JsonKey(name: kDefaultKey)
  dynamic get defaultValue;
  @JsonKey(name: kRequiredKey, defaultValue: kRequiredVariableDefault)
  bool get required;

  /// Create a copy of VariableConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VariableConfigurationCopyWith<VariableConfiguration> get copyWith =>
      _$VariableConfigurationCopyWithImpl<VariableConfiguration>(
          this as VariableConfiguration, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VariableConfiguration &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other.defaultValue, defaultValue) &&
            (identical(other.required, required) ||
                other.required == required));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, description,
      const DeepCollectionEquality().hash(defaultValue), required);

  @override
  String toString() {
    return 'VariableConfiguration(name: $name, description: $description, defaultValue: $defaultValue, required: $required)';
  }
}

/// @nodoc
abstract mixin class $VariableConfigurationCopyWith<$Res> {
  factory $VariableConfigurationCopyWith(VariableConfiguration value,
          $Res Function(VariableConfiguration) _then) =
      _$VariableConfigurationCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: kNameKey) String name,
      @JsonKey(name: kDescriptionKey) String description,
      @JsonKey(name: kDefaultKey) dynamic defaultValue,
      @JsonKey(name: kRequiredKey, defaultValue: kRequiredVariableDefault)
      bool required});
}

/// @nodoc
class _$VariableConfigurationCopyWithImpl<$Res>
    implements $VariableConfigurationCopyWith<$Res> {
  _$VariableConfigurationCopyWithImpl(this._self, this._then);

  final VariableConfiguration _self;
  final $Res Function(VariableConfiguration) _then;

  /// Create a copy of VariableConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? defaultValue = freezed,
    Object? required = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      defaultValue: freezed == defaultValue
          ? _self.defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as dynamic,
      required: null == required
          ? _self.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    anyMap: true,
    checked: true,
    disallowUnrecognizedKeys: true,
    explicitToJson: true,
    createToJson: false)
class _VariableConfiguration implements VariableConfiguration {
  const _VariableConfiguration(
      {@JsonKey(name: kNameKey) required this.name,
      @JsonKey(name: kDescriptionKey) required this.description,
      @JsonKey(name: kDefaultKey) this.defaultValue,
      @JsonKey(name: kRequiredKey, defaultValue: kRequiredVariableDefault)
      this.required = kRequiredVariableDefault});

  @override
  @JsonKey(name: kNameKey)
  final String name;
  @override
  @JsonKey(name: kDescriptionKey)
  final String description;
  @override
  @JsonKey(name: kDefaultKey)
  final dynamic defaultValue;
  @override
  @JsonKey(name: kRequiredKey, defaultValue: kRequiredVariableDefault)
  final bool required;

  /// Create a copy of VariableConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VariableConfigurationCopyWith<_VariableConfiguration> get copyWith =>
      __$VariableConfigurationCopyWithImpl<_VariableConfiguration>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VariableConfiguration &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other.defaultValue, defaultValue) &&
            (identical(other.required, required) ||
                other.required == required));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, description,
      const DeepCollectionEquality().hash(defaultValue), required);

  @override
  String toString() {
    return 'VariableConfiguration(name: $name, description: $description, defaultValue: $defaultValue, required: $required)';
  }
}

/// @nodoc
abstract mixin class _$VariableConfigurationCopyWith<$Res>
    implements $VariableConfigurationCopyWith<$Res> {
  factory _$VariableConfigurationCopyWith(_VariableConfiguration value,
          $Res Function(_VariableConfiguration) _then) =
      __$VariableConfigurationCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: kNameKey) String name,
      @JsonKey(name: kDescriptionKey) String description,
      @JsonKey(name: kDefaultKey) dynamic defaultValue,
      @JsonKey(name: kRequiredKey, defaultValue: kRequiredVariableDefault)
      bool required});
}

/// @nodoc
class __$VariableConfigurationCopyWithImpl<$Res>
    implements _$VariableConfigurationCopyWith<$Res> {
  __$VariableConfigurationCopyWithImpl(this._self, this._then);

  final _VariableConfiguration _self;
  final $Res Function(_VariableConfiguration) _then;

  /// Create a copy of VariableConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? defaultValue = freezed,
    Object? required = null,
  }) {
    return _then(_VariableConfiguration(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      defaultValue: freezed == defaultValue
          ? _self.defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as dynamic,
      required: null == required
          ? _self.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
