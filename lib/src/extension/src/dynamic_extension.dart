/// {@template dynamic_extension}
/// A set of extensions for [dynamic]
/// {@endtemplate}
// ignore_for_file: avoid_positional_dynamicean_parameters

extension DynamicExtension on dynamic {
  /// If [other] is provided and it mismatches with this value, [other] will be
  /// returned. Otherwise, this value will be returned.
  dynamic maybeOverride(dynamic other) {
    if (other != null && this != other) {
      return other;
    }

    return this;
  }
}
