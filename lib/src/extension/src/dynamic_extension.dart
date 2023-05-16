/// {@template string_extension}
/// Extensions on string to make it easier to find their correct type
/// {@endtemplate}
extension StringExtension on String {
  /// Returns this as an int, or null if it is not an int
  int? get asInt => int.tryParse(toString());

  /// Returns this as a bool, or null if it is not a bool
  bool? get asBool {
    if (['true', 'True'].contains(toString())) {
      return true;
    }
    if (['false', 'False'].contains(toString())) {
      return false;
    }
    return null;
  }

  Type get dartType {
    if (asInt != null) return int;
    if (asBool != null) return bool;
    return String;
  }
}
