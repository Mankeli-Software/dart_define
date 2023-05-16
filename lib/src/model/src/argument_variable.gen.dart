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
mixin _$Argumentvariable {
  String get name => throw _privateConstructorUsedError;
  dynamic get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArgumentvariableCopyWith<Argumentvariable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArgumentvariableCopyWith<$Res> {
  factory $ArgumentvariableCopyWith(
          Argumentvariable value, $Res Function(Argumentvariable) then) =
      _$ArgumentvariableCopyWithImpl<$Res, Argumentvariable>;
  @useResult
  $Res call({String name, dynamic value});
}

/// @nodoc
class _$ArgumentvariableCopyWithImpl<$Res, $Val extends Argumentvariable>
    implements $ArgumentvariableCopyWith<$Res> {
  _$ArgumentvariableCopyWithImpl(this._value, this._then);

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
abstract class _$$_ArgumentvariableCopyWith<$Res>
    implements $ArgumentvariableCopyWith<$Res> {
  factory _$$_ArgumentvariableCopyWith(
          _$_Argumentvariable value, $Res Function(_$_Argumentvariable) then) =
      __$$_ArgumentvariableCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, dynamic value});
}

/// @nodoc
class __$$_ArgumentvariableCopyWithImpl<$Res>
    extends _$ArgumentvariableCopyWithImpl<$Res, _$_Argumentvariable>
    implements _$$_ArgumentvariableCopyWith<$Res> {
  __$$_ArgumentvariableCopyWithImpl(
      _$_Argumentvariable _value, $Res Function(_$_Argumentvariable) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = freezed,
  }) {
    return _then(_$_Argumentvariable(
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

class _$_Argumentvariable implements _Argumentvariable {
  const _$_Argumentvariable({required this.name, required this.value});

  @override
  final String name;
  @override
  final dynamic value;

  @override
  String toString() {
    return 'Argumentvariable(name: $name, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Argumentvariable &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArgumentvariableCopyWith<_$_Argumentvariable> get copyWith =>
      __$$_ArgumentvariableCopyWithImpl<_$_Argumentvariable>(this, _$identity);
}

abstract class _Argumentvariable implements Argumentvariable {
  const factory _Argumentvariable(
      {required final String name,
      required final dynamic value}) = _$_Argumentvariable;

  @override
  String get name;
  @override
  dynamic get value;
  @override
  @JsonKey(ignore: true)
  _$$_ArgumentvariableCopyWith<_$_Argumentvariable> get copyWith =>
      throw _privateConstructorUsedError;
}
