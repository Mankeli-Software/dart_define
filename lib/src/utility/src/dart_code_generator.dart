import 'package:change_case/change_case.dart';
import 'package:dart_define/src/model/model.dart';
import 'package:dart_define/src/resource/resource.dart';
import 'package:dart_define/src/utility/src/code_generator.dart';
import 'package:mustache_template/mustache.dart';

/// {@template dart_code_generator}
/// A class for generating dart specific boilerplate code for the
/// dart_define package
/// {@endtemplate}
class DartCodeGenerator extends CodeGenerator {
  /// {@macro dart_code_generator}
  DartCodeGenerator({
    required super.target,
    required this.configuration,
    this.className = kClassNameArgDefault,
  });

  /// The class name to be used for the generated code
  final String className;

  /// The configuration to be used for generating the code
  final DartDefineConfiguration configuration;

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
  static const {{$kNameKey$kCamelCaseVariableSuffix}} = String.fromEnvironment('{{$kNameKey}}');

  {{/$kVariablesKey}}
}

    ''';

    final template = Template(mustacheSource);

    final output = template.renderString({
      kVariablesKey: configuration.variables
          .map(
            (v) => {
              kNameKey: v.name,
              '$kNameKey$kCamelCaseVariableSuffix': v.name.toCamelCase(),
              kDescriptionKey: v.description,
              kDefaultKey: v.defaultValue,
            },
          )
          .toList(),
    });

    final content = wrapWithComments(output);

    writeTarget(content);
  }
}
