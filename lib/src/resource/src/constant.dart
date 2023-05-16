/// NOTE: For some of these default values to get used, you'll have to run the code generator
/// after changing the values. This is due the fact that json_serializable reads the default values
/// at generators runtime, not the CLI tools runtime.
/// To run the generator, run `dart pub run build_runner build` in the root of your project

/// CLI command argument names
const String kDartPathArg = 'dart_path';
const String kJsonPathArg = 'json_path';
const String kGenerateDartArg = 'dart';
const String kGenerateJsonArg = 'json';
const String kClassNameArg = 'class_name';

/// CLI command arg defaults
const String kYamlPathArgDefault = 'pubspec.yaml';
const String kDartPathArgDefault = 'lib/dart_define.gen.dart';
const String kJsonPathArgDefault = 'dart_define.json';
const bool kGenerateDartArgDefault = true;
const bool kGenerateJsonArgDefault = true;
const bool kRequiredVariableDefault = true;
const String kClassNameArgDefault = 'DartDefine';

/// Config yaml keys
const String kConfigKey = 'dart_define';
const String kVariablesKey = 'variables';
const String kNameKey = 'name';
const String kDescriptionKey = 'description';
const String kDefaultKey = 'default';
const String kRequiredKey = 'required';

/// Misc
const String kCamelCaseVariableSuffix = 'camel_case';
const String kValueKey = 'value';
const String kLineEnding = 'line_ending';
const String kDartType = 'dart_type';
