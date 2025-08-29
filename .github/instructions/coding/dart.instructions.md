---
applyTo: "**/*.dart"
---

# Flutter / Dart Coding Standards

## Comments
- Use English for main comments, Japanese for clarification if necessary.
- Document public methods and classes with DartDoc style.
- Example:
  ```dart
  /// Calculates the sum of two numbers
  /// 二つの数値の合計を計算する
  int calculateSum(int a, int b) {
    return a + b;
  }
  ```

## Naming Conventions
- Classes: PascalCase (e.g., `MyHomePage`, `UserDataModel`)
- Variables, functions: camelCase (e.g., `userName`, `incrementCounter`)
- Constants: ALL_CAPS_WITH_UNDERSCORES (e.g., `MAX_RETRY_COUNT`)
- Widget filenames: snake_case (e.g., `user_profile_widget.dart`)
- Private members: prefix with underscore (e.g., `_counter`, `_buildHeader`)

## Widget Structure
- Prefer small reusable widgets
- Keep build methods concise (max 50 lines)
- Use StatelessWidget when possible
- Extract complex widgets into separate classes
- Use const constructors when widget parameters are compile-time constants

## State Management
- Follow chosen state management (Provider, Riverpod, Bloc, etc.)
- Separate UI and business logic
- Keep state minimal and normalized
- Use immutable data structures when possible

## Testing
- Write unit tests for business logic
- Widget tests for UI components
- Integration tests for complete user flows
- Test file naming: `*_test.dart`
- Group related tests using `group()` function

## File Organization
- `lib/` - Main application code
  - `models/` - Data models
  - `screens/` or `pages/` - Screen widgets
  - `widgets/` - Reusable widgets
  - `services/` - Business logic and API calls
  - `utils/` - Utility functions
- `test/` - Test files mirroring lib/ structure

## Performance Guidelines
- Use `const` constructors wherever possible
- Avoid rebuilding widgets unnecessarily
- Use `ListView.builder` for long lists
- Implement proper `dispose()` methods for controllers

## Formatter & Lint
- Use `flutter format` / `dart format`
- Enable recommended lints (e.g., `flutter_lints`)
- Configure analysis_options.yaml with project-specific rules
- Run `flutter analyze` before commits

## Environment Setup
- Use the Flutter template in `/flutter_template/` directory
- Follow VSCode configuration in `.vscode/` settings
- Ensure Flutter SDK version compatibility (>=3.16.0)

## AI Assistance Guidelines
- Copilot can help with widget scaffolding and boilerplate code
- Human review recommended for complex state management and performance-critical code
- Use Copilot for generating test cases and documentation
