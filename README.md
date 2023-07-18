# dart_define

![[CI]](https://github.com/Mankeli-Software/dart_define/actions/workflows/flutter_ci.yaml/badge.svg)
[![style: mankeli analysis](https://img.shields.io/badge/style-mankeli__analysis-blue)](https://pub.dev/packages/mankeli_analysis)

[!["Buy Me A Coffee"](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/mankeli)

- [dart\_define](#dart_define)
  - [Motivation 🔥](#motivation-)
  - [Quick Start 🚀](#quick-start-)
  - [Using the configuration ⚙️](#using-the-configuration-️)
  - [Configuring CI/CD pipeline ✔️](#configuring-cicd-pipeline-️)
  - [Setting up flavors 🍬](#setting-up-flavors-)
  - [Using custom yaml path 📁](#using-custom-yaml-path-)

## Motivation 🔥

`dart_define` is an all-in-one tool to handle secrets and launch configurations
both locally and in CI/CD pipelines super easily. Say goodbye to `.env` files
or any other tedious and error-prone ways. With this package you can access
your secrets in dart code as well as platform specific configurations.

Flutter supports adding compile-time variables with `--dart-define` option,
and using them in both dart code and native configurations. However, with
many variables, the commands become quite long quite fast. A workaround for
that would be to create a custom launch shell scripts, or storing variables
in a JSON file and using it with `--dart-define-from-file` option.

Hovewer, that raises a ton of other issues within CI/CD pipelines. You'd
have to gitignore the launch config files, so you don't leak any secrets
unwantedly. Then you'd have to create some custom script to initialize
and fill those files with proper values in your CI/CD environments. Even
after working your way around those issues, you'd have to be very careful
to always remember update those pipelines when new values are added
(missing values are not recognized at compile-time, leading to possible
run-time errors in production).

With `dart_define`, you'll get easy ways of handling secrets and configurations
 in both local development environment as well as CI/CD pipelines. You can specify
  which variables are required, so the CLI tool will throw an exception if those
  are missing. This way missing values will result in failed pipeline run, not
  run-time error in production.

When the generator is run, `dart_define` reads the values from

1. CLI option override
    > You can override values from system environment or yaml config defaults with
    > CLI options, like so `--MY_VARIABLE=MY_VALUE`
2. System environment
    > `dart_define` tries to read values from system environment for smooth integration
    > with CI/CD pipelines
3. Default values
    > You can specify default values within `pubspec.yaml` configuration, which will
    > be used as fallback values if none of the above are provided. Note that if `required`
    > is `true` (default), the generator will fail if 1 or 2 are not provided and the default
    > value will be ignored.

## Quick Start 🚀

1. Install the CLI tool, OR add it into dependencies

    ```sh
    # activate the CLI tool
    dart pub global activate dart_define
    ```

    OR

    ```sh
    # add the tool to dependencies
    flutter pub add --dev dart_define

    # If you chooce this method, you'll have to add `pub run`
    # in from of all of the `dart_define` commands.
    # Eg. `pub run dart_define generate`
    ```

2. Define your variables in `pubspec.yaml`

    ```yaml
    dart_define:

        # OPTIONAL: Whether to generate the dart boilerplate or not. 
        # Defaults to true
        dart: true 

        # OPTIONAL: Whether to generate the json boilerplate or not. 
        # Defaults to true
        json: true 

        # OPTIONAL: The path to the json file to generate. 
        # Defaults to dart_define.json
        json_path: dart_define.json 
        
        # OPTIONAL: The path to the dart file to generate. 
        # Defaults to lib/dart_define.gen.dart
        dart_path: lib/dart_define.gen.dart 
        
        # OPTIONAL: The name of the generated class. 
        # Defaults to dart_define
        class_name: dart_define 

        # REQUIRED: The variables to add to the generated config files
        variables: 

              # REQUIRED: The name of the variable
            - name: STRING_VALUE 

              # REQUIRED: The description of the variable
              description: An example String value 

              # REQUIRED: If `required` is false, this field is mandatory. 
              # Otherwise, it is ignored.
              default: hello world! 

              # OPTIONAL: If this is set to true, the CLI tool will 
              # throw an exception if the variable is not provided 
              # as an argument. This is handy when using the tool
              # in CI/CD pipelines.
              # Defaults to true.
              required: false 
            - name: INT_VALUE
              description: An example int value
              default: 3
              required: false
            - name: BOOL_VALUE
              description: An example bool value
              required: true

        # OPTIONAL: The flavors to use within the app
        flavors: 

              # REQUIRED: The name of the flavor
            - name: production 

              # REQUIRED: The description of the flavor
              description: The production flavor 
            - name: staging
              description: The staging flavor
            - name: development
              description: The development flavor
    ```

3. Generate boilerplate

    ```sh
    # If you activated the CLI tool
    dart_define generate
    ```

    > *NOTE: You can override values and variables from pubspec.yaml
    > config with CLI arguments*
    >
    > *NOTE: This will generate a json file with the given secretes / configurations.
    > It is recommended to gitignore that file.*

    <!-- markdownlint-disable -->
    <img src="https://raw.githubusercontent.com/Mankeli-Software/dart_define/main/doc/asset/usage.png" width="75%" title="usage" alt="usage">
    <!-- markdownlint-enable -->

## Using the configuration ⚙️

1. Use your variables in dart code

   This tool generates dart boilerplate, so you can access the values very easily.

   ```dart
    /// This is the code this tool creates
    class DartDefine {
        /// An example String value
        static const stringValue = String.fromEnvironment('STRING_VALUE');

        /// An example int value
        static const intValue = int.fromEnvironment('INT_VALUE');

        /// An example bool value
        static const boolValue = bool.fromEnvironment('BOOL_VALUE');
    }

    /// With this you can access the variables like so:
    String testValue = DartDefine.stringValue;
   ```

2. Access the values in platforms native configurations (see [this article][1])

    Within android build.gradle

    ```gradle
    // In app/build.gradle
    defaultConfig {
        applicationId STRING_VALUE

        // This allows us to access the value in eg. AndroidManifest.xml
        resValue "string", "STRING_VALUE", STRING_VALUE
    }
    ```

    Within AndroidManifest.xml

    ```xml
    <manifest xmlns:android="http://schemas.android.com/apk/res/android"
        package="@string/STRING_VALUE">
    </manifest>
    ```

    Within iOS config files

    ```xcconfig
    $(STRING_VALUE)
    ```

3. Run the app from the configuration file

   ```sh
   flutter run --dart-define-from-file=dart_define.json
   ```

## Configuring CI/CD pipeline ✔️

`dart_define` is designed to integrate smoothly into your CI/CD pipelines.

1. Add variables to pipelines secrets

    Since `dart_define` reads the values from environment secrets, you don't
    have to reference the variables later on. All you've got to do is to add
    them to the environments secrets!

2. Run the generator

    ```sh
    # If you have dart_define as (dev) dependecy, simply run
    dart run dart_define generate

    # If you activated dart_define as CLI tool locally
    dart pub global activate dart_define
    dart_define generate
    ```

    Alternatively, you can also specify the variables when running the command.
    This way you can fetch them from wherever you want.

    <!-- markdownlint-disable -->
    ```sh
    dart run dart_define generate --force --BOOL_VALUE=${BOOL_VALUE} --STRING_VALUE=${STRING_VALUE} --INT_VALUE=${INT_VALUE}
    ```
    <!-- markdownlint-enable -->

    *NOTE: If your CI/CD pipeline caches the codebase (does not always start from
    fresh clone), you MUST add the `--force` flag. Otherwise the values in the
    config `.json` file won't update, even if they are changed in their source.*

3. Use the configuration in the actual build commands

    ```sh
    flutter build apk --dart-define-from-file=dart_define.json
    flutter build ios --dart-define-from-file=dart_define.json
    ```

## Setting up flavors 🍬

`dart_define` allows you to create multiple configurations, for different
environments or white labels of your app. This means you can easily generate
config files for all of the environments or white labels and launch your app
with the configurations. To set these up

1. Add flavors to `dart_define` config in `pubspec.yaml`

    ```yaml
    dart_define:
        variables: 
            - name: APP_NAME 
              description: The apps name
              default: My App
              required: false 
            - name: APP_ID
              description: The apps unique id
              default: com.my.app
              required: false
        flavors: 
            - name: production 
              description: The production flavor 
            - name: staging
              description: The staging flavor
            - name: development
              description: The development flavor  
    ```

2. Generate the config file for all of your flavors

    ```sh
    dart_define generate --json_path=config/production.json --FLAVOR=production
    dart_define generate --json_path=config/staging.json --FLAVOR=staging
    dart_define generate --json_path=config/development.json --FLAVOR=development
    ```

3. Use the flavor in your app

    ```dart
    /// `dart_define` generates this enum based on the flavors in your configurations
    /// You can access the current flavor used to launch the application by calling
    /// DartDefine.flavor
    enum Flavor {
        /// The production flavor
        production,

        /// The staging flavor
        staging,

        /// The development flavor
        development,
    }
    ```

4. Run application from specific flavor

    ```sh
    flutter run --dart-define-from-file=config/development.json
    ```

## Using custom yaml path 📁

By default, `dart_define` will look for the configurations under the
`pubspec.yaml` file in the project root. To change this behavior,
you can specify a new yaml file with the `--yaml_path` flag.

[1]: https://itnext.io/flutter-3-7-and-a-new-way-of-defining-compile-time-variables-f63db8a4f6e2
