import 'package:args/args.dart';
import 'package:dart_define/src/extension/extension.dart';
import 'package:dart_define/src/model/model.dart';

/// {@template arg_results_extension}
/// Extensions on ArgResults to make it easier to get and manipulate values
/// {@endtemplate}
extension ArgResultsExtension on ArgResults {
  /// Returns the value of the argument with the given [name] as a [T].
  T get<T>(String name) => this[name] as T;

  /// Returns the value of the argument with the given [name] as a [T].
  /// If the value is null, it will return the [original] value.
  T getAndMaybeOverrideOriginal<T>(String name, T original) {
    final override = get<T?>(name);

    return original.maybeOverride(override);
  }

  /// Parses and returns the variables from the [rest] arguments
  /// that were not originally parsed by the tool.
  List<ArgumentVariable> getVariables(List<VariableConfiguration> variables) {
    return variables
        .map(
          (v) => ArgumentVariable(
            name: v.name,
            value: get<dynamic>(v.name),
          ),
        )
        .toList();
  }
}
