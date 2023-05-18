// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'variable_configuration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VariableConfiguration {
  @JsonKey(name: kNameKey)
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: kDescriptionKey)
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: kDefaultKey)
  dynamic get defaultValue => throw _privateConstructorUsedError;
  @JsonKey(name: kRequiredKey, defaultValue: kRequiredVariableDefault)
  bool get required => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VariableConfigurationCopyWith<VariableConfiguration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariableConfigurationCopyWith<$Res> {
  factory $VariableConfigurationCopyWith(VariableConfiguration value,
          $Res Function(VariableConfiguration) then) =
      _$VariableConfigurationCopyWithImpl<$Res, VariableConfiguration>;
  @useResult
  $Res call(
      {@JsonKey(name: kNameKey)
          String name,
      @JsonKey(name: kDescriptionKey)
          String description,
      @JsonKey(name: kDefaultKey)
          dynamic defaultValue,
      @JsonKey(name: kRequiredKey, defaultValue: kRequiredVariableDefault)
          bool required});
}

/// @nodoc
class _$VariableConfigurationCopyWithImpl<$Res,
        $Val extends VariableConfiguration>
    implements $VariableConfigurationCopyWith<$Res> {
  _$VariableConfigurationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? defaultValue = freezed,
    Object? required = null,
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
      defaultValue: freezed == defaultValue
          ? _value.defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as dynamic,
      required: null == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VariableConfigurationCopyWith<$Res>
    implements $VariableConfigurationCopyWith<$Res> {
  factory _$$_VariableConfigurationCopyWith(_$_VariableConfiguration value,
          $Res Function(_$_VariableConfiguration) then) =
      __$$_VariableConfigurationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: kNameKey)
          String name,
      @JsonKey(name: kDescriptionKey)
          String description,
      @JsonKey(name: kDefaultKey)
          dynamic defaultValue,
      @JsonKey(name: kRequiredKey, defaultValue: kRequiredVariableDefault)
          bool required});
}

/// @nodoc
class __$$_VariableConfigurationCopyWithImpl<$Res>
    extends _$VariableConfigurationCopyWithImpl<$Res, _$_VariableConfiguration>
    implements _$$_VariableConfigurationCopyWith<$Res> {
  __$$_VariableConfigurationCopyWithImpl(_$_VariableConfiguration _value,
      $Res Function(_$_VariableConfiguration) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? defaultValue = freezed,
    Object? required = null,
  }) {
    return _then(_$_VariableConfiguration(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      defaultValue: freezed == defaultValue
          ? _value.defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as dynamic,
      required: null == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_VariableConfiguration implements _VariableConfiguration {
  const _$_VariableConfiguration(
      {@JsonKey(name: kNameKey)
          required this.name,
      @JsonKey(name: kDescriptionKey)
          required this.description,
      @JsonKey(name: kDefaultKey)
          this.defaultValue,
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

  @override
  String toString() {
    return 'VariableConfiguration(name: $name, description: $description, defaultValue: $defaultValue, required: $required)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VariableConfiguration &&
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VariableConfigurationCopyWith<_$_VariableConfiguration> get copyWith =>
      __$$_VariableConfigurationCopyWithImpl<_$_VariableConfiguration>(
          this, _$identity);
}

abstract class _VariableConfiguration implements VariableConfiguration {
  const factory _VariableConfiguration(
      {@JsonKey(name: kNameKey)
          required final String name,
      @JsonKey(name: kDescriptionKey)
          required final String description,
      @JsonKey(name: kDefaultKey)
          final dynamic defaultValue,
      @JsonKey(name: kRequiredKey, defaultValue: kRequiredVariableDefault)
          final bool required}) = _$_VariableConfiguration;

  @override
  @JsonKey(name: kNameKey)
  String get name;
  @override
  @JsonKey(name: kDescriptionKey)
  String get description;
  @override
  @JsonKey(name: kDefaultKey)
  dynamic get defaultValue;
  @override
  @JsonKey(name: kRequiredKey, defaultValue: kRequiredVariableDefault)
  bool get required;
  @override
  @JsonKey(ignore: true)
  _$$_VariableConfigurationCopyWith<_$_VariableConfiguration> get copyWith =>
      throw _privateConstructorUsedError;
}
