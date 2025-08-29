# GitHub Copilot Template for VSCode

[English](./README.md) | [日本語版](./README.ja.md) | [한국어 버전](./README.kr.md)

这是一个 **开箱即用的模板**，用于在 **VSCode** 中配置 [GitHub Copilot](https://docs.github.com/copilot)，包括：

* 📐 编码规范（按语言分类）
* 🌱 Git 工作流指南
* 📄 文档编写规则
* 🗂️ 任务管理与补充资料指引
* 🤖 Copilot Chat / Agent 的说明文件与提示模板（提交信息、PR 审查、QA/规划模式等）

此仓库帮助团队和个人 **统一使用 Copilot 的方式**，确保清晰的规范、顺畅的协作，以及可复现的开发流程。

---

## 仓库结构

```

.github/
├── copilot-instructions.md             # Copilot 核心规则（思考模式、回答规范等）
├── instructions/
│   ├── documentation.instructions.md    # 文档生成规则 (HLD/LLD, Mermaid, LaTeX)
│   ├── git\_flow\.instructions.md         # Copilot 使用 Git 工作流的规则
│   ├── task\_management.instructions.md  # Issue / 任务管理规则
│   └── supplementary\_docs.instructions.md # 补充资料（DB/业务流程/API 等）指南
├── prompts/
│   ├── commit-message.prompt.md         # 提交信息生成模板
│   ├── pr-review\.prompt.md              # Pull Request 审查辅助
│   ├── qa-mode.prompt.md                # QA 模式说明
│   └── planning-mode.prompt.md          # 规划模式说明
├── prompt-snippets/                     # 可复用的提示片段
├── workflows/                           # GitHub Actions 工作流
docs/
├── git\_flow\.md                          # Git 工作流指南（面向人类）
├── documentation.md                     # 文档规则与指南
├── coding\_styles/                       # 按语言划分的编码规范
└── api\_docs.md                          # API 文档模板
src/                                     # 源代码
tests/                                   # 测试代码
README.zh.md                             # 项目 README（中文）

````

---

## 使用方法

1. 克隆本仓库：

   ```bash
   git clone https://github.com/your-org/copilot-template.git
   ```

2. 根据项目的语言和风格调整 instruction 文件。
   示例：

   * `.github/instructions/documentation.instructions.md` → 定义 HLD/LLD、Mermaid 图的生成规则
   * `.github/instructions/git_flow.instructions.md` → 定义团队 Git 工作流
   * `.github/prompts/commit-message.prompt.md` → 保持一致的提交信息

3. 使用 **QA 模式 (`qa-mode.prompt.md`)** 进行问题调查与错误报告，
   使用 **规划模式 (`planning-mode.prompt.md`)** 进行设计与任务规划。

4. 可扩展 `.github/prompts/` 下的模板，或在 `.github/prompt-snippets/` 中维护复用片段。

5. 与团队共享以保持一致性。

---

## 推荐设置

* 在 VSCode 中安装 GitHub Copilot 和 Copilot Chat
* 使用 Prettier / ESLint / Flake8 等代码格式化与检查工具
* 集成 GitHub Actions 实现 CI/CD 检查（推荐）

---

## 许可证

MIT License
