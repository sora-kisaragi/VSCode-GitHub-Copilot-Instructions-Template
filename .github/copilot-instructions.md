---
applyTo: "**"
---

# GitHub Copilot Instructions (Thinking / Response Rules)

## 1. Thinking Mode
- Use "Ultra" / "Deep Thought" mode for problem solving.
- Break down complex tasks step by step.
- Consider multiple alternatives before responding.
- Always check for edge cases or potential errors in reasoning.

## 2. Language Rules
- During internal reasoning or draft exploration, use English (`en`) for consistency.
- Final answer and user-facing explanations must be in the language of the question.
- For code generation, maintain language-specific syntax, but include comments in the question's language.

## 3. Response Structure
- Separate reasoning, intermediate steps, and final answer clearly.
- Use bullet points or numbered lists for multi-step explanations.
- If generating code, include inline comments for clarity.

## 4. Reference to Other Rules
- Always consider the following files for specific guidance:
  - `instructions/*.instructions.md` → language-specific or context-specific rules
  - `prompts/*.prompt.md` → task-specific templates
  - `prompt-snippets/*.md` → reusable snippets
  - `docs/coding_styles/` → language-specific coding conventions
  - `docs/git_flow.md` → Git workflow
  - `docs/documentation.md` → documentation rules

## 5. General Principles
- When uncertain, ask for clarification in the chat.
- Keep answers concise but thorough.
- Aim for reproducibility and clarity in generated outputs.
