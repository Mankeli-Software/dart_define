// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'argument_variable.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ArgumentVariable {
  String get name => throw _privateConstructorUsedError;
  dynamic get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArgumentVariableCopyWith<ArgumentVariable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArgumentVariableCopyWith<$Res> {
  factory $ArgumentVariableCopyWith(
          ArgumentVariable value, $Res Function(ArgumentVariable) then) =
      _$ArgumentVariableCopyWithImpl<$Res, ArgumentVariable>;
  @useResult
  $Res call({String name, dynamic value});
}

/// @nodoc
class _$ArgumentVariableCopyWithImpl<$Res, $Val extends ArgumentVariable>
    implements $ArgumentVariableCopyWith<$Res> {
  _$ArgumentVariableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ArgumentVariableCopyWith<$Res>
    implements $ArgumentVariableCopyWith<$Res> {
  factory _$$_ArgumentVariableCopyWith(
          _$_ArgumentVariable value, $Res Function(_$_ArgumentVariable) then) =
      __$$_ArgumentVariableCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, dynamic value});
}

/// @nodoc
class __$$_ArgumentVariableCopyWithImpl<$Res>
    extends _$ArgumentVariableCopyWithImpl<$Res, _$_ArgumentVariable>
    implements _$$_ArgumentVariableCopyWith<$Res> {
  __$$_ArgumentVariableCopyWithImpl(
      _$_ArgumentVariable _value, $Res Function(_$_ArgumentVariable) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = freezed,
  }) {
    return _then(_$_ArgumentVariable(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_ArgumentVariable implements _ArgumentVariable {
  const _$_ArgumentVariable({required this.name, required this.value});

  @override
  final String name;
  @override
  final dynamic value;

  @override
  String toString() {
    return 'ArgumentVariable(name: $name, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArgumentVariable &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArgumentVariableCopyWith<_$_ArgumentVariable> get copyWith =>
      __$$_ArgumentVariableCopyWithImpl<_$_ArgumentVariable>(this, _$identity);
}

abstract class _ArgumentVariable implements ArgumentVariable {
  const factory _ArgumentVariable(
      {required final String name,
      required final dynamic value}) = _$_ArgumentVariable;

  @override
  String get name;
  @override
  dynamic get value;
  @override
  @JsonKey(ignore: true)
  _$$_ArgumentVariableCopyWith<_$_ArgumentVariable> get copyWith =>
      throw _privateConstructorUsedError;
}
