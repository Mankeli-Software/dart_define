/// {@template string_extension}
/// A set of extensions for [String]
/// {@endtemplate}
// ignore_for_file: avoid_positional_stringean_parameters

extension StringExtension on String {
  /// If [other] is provided and it mismatches with this value, [other] will be
  /// returned. Otherwise, this value will be returned.
  String maybeOverride(String? other) {
    if (other != null && this != other) {
      return other;
    }

    return this;
  }
}
