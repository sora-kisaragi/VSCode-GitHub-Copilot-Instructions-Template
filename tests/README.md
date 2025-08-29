# Tests Directory

This directory contains test files for projects using this GitHub Copilot template.

## Purpose

Standard directory for all types of tests including unit tests, integration tests, and end-to-end tests.

## Guidelines

- Mirror the structure of the `src/` directory for test organization
- Follow testing conventions specified in the language-specific instruction files
- Use appropriate testing frameworks as mentioned in the coding guidelines:
  - JavaScript/TypeScript: Jest, Mocha, or Vitest
  - Python: pytest or unittest
  - C++: GoogleTest or Catch2
  - C#: MSTest, NUnit, or xUnit
  - Swift: XCTest
  - Kotlin: JUnit + AndroidX Test libraries
  - Dart/Flutter: built-in test framework

## Test Types

- **Unit Tests**: Test individual functions, methods, or classes
- **Integration Tests**: Test interactions between components
- **End-to-End Tests**: Test complete user workflows
- **Performance Tests**: When applicable for the project

## Naming Conventions

Follow the naming conventions specified in each language's instruction file:
- JavaScript/TypeScript: `*.spec.js` or `*.test.js`
- Python: `test_*.py`
- C++: `*Test.cpp` or `*_test.cpp`
- And others as specified in the respective coding guidelines