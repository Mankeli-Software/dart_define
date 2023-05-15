import 'package:freezed_annotation/freezed_annotation.dart';

part 'argument_variable.gen.dart';

/// {@template argument_variable}
/// A model representing a single variables argument
/// {@endtemplate}
@freezed
class Argumentvariable with _$Argumentvariable {
  /// {@macro argument_variable}
  const factory Argumentvariable({
    required String name,
    required dynamic value,
  }) = _Argumentvariable;
}
