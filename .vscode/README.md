# VSCode Configuration

This directory contains Visual Studio Code specific configuration files for the GitHub Copilot template.

## Files

- `extensions.json` - Recommended extensions for the best development experience
- `settings.json` - Workspace settings optimized for GitHub Copilot usage

## Purpose

Since this is a VSCode GitHub Copilot template, having proper VSCode configuration is essential for:

- Enabling GitHub Copilot and Copilot Chat
- Setting up appropriate formatters and linters
- Configuring file associations and editor behaviors
- Excluding build artifacts and temporary files from search and file explorer

## Recommended Extensions

The `extensions.json` file includes essential extensions:
- **GitHub Copilot**: AI-powered code completion
- **GitHub Copilot Chat**: AI-powered code assistance and explanation
- **Language-specific extensions**: Python, C++, C#, TypeScript, Go, Rust support
- **Formatters**: Prettier, language-specific formatters
- **Linters**: ESLint, Flake8, and other code quality tools

## Settings

The `settings.json` file includes:
- Format on save enabled
- GitHub Copilot optimizations
- File exclusions for better performance
- Markdown preview settings
- Auto-fix on save for supported linters

## Customization

Teams can customize these files based on their specific project needs while maintaining the core GitHub Copilot functionality.