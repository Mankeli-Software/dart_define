import 'package:change_case/change_case.dart';
import 'package:dart_define/src/extension/extension.dart';
import 'package:dart_define/src/model/model.dart';
import 'package:dart_define/src/resource/resource.dart';
import 'package:dart_define/src/utility/src/configuration_generator.dart';
import 'package:mustache_template/mustache.dart';

/// {@template dart_configuration_generator}
/// A class for generating dart specific boilerplate code for the
/// dart_define package
/// {@endtemplate}
class DartConfigurationGenerator extends ConfigurationGenerator {
  /// {@macro dart_configuration_generator}
  DartConfigurationGenerator({
    required super.target,
    required this.configuration,
    required this.variables,
    this.className = kClassNameArgDefault,
  });

  /// The class name to be used for the generated code
  final String className;

  /// The configuration to be used for generating the code
  final DartDefineConfiguration configuration;

  /// The variables to be used for generating the code
  final List<ArgumentVariable> variables;

  @override
  void generate() {
    /// Delete the target file if it exists, since we want to overwrite it
    /// always
    if (target.existsSync()) {
      target.deleteSync();
    }

    /// The mustache template for generating the dart code
    final mustacheSource = '''
class $className {
  {{#$kVariablesKey}}
  /// {{$kDescriptionKey}}
  static const {{$kNameKey$kCamelCaseVariableSuffix}} = {{$kDartType}}.fromEnvironment('{{$kNameKey}}');{{$kLineEnding}}
  {{/$kVariablesKey}}
}
    ''';

    final template = Template(
      mustacheSource,
      htmlEscapeValues: false,
      lenient: true,
    );

    final output = template.renderString({
      kVariablesKey: configuration.variables.map(
        (v) {
          final value = variables
              .singleWhere(
                (e) => e.name == v.name,
              )
              .value;

          return {
            kNameKey: v.name,
            '$kNameKey$kCamelCaseVariableSuffix': v.name.toCamelCase(),
            kDescriptionKey: v.description,
            kDefaultKey: v.defaultValue,
            kDartType: value.toString().dartType,
            kLineEnding: v == configuration.variables.last ? '' : '\n',
          };
        },
      ).toList(),
    });

    final content = wrapWithComments(output);

    writeTarget(content);
  }
}
