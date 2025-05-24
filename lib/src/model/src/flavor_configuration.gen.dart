// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flavor_configuration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FlavorConfiguration {
  @JsonKey(name: kNameKey)
  String get name;
  @JsonKey(name: kDescriptionKey)
  String get description;

  /// Create a copy of FlavorConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FlavorConfigurationCopyWith<FlavorConfiguration> get copyWith =>
      _$FlavorConfigurationCopyWithImpl<FlavorConfiguration>(
          this as FlavorConfiguration, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FlavorConfiguration &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, description);

  @override
  String toString() {
    return 'FlavorConfiguration(name: $name, description: $description)';
  }
}

/// @nodoc
abstract mixin class $FlavorConfigurationCopyWith<$Res> {
  factory $FlavorConfigurationCopyWith(
          FlavorConfiguration value, $Res Function(FlavorConfiguration) _then) =
      _$FlavorConfigurationCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: kNameKey) String name,
      @JsonKey(name: kDescriptionKey) String description});
}

/// @nodoc
class _$FlavorConfigurationCopyWithImpl<$Res>
    implements $FlavorConfigurationCopyWith<$Res> {
  _$FlavorConfigurationCopyWithImpl(this._self, this._then);

  final FlavorConfiguration _self;
  final $Res Function(FlavorConfiguration) _then;

  /// Create a copy of FlavorConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
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
class _FlavorConfiguration implements FlavorConfiguration {
  const _FlavorConfiguration(
      {@JsonKey(name: kNameKey) required this.name,
      @JsonKey(name: kDescriptionKey) required this.description});

  @override
  @JsonKey(name: kNameKey)
  final String name;
  @override
  @JsonKey(name: kDescriptionKey)
  final String description;

  /// Create a copy of FlavorConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FlavorConfigurationCopyWith<_FlavorConfiguration> get copyWith =>
      __$FlavorConfigurationCopyWithImpl<_FlavorConfiguration>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FlavorConfiguration &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, description);

  @override
  String toString() {
    return 'FlavorConfiguration(name: $name, description: $description)';
  }
}

/// @nodoc
abstract mixin class _$FlavorConfigurationCopyWith<$Res>
    implements $FlavorConfigurationCopyWith<$Res> {
  factory _$FlavorConfigurationCopyWith(_FlavorConfiguration value,
          $Res Function(_FlavorConfiguration) _then) =
      __$FlavorConfigurationCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: kNameKey) String name,
      @JsonKey(name: kDescriptionKey) String description});
}

/// @nodoc
class __$FlavorConfigurationCopyWithImpl<$Res>
    implements _$FlavorConfigurationCopyWith<$Res> {
  __$FlavorConfigurationCopyWithImpl(this._self, this._then);

  final _FlavorConfiguration _self;
  final $Res Function(_FlavorConfiguration) _then;

  /// Create a copy of FlavorConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_FlavorConfiguration(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
