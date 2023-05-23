// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flavor_configuration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FlavorConfiguration {
  @JsonKey(name: kNameKey)
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: kDescriptionKey)
  String get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FlavorConfigurationCopyWith<FlavorConfiguration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlavorConfigurationCopyWith<$Res> {
  factory $FlavorConfigurationCopyWith(
          FlavorConfiguration value, $Res Function(FlavorConfiguration) then) =
      _$FlavorConfigurationCopyWithImpl<$Res, FlavorConfiguration>;
  @useResult
  $Res call(
      {@JsonKey(name: kNameKey) String name,
      @JsonKey(name: kDescriptionKey) String description});
}

/// @nodoc
class _$FlavorConfigurationCopyWithImpl<$Res, $Val extends FlavorConfiguration>
    implements $FlavorConfigurationCopyWith<$Res> {
  _$FlavorConfigurationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FlavorConfigurationCopyWith<$Res>
    implements $FlavorConfigurationCopyWith<$Res> {
  factory _$$_FlavorConfigurationCopyWith(_$_FlavorConfiguration value,
          $Res Function(_$_FlavorConfiguration) then) =
      __$$_FlavorConfigurationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: kNameKey) String name,
      @JsonKey(name: kDescriptionKey) String description});
}

/// @nodoc
class __$$_FlavorConfigurationCopyWithImpl<$Res>
    extends _$FlavorConfigurationCopyWithImpl<$Res, _$_FlavorConfiguration>
    implements _$$_FlavorConfigurationCopyWith<$Res> {
  __$$_FlavorConfigurationCopyWithImpl(_$_FlavorConfiguration _value,
      $Res Function(_$_FlavorConfiguration) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_$_FlavorConfiguration(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FlavorConfiguration implements _FlavorConfiguration {
  const _$_FlavorConfiguration(
      {@JsonKey(name: kNameKey) required this.name,
      @JsonKey(name: kDescriptionKey) required this.description});

  @override
  @JsonKey(name: kNameKey)
  final String name;
  @override
  @JsonKey(name: kDescriptionKey)
  final String description;

  @override
  String toString() {
    return 'FlavorConfiguration(name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlavorConfiguration &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FlavorConfigurationCopyWith<_$_FlavorConfiguration> get copyWith =>
      __$$_FlavorConfigurationCopyWithImpl<_$_FlavorConfiguration>(
          this, _$identity);
}

abstract class _FlavorConfiguration implements FlavorConfiguration {
  const factory _FlavorConfiguration(
          {@JsonKey(name: kNameKey) required final String name,
          @JsonKey(name: kDescriptionKey) required final String description}) =
      _$_FlavorConfiguration;

  @override
  @JsonKey(name: kNameKey)
  String get name;
  @override
  @JsonKey(name: kDescriptionKey)
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_FlavorConfigurationCopyWith<_$_FlavorConfiguration> get copyWith =>
      throw _privateConstructorUsedError;
}
