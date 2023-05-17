import 'package:freezed_annotation/freezed_annotation.dart';

part 'argument_variable.gen.dart';

/// {@template argument_variable}
/// A model representing a single variables argument
/// {@endtemplate}
@freezed
class ArgumentVariable with _$ArgumentVariable {
  /// {@macro argument_variable}
  const factory ArgumentVariable({
    required String name,
    required dynamic value,
  }) = _ArgumentVariable;
}
