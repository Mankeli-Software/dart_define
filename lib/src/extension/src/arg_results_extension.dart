import 'package:args/args.dart';
import 'package:dart_define/src/model/model.dart';

/// {@template arg_results_extension}
/// Extensions on ArgResults to make it easier to get and manipulate values
/// {@endtemplate}
extension ArgResultsExtension on ArgResults {
  /// Returns the value of the argument with the given [name] as a [T].
  T get<T>(String name) => this[name] as T;

  /// Parses and returns the variables from the [rest] arguments
  /// that were not originally parsed by the tool.
  List<Argumentvariable> getVariables() {
    final parser = ArgParser();

    /// Finds the variable names and adds them to the parser as options.
    /// This will work with both `--variable=value` and `--variable value`
    for (final r in rest) {
      final parts = r.split('=');

      if (parts.isEmpty) continue;

      final variable = parts.first.replaceAll(
        RegExp('-*'),
        '',
      );

      parser.addOption(
        variable,
      );
    }

    final result = parser.parse(rest);

    return result.options
        .map(
          (e) => Argumentvariable(
            name: e,
            value: result[e],
          ),
        )
        .toList();
  }
}
