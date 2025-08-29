---
mode: ask
tools: [github]
description: Comprehensive code review assistance for pull requests, focusing on quality, security, and maintainability.
---

# Code Review Prompt

Perform a thorough code review of the pull request, analyzing multiple aspects of code quality and providing actionable feedback.

## Review Areas

### Code Quality and Readability
- Check if the code is easy to understand and well-structured
- Verify proper naming conventions for variables, functions, and classes
- Ensure consistent code formatting and style
- Look for overly complex functions that should be refactored
- Check for proper use of comments and documentation

### Functionality and Logic
- Identify potential bugs or logical errors
- Verify that the implementation matches the intended requirements
- Check for edge cases that might not be handled
- Look for potential race conditions or concurrency issues
- Ensure proper error handling and exception management

### Performance and Efficiency
- Identify potential performance bottlenecks
- Look for inefficient algorithms or data structures
- Check for memory leaks or excessive resource usage
- Verify database queries are optimized (if applicable)
- Look for unnecessary loops or redundant operations

### Security Considerations
- Check for input validation and sanitization
- Look for potential SQL injection or XSS vulnerabilities
- Verify proper authentication and authorization
- Check for hardcoded secrets or sensitive information
- Ensure safe usage of external libraries and APIs

### Testing and Coverage
- Verify that appropriate tests are included
- Check test quality and coverage of new functionality
- Ensure tests are meaningful and test edge cases
- Verify that existing tests still pass
- Look for missing integration or end-to-end tests

### Architecture and Design
- Check adherence to established coding standards and patterns
- Verify proper separation of concerns
- Look for violations of SOLID principles
- Check for proper dependency management
- Ensure the changes fit well with existing architecture

## Output Format

Please provide your review in the following format:

**Summary**: Brief overview of the changes and overall quality

**Issues Found**:
- **Critical**: Issues that must be fixed before merging
- **Major**: Significant issues that should be addressed
- **Minor**: Small improvements and suggestions

**Positive Aspects**: Highlight good practices and well-implemented features

**Recommendations**: Specific actionable suggestions for improvement

**Security Notes**: Any security-related observations or concerns

**Testing Notes**: Comments on test coverage and quality
