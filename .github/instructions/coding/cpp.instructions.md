---
applyTo: "src/**/*.cpp"
---

# Coding Standards for C++

## General Rules
- Follow [Google C++ Style Guide](https://google.github.io/styleguide/cppguide.html).
- Use **clang-format** for formatting and **clang-tidy** for static analysis.
- Add `// Contains AI-generated edits.` at the end of AI-modified files.

## Naming Conventions
- Variables and functions: `snake_case`
- Classes and structs: `PascalCase`
- Constants: `kUpperSnakeCase`
- Member variables: `m_snake_case` or trailing `_`

## Commenting
- Write all comments in **English** as the primary language.
- Optionally add explanations in secondary languages (e.g., Japanese, Korean, Chinese) when needed.
- Keep comments concise, meaningful, and avoid stating the obvious.
- Use `///` or `/** */` for documenting classes, functions, and complex logic.
- Example:
  ```cpp
  /// Calculates the average value of a vector
  /// ベクトルの平均値を計算する
  double calculate_average(const std::vector<int>& values) { ... }
  ```

## Error Handling

* Prefer exceptions over return codes for error handling.
* Use standard exception classes (e.g., `std::runtime_error`) or define specific exception types.
* Ensure proper cleanup using RAII (Resource Acquisition Is Initialization).

## Testing

* Use **Google Test** or **Catch2** for unit tests.
* Place tests under `tests/` with mirrored directory structure of `src/`.
