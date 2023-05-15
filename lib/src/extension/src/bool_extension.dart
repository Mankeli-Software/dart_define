/// {@template bool_extension}
/// A set of extensions for [bool]
/// {@endtemplate}
// ignore_for_file: avoid_positional_boolean_parameters

extension BoolExtension on bool {
  /// If [other] is provided and it mismatches with this value, [other] will be
  /// returned. Otherwise, this value will be returned.
  bool maybeOverride(bool? other) {
    if (other != null && this != other) {
      return other;
    }

    return this;
  }
}
