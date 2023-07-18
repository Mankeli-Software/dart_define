# dart_define changelog

## 2.1.1

- feat: won't override the values in config `.json`, unless `--force` flag is used.
This makes it easier to add new variables, since the old ones do not have to be given again.

## 2.0.1

- feat(BREAKING CHANGE): adds ability to append gitignore with generated json config file. This can be done with `--[no-]gitignore` flag. By default, it will append to gitignore.
- fix: fixes issues with yaml_path argument breaking other options.

## 1.0.6

- feat: makes it possible to change config yaml file location
- docs: improves documentation readability

## 1.0.5

- fix: fixes bug where some fields in config yaml did not work
- chore: migrates from `package:change_case` to `package:mankeli_core`

## 1.0.4

- feat: adds support for flavors

## 1.0.3

- fix: fixes issues with analyzer

## 1.0.2

- chore: adds example
- fix: fixes issues with analyzer
- fix: adds empty private constructor to generated dart class to disable creating new instance of the static class

## 1.0.1

- fix: fixes issues in documentation

## 1.0.0

- feat: initial release 🎉
