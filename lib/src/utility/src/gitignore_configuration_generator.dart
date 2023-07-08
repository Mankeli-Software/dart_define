import 'package:dart_define/src/utility/src/configuration_generator.dart';

/// {@template gitignore_configuration_generator}
/// A class for generating dart specific boilerplate code for the
/// dart_define package
/// {@endtemplate}
class GitignoreConfigurationGenerator extends ConfigurationGenerator {
  /// {@macro gitignore_configuration_generator}
  GitignoreConfigurationGenerator({
    required super.target,
    required this.jsonPath,
  });

  final String jsonPath;

  @override
  void generate() {
    appendGeneratedCode(jsonPath);
  }
}
