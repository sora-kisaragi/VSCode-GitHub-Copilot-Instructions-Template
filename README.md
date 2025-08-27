# GitHub Copilot Template for VSCode

[日本語版](./README.ja.md) | [한국어 버전](./README.kr.md) | [中文版本](./README.zh.md)

A **ready-to-use template** for setting up [GitHub Copilot](https://docs.github.com/copilot) in **VSCode**, including:

* 📐 Coding conventions (language-specific)
* 🌱 Git workflow guide
* 📄 Documentation rules
* 🤖 Instruction & prompt files for Copilot Chat/Agent

This repository helps teams and individuals **onboard GitHub Copilot consistently**, ensuring clear conventions, smooth collaboration, and reproducible development workflows.

---

## Repository Structure

```
.github/
├── copilot-instructions.md          # Core instructions for Copilot
├── instructions/                    # Project-specific instruction files
├── prompts/                         # Predefined prompt templates
├── prompt-snippets/                 # Reusable snippet prompts
├── workflows/                       # GitHub Actions workflows
docs/
├── git_flow.md                       # Git workflow guide
├── documentation.md                  # Documentation rules and guidelines
├── coding_styles/                     # Language-specific coding conventions
└── api_docs.md                        # API documentation templates
src/                                  # Source code
tests/                                # Test code
README.md                              # Project README
```

---

## How to Use

1. Clone this repository:

   ```bash
   git clone https://github.com/your-org/copilot-template.git
   ```
2. Adjust instruction files for your project’s language and style.
3. Define your Git workflow in `docs/git_flow.md`.
4. Extend prompt templates under `.github/prompts/` as needed.
5. Share with your team to maintain consistency.

---

## Recommended Setup

* VSCode with GitHub Copilot and Copilot Chat installed
* Prettier / ESLint / Flake8 or equivalent linters/formatters
* CI/CD checks integrated using GitHub Actions (optional but recommended)

---

## License

MIT License
