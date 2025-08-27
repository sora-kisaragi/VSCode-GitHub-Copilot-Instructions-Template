---
applyTo: "docs/**/*.md"
---

# Documentation Instructions for Copilot

## 1. Format Rules
- Generate all documents in Markdown (`.md`).
- Use code blocks for code examples with proper language tag.
- Include author, date, and version at the top of each file.

## 2. Diagram Rules
- For diagrams, use Mermaid syntax.
  - Flowcharts, ER diagrams, state transitions, sequence diagrams.
- Only create diagrams when necessary.
- Label nodes clearly and consistently.

## 3. Math / Formula Rules
- Use LaTeX for complex formulas or calculations.
- Inline: `$ ... $`, Block: `$$ ... $$`

## 4. Required Documents
- Requirements (`requirements/`): System & user requirements
- HLD (`design/HLD.md`): High-level architecture
- LLD (`design/LLD.md`): Low-level design, classes, functions

## 5. Optional Documents
- DB design (`optional/db_design.md`)
- Business workflow (`optional/business_flow.md`)
- API spec (`optional/api_spec.md`)
- Other supplements (`optional/calculations.md`)
- Only generate if explicitly requested.

## 6. General Guidelines
- Maintain consistency with existing documents.
- Include links between related documents.
- Keep descriptions clear and concise.
- If unsure, provide suggestions rather than assumptions.
