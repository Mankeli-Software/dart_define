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
  $className._();
  
  {{#$kEnablePrefix$kFlavorsKey}}
  /// The flavor the app was launched with
  static Flavor get flavor => FlavorExtension.fromString(
        const String.fromEnvironment('$kFlavorArg'),
      );

  {{/$kEnablePrefix$kFlavorsKey}}
  {{#$kVariablesKey}}
  /// {{$kDescriptionKey}}
  static const {{$kNameKey$kCamelCaseVariableSuffix}} = {{$kDartType}}.fromEnvironment('{{$kNameKey}}');{{$kLineEnding}}
  {{/$kVariablesKey}}
}

{{#$kEnablePrefix$kFlavorsKey}}
/// The flavors supported by the application
enum Flavor {
  {{#$kFlavorsKey}}
  /// {{$kDescriptionKey}}
  {{$kNameKey$kCamelCaseVariableSuffix}},
  
  {{/$kFlavorsKey}}
}

extension FlavorExtension on Flavor {
  static Flavor fromString(String value) {
    switch (value) {
      {{#$kFlavorsKey}}
      case '{{$kNameKey}}':
        return Flavor.{{$kNameKey$kCamelCaseVariableSuffix}};
      {{/$kFlavorsKey}}
      default:
        throw throw Exception('Invalid flavor');
    }
  }
}

{{/$kEnablePrefix$kFlavorsKey}}
    ''';

    final template = Template(
      mustacheSource,
      htmlEscapeValues: false,
      lenient: true,
    );

    final output = template.renderString({
      '$kEnablePrefix$kFlavorsKey': configuration.flavors != null,
      kVariablesKey: configuration.variables
          .where(
        (v) => v.name != kFlavorArg,
      )
          .map(
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
      kFlavorsKey: (configuration.flavors ?? []).map(
        (flavor) => {
          kNameKey: flavor.name,
          '$kNameKey$kCamelCaseVariableSuffix': flavor.name.toCamelCase(),
          kDescriptionKey: flavor.description,
        },
      ),
    });

    final content = wrapWithComments(output);

    writeTarget(content);
  }
}

enum Flavor {
  dev,
  prod,
  stg,
}

extension FlavorExtension on Flavor {
  static Flavor fromString(String value) {
    switch (value) {
      case 'dev':
        return Flavor.dev;
      default:
        throw Exception('Invalid flavor');
    }
  }
}
