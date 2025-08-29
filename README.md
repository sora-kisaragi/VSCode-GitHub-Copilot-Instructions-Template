# GitHub Copilot Template for VSCode

[日本語版](./README.ja.md) | [한국어 버전](./README.kr.md) | [中文版本](./README.zh.md)

A **ready-to-use template** for setting up [GitHub Copilot](https://docs.github.com/copilot) in **VSCode**, including:

* 📐 Coding conventions (language-specific)
* 🌱 Git workflow guide
* 📄 Documentation rules
* 🗂️ Task & supplementary documentation guidelines
* 🤖 Instruction & prompt files for Copilot Chat/Agent (commit messages, PRs, QA/Planning modes)

This repository helps teams and individuals **onboard GitHub Copilot consistently**, ensuring clear conventions, smooth collaboration, and reproducible development workflows.

---

## Repository Structure

```

.github/
├── STANDARDIZATION_TEMPLATE.md      # Guidelines for maintaining consistency across instruction files
├── copilot-instructions.md          # Core instructions (thinking mode, response rules, etc.)
├── instructions/
│   ├── coding/                       # Language-specific coding standards
│   │   ├── cpp.instructions.md       # C++ coding conventions
│   │   ├── csharp.instructions.md    # C# coding conventions
│   │   ├── dart.instructions.md      # Dart/Flutter coding conventions
│   │   ├── html_css.instructions.md  # HTML/CSS coding conventions
│   │   ├── javascript.instructions.md # JavaScript/TypeScript coding conventions
│   │   ├── kotlin.instructions.md    # Kotlin/Android coding conventions
│   │   ├── python.instructions.md    # Python coding conventions
│   │   └── swift.instructions.md     # Swift/iOS coding conventions
│   ├── framework/                    # Framework-specific guidelines
│   │   ├── tyranoscript.instructions.md # TyranoScript specific guidelines
│   │   ├── unity.instructions.md     # Unity game engine guidelines
│   │   ├── unrealengine.instructions.md # Unreal Engine guidelines
│   │   └── vue.instructions.md       # Vue.js framework guidelines
│   ├── documentation.instructions.md # Documentation generation rules (HLD/LLD, Mermaid, LaTeX)
│   ├── documentation-supplementary.instructions.md # Supplementary documentation guidelines
│   ├── git-flow.instructions.md      # Git workflow usage for Copilot
│   └── task-management.instructions.md # Rules for issue/task handling
├── prompts/
│   ├── code-review.prompt.md         # Code review assistance template
│   ├── commit-message.prompt.md      # Commit message generation template
│   └── task-management.prompt.md     # Task management assistance template
├── chatmodes/                        # Agent-based chat mode configurations
│   ├── agent-planning.chatmode.md    # Planning/design mode agent
│   ├── agent-qa.chatmode.md          # QA/investigation mode agent
│   └── pr-review.chatmode.md         # Pull Request review agent
LICENSE                               # MIT License
README.md                             # Project README (English)
README.ja.md                          # Project README (Japanese)
README.kr.md                          # Project README (Korean)
README.zh.md                          # Project README (Chinese)

````

---

## How to Use

1. Clone this repository:

   ```bash
   git clone https://github.com/sora-kisaragi/VSCode-GitHub-Copilot-Instructions-Template.git
   ```

2. Adjust instruction files for your project’s language and style.
   For example:

   * `.github/instructions/documentation.instructions.md` → How Copilot should generate HLD/LLD or Mermaid diagrams
   * `.github/instructions/git-flow.instructions.md` → How to enforce your Git workflow
   * `.github/instructions/coding/` → Language-specific coding conventions (JavaScript, Python, C++, etc.)
   * `.github/instructions/framework/` → Framework-specific guidelines (Unity, Vue.js, etc.)
   * `.github/prompts/commit-message.prompt.md` → Generate commit messages consistently

3. Use agent-based chat modes for specific tasks:
   * **QA Mode** (`.github/chatmodes/agent-qa.chatmode.md`) → Bug reports, investigations, and clarifications
   * **Planning Mode** (`.github/chatmodes/agent-planning.chatmode.md`) → Feature design and task planning
   * **PR Review Mode** (`.github/chatmodes/pr-review.chatmode.md`) → Pull Request review assistance

4. Customize prompt templates under `.github/prompts/` for consistent interactions.

5. Reference `.github/STANDARDIZATION_TEMPLATE.md` for guidelines on maintaining consistency across instruction files.

6. Share with your team to maintain consistency.

---

## Recommended Setup

* VSCode with GitHub Copilot and Copilot Chat installed
* Prettier / ESLint / Flake8 or equivalent linters/formatters
* CI/CD checks integrated using GitHub Actions (optional but recommended)

### Flutter/Dart Development Environment

This template includes Flutter/Dart environment setup:

* **Flutter Template** (`flutter_template/`) - Complete Flutter project structure with VSCode settings
* **Dart Template** (`dart_template/`) - Standalone Dart project for CLI applications
* **Enhanced Dart Instructions** (`.github/instructions/coding/dart.instructions.md`) - Comprehensive Flutter/Dart coding guidelines

For Flutter setup instructions, see: [`flutter_template/README.md`](flutter_template/README.md)

---

## License

MIT License
