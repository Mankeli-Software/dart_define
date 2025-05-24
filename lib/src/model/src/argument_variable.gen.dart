// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'argument_variable.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ArgumentVariable {
  String get name;
  dynamic get value;

  /// Create a copy of ArgumentVariable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ArgumentVariableCopyWith<ArgumentVariable> get copyWith =>
      _$ArgumentVariableCopyWithImpl<ArgumentVariable>(
          this as ArgumentVariable, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ArgumentVariable &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(value));

  @override
  String toString() {
    return 'ArgumentVariable(name: $name, value: $value)';
  }
}

/// @nodoc
abstract mixin class $ArgumentVariableCopyWith<$Res> {
  factory $ArgumentVariableCopyWith(
          ArgumentVariable value, $Res Function(ArgumentVariable) _then) =
      _$ArgumentVariableCopyWithImpl;
  @useResult
  $Res call({String name, dynamic value});
}

/// @nodoc
class _$ArgumentVariableCopyWithImpl<$Res>
    implements $ArgumentVariableCopyWith<$Res> {
  _$ArgumentVariableCopyWithImpl(this._self, this._then);

  final ArgumentVariable _self;
  final $Res Function(ArgumentVariable) _then;

  /// Create a copy of ArgumentVariable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = freezed,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _ArgumentVariable implements ArgumentVariable {
  const _ArgumentVariable({required this.name, required this.value});

  @override
  final String name;
  @override
  final dynamic value;

  /// Create a copy of ArgumentVariable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ArgumentVariableCopyWith<_ArgumentVariable> get copyWith =>
      __$ArgumentVariableCopyWithImpl<_ArgumentVariable>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArgumentVariable &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(value));

  @override
  String toString() {
    return 'ArgumentVariable(name: $name, value: $value)';
  }
}

/// @nodoc
abstract mixin class _$ArgumentVariableCopyWith<$Res>
    implements $ArgumentVariableCopyWith<$Res> {
  factory _$ArgumentVariableCopyWith(
          _ArgumentVariable value, $Res Function(_ArgumentVariable) _then) =
      __$ArgumentVariableCopyWithImpl;
  @override
  @useResult
  $Res call({String name, dynamic value});
}

/// @nodoc
class __$ArgumentVariableCopyWithImpl<$Res>
    implements _$ArgumentVariableCopyWith<$Res> {
  __$ArgumentVariableCopyWithImpl(this._self, this._then);

  final _ArgumentVariable _self;
  final $Res Function(_ArgumentVariable) _then;

  /// Create a copy of ArgumentVariable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? value = freezed,
  }) {
    return _then(_ArgumentVariable(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

// dart format on
