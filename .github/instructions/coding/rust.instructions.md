---
applyTo: "**/*.rs"
---

# Rust Programming Guidelines

Follow the [Rust Style Guide](https://doc.rust-lang.org/style-guide/) and [Rust API Guidelines](https://rust-lang.github.io/api-guidelines/) for idiomatic, safe, and performant Rust code.

## File Structure and Organization
- Use `src/main.rs` for binary crates, `src/lib.rs` for library crates
- Organize modules in separate files or directories
- File names: snake_case (e.g., `user_service.rs`)
- Use `mod.rs` for module directories or the module name directly

## Naming Conventions
- Crates and modules: snake_case (e.g., `my_crate`)  
  クレートとモジュールは snake_case  
  crate和模块使用 snake_case  
  크레이트와 모듈은 snake_case
- Types (structs, enums, traits): PascalCase (e.g., `UserAccount`)
- Functions and variables: snake_case (e.g., `calculate_total`)
- Constants and statics: SCREAMING_SNAKE_CASE (e.g., `MAX_SIZE`)
- Lifetimes: short, lowercase (e.g., `'a`, `'buf`)

## Coding Style
- Use `rustfmt` for automatic formatting
- Prefer explicit types when it improves readability
- Use `match` expressions for pattern matching
- Favor composition over inheritance (traits over objects)
- Leverage Rust's ownership system to prevent memory errors
- Use `Result<T, E>` for error handling, avoid panics in library code
- Prefer iterators over manual loops when appropriate

## Memory Safety and Ownership
- Understand and leverage Rust's ownership, borrowing, and lifetimes
- Use references (`&T`) for borrowing, owned types (`T`) for ownership transfer
- Prefer `&str` over `String` for function parameters when possible
- Use `Rc<T>` and `Arc<T>` for shared ownership when needed
- Utilize `Cell<T>` and `RefCell<T>` for interior mutability
- Avoid `unsafe` code unless absolutely necessary and well-documented

## Error Handling
- Use `Result<T, E>` for recoverable errors
- Use `Option<T>` for values that may or may not exist
- Leverage the `?` operator for early returns
- Create custom error types that implement `std::error::Error`
- Use `anyhow` or `thiserror` crates for ergonomic error handling

## Comments and Documentation
- Main comments in English  
  主要なコメントは英語で記述  
  主要注释使用英语  
  주요 주석은 영어로 작성
- Use doc comments (`///`) for public APIs
- Include examples in documentation using code blocks
- Use `//!` for module-level documentation
- Write helpful comments for complex algorithms or non-obvious code

## Traits and Generics
- Implement standard traits (`Debug`, `Clone`, `PartialEq`) when appropriate
- Use trait bounds to specify generic constraints
- Prefer associated types over generic parameters when there's one logical implementation
- Use `where` clauses for complex trait bounds
- Consider trait objects (`dyn Trait`) for dynamic dispatch when needed

## Testing
- Use built-in testing framework with `#[cfg(test)]`
- Test files can be in the same file or separate `tests/` directory
- Use `#[test]` attribute for unit tests
- Use property-based testing with `proptest` for comprehensive testing
- Write integration tests in `tests/` directory
- Use `cargo test` to run all tests

## Performance and Best Practices
- Profile with `cargo flamegraph` or similar tools when needed
- Use `Vec<T>` for dynamic arrays, arrays for fixed-size collections
- Prefer `&[T]` slices for function parameters over `Vec<T>`
- Use `HashMap` and `BTreeMap` appropriately based on use case
- Consider zero-cost abstractions and compile-time optimizations
- Use `cargo clippy` for additional linting and suggestions

## Concurrency
- Use `std::thread` for basic threading
- Leverage `async`/`await` for asynchronous programming
- Use `tokio` or `async-std` for async runtimes
- Prefer message passing over shared state
- Use `Mutex<T>` and `RwLock<T>` for thread-safe shared state
- Consider `rayon` for data parallelism

## Dependencies and Tooling
- Use `Cargo.toml` for dependency management
- Pin versions appropriately (`=1.0.0` for exact, `~1.0.0` for compatible)
- Use `cargo fmt`, `cargo clippy`, and `cargo check` regularly
- Consider using `cargo-audit` for security vulnerability checking