import 'package:dart_define/src/extension/extension.dart';
import 'package:dart_define/src/model/model.dart';
import 'package:dart_define/src/resource/resource.dart';
import 'package:dart_define/src/utility/src/configuration_generator.dart';
import 'package:mustache_template/mustache.dart';

/// {@template json_configuration_generator}
/// A class for generating dart specific boilerplate code for the
/// dart_define package
/// {@endtemplate}
class JsonConfigurationGenerator extends ConfigurationGenerator {
  /// {@macro json_configuration_generator}
  JsonConfigurationGenerator({
    required super.target,
    required this.configuration,
    required this.variables,
  });

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
    const mustacheSource = '''
{
  {{#$kVariablesKey}}
  "{{$kNameKey}}": {{$kValueKey}}{{$kLineEnding}}
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
          var value = variables
              .singleWhere(
                (e) => e.name == v.name,
              )
              .value;

          if (value.toString().dartType == String) {
            value = '"$value"';
          }
          return {
            kNameKey: v.name,
            kValueKey: value,
            kLineEnding: v == configuration.variables.last ? '' : ',',
          };
        },
      ).toList(),
    });

    writeTarget(output);
  }
}
