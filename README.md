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
├── copilot-instructions.md          # Core instructions (thinking mode, response rules, etc.)
├── instructions/
│   ├── documentation.instructions.md # Documentation generation rules (HLD/LLD, Mermaid, LaTeX)
│   ├── git\_flow\.instructions.md      # Git workflow usage for Copilot
│   ├── task\_management.instructions.md # Rules for issue/task handling
│   └── supplementary\_docs.instructions.md # Optional design/docs guidelines
├── prompts/
│   ├── commit-message.prompt.md      # Commit message generation template
│   ├── pr-review\.prompt.md           # Pull Request review assistance
│   ├── qa-mode.prompt.md             # QA mode instructions
│   └── planning-mode.prompt.md       # Planning/design mode instructions
├── prompt-snippets/                  # Reusable prompt snippets (if needed)
├── workflows/                        # GitHub Actions workflows
docs/
├── git\_flow\.md                       # Git workflow guide (human-facing)
├── documentation.md                  # Documentation rules and guidelines
├── coding\_styles/                    # Language-specific coding conventions
└── api\_docs.md                       # API documentation templates
src/                                  # Source code
tests/                                # Test code
README.md                             # Project README

````

---

## How to Use

1. Clone this repository:

   ```bash
   git clone https://github.com/your-org/copilot-template.git
   ```

2. Adjust instruction files for your project’s language and style.
   For example:

   * `.github/instructions/documentation.instructions.md` → How Copilot should generate HLD/LLD or Mermaid diagrams
   * `.github/instructions/git_flow.instructions.md` → How to enforce your Git workflow
   * `.github/prompts/commit-message.prompt.md` → Generate commit messages consistently

3. Use QA Mode (`qa-mode.prompt.md`) for bug reports, investigations, and clarifications.
   Use Planning Mode (`planning-mode.prompt.md`) for feature design and task planning.

4. Extend prompt templates under `.github/prompts/` or create reusable snippets in `.github/prompt-snippets/`.

5. Share with your team to maintain consistency.

---

## Recommended Setup

* VSCode with GitHub Copilot and Copilot Chat installed
* Prettier / ESLint / Flake8 or equivalent linters/formatters
* CI/CD checks integrated using GitHub Actions (optional but recommended)

---

## License

MIT License
