---
applyTo: "**/*.rb"
---

# Ruby Programming Guidelines

Follow the [Ruby Style Guide](https://rubystyle.guide/) and Ruby best practices for clean, readable, and maintainable code.

## File Structure and Organization
- Use `lib/` for library code, `bin/` for executables, `spec/` or `test/` for tests
- One class per file, file name matches class name in snake_case
- File names: snake_case (e.g., `user_service.rb`)
- Use `require` and `require_relative` appropriately for dependencies

## Naming Conventions
- Classes and modules: PascalCase (e.g., `UserService`)  
  クラスとモジュールは PascalCase  
  类和模块使用 PascalCase  
  클래스와 모듈은 PascalCase
- Methods and variables: snake_case (e.g., `calculate_total`)
- Constants: SCREAMING_SNAKE_CASE (e.g., `MAX_RETRY_COUNT`)
- Instance variables: start with `@` (e.g., `@user_name`)
- Class variables: start with `@@` (use sparingly)
- Global variables: start with `$` (avoid when possible)

## Coding Style
- Use 2 spaces for indentation (no tabs)
- Keep lines under 80-120 characters when possible
- Use string interpolation `"Hello #{name}"` over concatenation
- Prefer single quotes for strings without interpolation
- Use `&&` and `||` for boolean logic, `and` and `or` for flow control
- Prefer blocks over long parameter lists
- Use meaningful method and variable names

## Ruby Idioms and Best Practices
- Use blocks and iterators (`each`, `map`, `select`) over manual loops
- Leverage Ruby's expressiveness: `user&.name` for safe navigation
- Use symbols (`:symbol`) for identifiers, strings for data
- Prefer `attr_accessor`, `attr_reader`, `attr_writer` over manual getters/setters
- Use `unless` for negative conditions when it improves readability
- Utilize case statements with splat operators and ranges

## Object-Oriented Design
- Follow SOLID principles and Ruby's object model
- Use modules for mixins and namespacing
- Prefer composition over inheritance when appropriate
- Use `private`, `protected`, and `public` method visibility appropriately
- Implement `initialize` method for object setup
- Use `self` explicitly only when necessary (assignment, disambiguation)

## Error Handling
- Use `raise` to throw exceptions, `rescue` to catch them
- Create custom exception classes that inherit from `StandardError`
- Use `ensure` for cleanup code that must run
- Prefer specific exception types over generic `Exception`
- Use `begin`/`rescue`/`ensure`/`end` blocks appropriately

## Comments and Documentation
- Main comments in English  
  主要なコメントは英語で記述  
  主要注释使用英语  
  주요 주석은 영어로 작성
- Use YARD format for documentation comments
- Comment complex algorithms and business logic
- Avoid obvious comments that just restate the code
- Use TODO comments for future improvements

## Testing
- Use RSpec for behavior-driven testing or Minitest for simpler tests
- Test files: `spec/*_spec.rb` (RSpec) or `test/test_*.rb` (Minitest)
- Follow AAA pattern: Arrange, Act, Assert
- Use factories (FactoryBot) or fixtures for test data
- Mock external dependencies and services
- Write both unit and integration tests

## Performance Considerations
- Use `String#freeze` for immutable strings in performance-critical code
- Prefer `String#<<` over `+=` for string building
- Use `Symbol#to_proc` shorthand: `users.map(&:name)`
- Consider using `Set` for membership testing over `Array#include?`
- Profile code with `ruby-prof` or similar tools when needed
- Use appropriate data structures (Hash vs Array) for the use case

## Framework-Specific Guidelines

### Rails Applications
- Follow Rails conventions and the "Rails Way"
- Use ActiveRecord appropriately, avoid N+1 queries
- Keep controllers thin, models fat (with service objects for complex logic)
- Use strong parameters for mass assignment protection
- Follow RESTful routing conventions

### Gem Development
- Use `bundle gem` to generate gem skeleton
- Follow semantic versioning (SemVer)
- Include comprehensive documentation and examples
- Use `rubocop` for style checking
- Include appropriate gemspec metadata

## Tools and Linting
- Use `rubocop` for style enforcement and linting
- Use `bundler` for dependency management
- Consider `reek` for code smell detection
- Use `yard` for documentation generation
- Run `ruby -w` to enable warnings during development