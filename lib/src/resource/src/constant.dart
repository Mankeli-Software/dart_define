/// CLI command argument names
const String kYamlPathArg = 'yaml_path';
const String kDartPathArg = 'dart_path';
const String kJsonPathArg = 'json_path';
const String kGenerateDartArg = 'generate_dart';
const String kGenerateJsonArg = 'generate_json';
const String kGeneratePlatformArg = 'generate_platform';
const String kWorkingDirectoryArg = 'working_directory';
const String kClassNameArg = 'class_name';

/// CLI command arg defaults
const String kYamlPathArgDefault = 'pubspec.yaml';
const String kDartPathArgDefault = 'lib/dart_define.gen.dart';
const String kJsonPathArgDefault = 'dart_define.json';
const bool kGenerateDartArgDefault = true;
const bool kGenerateJsonArgDefault = true;
const bool kGeneratePlatformArgDefault = true;
const String kWorkingDirectoryArgDefault = '.';
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
