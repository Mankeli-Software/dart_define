import 'package:args/args.dart';

/// {@template arg_results_extension}
/// Extensions on ArgResults to make it easier to get and manipulate values
/// {@endtemplate}
extension ArgResultsExtension on ArgResults {
  /// Returns the value of the argument with the given [name] as a [T].
  T get<T>(String name) => this[name] as T;
}
