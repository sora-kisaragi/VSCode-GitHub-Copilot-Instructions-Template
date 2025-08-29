---
applyTo: "**/*.go"
---

# Go Programming Guidelines

Follow the [Effective Go](https://golang.org/doc/effective_go.html) guidelines and [Go Code Review Comments](https://github.com/golang/go/wiki/CodeReviewComments) for consistent, idiomatic Go code.

## File Structure and Organization
- Use `cmd/` for main applications, `pkg/` for library code, `internal/` for private code
- One package per directory, package name matches directory name
- File names: snake_case (e.g., `user_service.go`)
- Group related functionality in the same package

## Naming Conventions
- Package names: lowercase, single word when possible (e.g., `http`, `json`)  
  パッケージ名は小文字、可能な限り単語１つ  
  包名使用小写，尽可能使用单个单词  
  패키지명은 소문자, 가능하면 단일 단어
- Types and functions: PascalCase for exported, camelCase for unexported
- Constants: Mixed case (e.g., `MaxLength`) not ALL_CAPS
- Variables: camelCase, descriptive names preferred over short ones
- Interface names: often end with `-er` suffix (e.g., `Reader`, `Writer`)

## Coding Style
- Use `gofmt` for consistent formatting
- Keep functions small and focused on single responsibility
- Prefer explicit error handling over exceptions
- Use defer for cleanup operations (close files, unlock mutexes)
- Minimize use of `interface{}`, prefer specific types
- Use table-driven tests for comprehensive test coverage
- Follow the principle: "Don't communicate by sharing memory; share memory by communicating"

## Error Handling
- Always check and handle errors explicitly
- Return errors as the last return value
- Use meaningful error messages with context
- Consider wrapping errors with additional context using `fmt.Errorf` with `%w` verb
- Use custom error types for specific error conditions

## Concurrency
- Use goroutines for concurrent operations
- Communicate through channels rather than shared variables
- Use `context.Context` for cancellation and deadlines
- Avoid shared mutable state, prefer message passing
- Use `sync` package primitives only when channels are not appropriate

## Comments and Documentation
- Main comments in English  
  主要なコメントは英語で記述  
  主要注释使用英语  
  주요 주석은 영어로 작성
- Package comments: describe the purpose and usage
- Public functions and types: use doc comments starting with the name
- Use `//` for single-line comments, `/* */` for block comments sparingly

## Testing
- Use Go's built-in testing package
- Test files: `*_test.go` in the same package
- Benchmark tests: prefix with `Benchmark`
- Example tests: prefix with `Example`
- Use table-driven tests for multiple test cases
- Mock external dependencies for unit tests

## Build and Dependencies
- Use Go modules for dependency management
- Pin dependency versions in `go.mod`
- Use `go vet` and `golint` for code quality checks
- Consider using `golangci-lint` for comprehensive linting

## Performance Considerations
- Profile code using `go tool pprof` when needed
- Prefer slices over arrays for flexibility
- Reuse objects when possible to reduce garbage collection
- Use buffered channels when appropriate
- Benchmark critical code paths