---
applyTo: "src/**/*.cs"
---

# Coding Standards for C#

## General Rules
- Follow [Microsoft C# Coding Conventions](https://learn.microsoft.com/en-us/dotnet/csharp/fundamentals/coding-style/coding-conventions).
- Use **StyleCop** or **Roslyn analyzers** for automated checks.
- Add `// Contains AI-generated edits.` at the end of AI-modified files.

## Naming Conventions
- Classes, methods, and properties: `PascalCase`
- Private fields: `_camelCase`
- Constants: `PascalCase`

## Commenting
- Write all comments in **English** as the primary language.
- Optionally add explanations in secondary languages (e.g., Japanese, Korean, Chinese) when necessary.
- Keep comments concise and meaningful; avoid obvious comments.
- Use XML documentation comments (`///`) for public methods, properties, and classes.
- Example:
  ```csharp
  /// Calculates the total score
  /// 総得点を計算する
  public int CalculateTotalScore(List<int> scores) { ... }
  ```

## Error Handling

* Use exceptions for error handling, avoid silent failures.
* Prefer specific exception types over generic `Exception`.
* Use `try/catch/finally` blocks where appropriate.

## Testing

* Use **xUnit** or **NUnit** for unit testing.
* Place test files under `tests/` with a mirrored directory structure.
