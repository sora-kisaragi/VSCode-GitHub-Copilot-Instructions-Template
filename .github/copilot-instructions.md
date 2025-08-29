# GitHub Copilot Instructions Template Repository

Always reference these instructions first and fallback to search or bash commands only when you encounter unexpected information that does not match the info here.

## Working Effectively

This is a **template repository** for GitHub Copilot configuration files. It contains instruction files, prompts, and examples to help teams set up consistent GitHub Copilot usage across projects.

### Repository Structure and Navigation
- Repository Root: Contains multilingual README files (English, Japanese, Korean, Chinese)
- `.github/instructions/`: Language-specific and context-specific instruction files
  - `coding/`: Language-specific coding standards (JavaScript, Python, C++, C#, Swift, Kotlin, Dart, HTML/CSS)
  - `framework/`: Framework-specific guidelines (Vue.js, Unity, Unreal Engine, TyranoScript)
  - `documentation.instructions.md`: Documentation generation rules with Mermaid and LaTeX
  - `git-flow.instructions.md`: Git workflow enforcement rules
  - `task-management.instructions.md`: GitHub Issues and task tracking guidelines
  - `documentation-supplementary.instructions.md`: Optional design documents guidance
- `.github/prompts/`: Task-specific prompt templates for commit messages, code reviews, task management
- `.github/chatmodes/`: Agent mode configurations for planning, QA, and PR reviews
- `.github/copilot-instructions.md`: This file - repository-specific instructions

### Build and Validation Process
- **NO BUILD REQUIRED**: This is a documentation/template repository with no compilation step
- **Validation commands**:
  - Basic markdown syntax check: `find . -name "*.md" -exec echo "Checking {}" \; -exec head -1 {} \;`
  - Structure validation: Ensure all `.instructions.md` files follow the pattern with `---\napplyTo: "pattern"\n---` frontmatter
  - File naming convention check: All instruction files must end with `.instructions.md`, prompt files with `.prompt.md`, chat modes with `.chatmode.md`

### Key File Patterns and Standards
- **Instruction files** (`*.instructions.md`):
  - Must start with frontmatter defining `applyTo:` pattern
  - Use clear headings for sections (General Rules, Naming Conventions, Testing, etc.)
  - Include language-specific examples where applicable
  - Maintain consistent structure across language files
- **Prompt files** (`*.prompt.md`):
  - Include frontmatter with mode, tools, and description
  - Provide clear rules and examples
  - Focus on specific task outcomes
- **Chat mode files** (`*.chatmode.md`):
  - Define mode, tools, and detailed instructions for agent behavior

### Validation Steps
Always run these validation steps when making changes:
1. **File naming validation**: `find .github -name "*.md" | grep -E '\.(instructions|prompt|chatmode)\.md$' | wc -l` should equal total .md files in .github
2. **Frontmatter validation**: Check that instruction files have proper frontmatter
3. **Structure consistency**: Ensure new instruction files follow existing patterns
4. **Cross-reference validation**: Verify that references between files are accurate
5. **Language consistency**: Maintain English as primary language with optional multilingual supplements

### Common Tasks
- **Adding new language support**: Create new file in `.github/instructions/coding/` following existing pattern
- **Adding framework support**: Create new file in `.github/instructions/framework/` with framework-specific guidelines
- **Creating new prompts**: Add to `.github/prompts/` with proper frontmatter and clear instructions
- **Updating existing instructions**: Maintain consistency with established patterns and cross-references

### Timing Expectations
- **File validation**: 2-5 seconds per file - NEVER CANCEL
- **Repository-wide validation**: 10-15 seconds for all files - NEVER CANCEL
- **Structure verification**: 5-10 seconds - NEVER CANCEL

### Manual Validation Scenarios
After making changes, always test:
1. **Cross-reference accuracy**: Verify that file paths mentioned in instructions actually exist
2. **Pattern consistency**: Check that new instruction files follow the established format
3. **Frontmatter validity**: Ensure `applyTo:` patterns are syntactically correct
4. **Content completeness**: Verify that instruction files cover all necessary sections for their domain
5. **Language guidelines**: Test that multilingual examples follow the established pattern

### Template Usage Validation
To validate that the template works correctly:
1. Check that instruction files cover common development scenarios
2. Verify that prompts produce useful outputs for their intended tasks
3. Ensure chat modes provide appropriate guidance for different interaction types
4. Test that the overall structure supports team adoption and customization

### File Location Reference
Quick reference for frequently accessed files:
- Main instructions: `.github/copilot-instructions.md` (this file)
- Documentation rules: `.github/instructions/documentation.instructions.md`  
- Git workflow: `.github/instructions/git-flow.instructions.md`
- JavaScript/TypeScript: `.github/instructions/coding/javascript.instructions.md`
- Python: `.github/instructions/coding/python.instructions.md`
- Commit messages: `.github/prompts/commit-message.prompt.md`
- Planning mode: `.github/chatmodes/agent-planning.chatmode.md`

Always validate changes by testing the specific scenarios that your modifications are intended to support.
