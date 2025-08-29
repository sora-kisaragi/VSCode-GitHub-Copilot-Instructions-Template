---
applyTo: "src/**/*.py"
---

# Coding Standards for Python

## General Rules
- Follow [PEP 8](https://peps.python.org/pep-0008/).
- Use [PEP 484 type hints](https://peps.python.org/pep-0484/) for all functions.
- Format code with **Black** and lint with **Ruff**.
- Add `# Contains AI-generated edits.` at the end of AI-modified files.

## Naming Conventions
- Variables and functions: `snake_case`
- Classes: `PascalCase`
- Constants: `UPPER_SNAKE_CASE`

## Commenting
- Write all comments in **English** as the primary language.
- Optionally add explanations in secondary languages (e.g., Japanese).
- Example:
  ```python
  # Calculate the average value
  # 平均値を計算する
  ```

## Error Handling

* Use exceptions, not return codes.
* Raise specific exception classes (avoid generic `Exception`).

## Testing

* Use `pytest`.
* Keep tests under `tests/` with file name `test_*.py`.
