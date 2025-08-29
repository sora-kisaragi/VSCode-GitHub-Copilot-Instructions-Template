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
├── STANDARDIZATION_TEMPLATE.md      # 保持指令文件间一致性的指南
├── copilot-instructions.md          # Copilot 核心规则（思考模式、回答规范等）
├── instructions/
│   ├── coding/                       # 按语言划分的编码标准
│   │   ├── cpp.instructions.md       # C++ 编码规约
│   │   ├── csharp.instructions.md    # C# 编码规约
│   │   ├── dart.instructions.md      # Dart/Flutter 编码规约
│   │   ├── html_css.instructions.md  # HTML/CSS 编码规约
│   │   ├── javascript.instructions.md # JavaScript/TypeScript 编码规约
│   │   ├── kotlin.instructions.md    # Kotlin/Android 编码规约
│   │   ├── python.instructions.md    # Python 编码规约
│   │   └── swift.instructions.md     # Swift/iOS 编码规约
│   ├── framework/                    # 框架特定指南
│   │   ├── tyranoscript.instructions.md # TyranoScript 指南
│   │   ├── unity.instructions.md     # Unity 游戏引擎指南
│   │   ├── unrealengine.instructions.md # Unreal Engine 指南
│   │   └── vue.instructions.md       # Vue.js 框架指南
│   ├── documentation.instructions.md    # 文档生成规则 (HLD/LLD, Mermaid, LaTeX)
│   ├── documentation-supplementary.instructions.md # 补充文档指南
│   ├── git-flow.instructions.md         # Copilot 使用 Git 工作流的规则
│   └── task-management.instructions.md  # Issue / 任务管理规则
├── prompts/
│   ├── code-review.prompt.md         # 代码审查支持模板
│   ├── commit-message.prompt.md      # 提交信息生成模板
│   └── task-management.prompt.md     # 任务管理支持模板
├── chatmodes/                        # 基于代理的聊天模式配置
│   ├── agent-planning.chatmode.md    # 规划/设计模式代理
│   ├── agent-qa.chatmode.md          # QA/调查模式代理
│   └── pr-review.chatmode.md         # Pull Request 审查代理
LICENSE                               # MIT License
README.md                             # 项目 README（英文）
README.ja.md                          # 项目 README（日文）
README.kr.md                          # 项目 README（韩文）
README.zh.md                          # 项目 README（中文）

````

---

## 使用方法

1. 克隆本仓库：

   ```bash
   git clone https://github.com/sora-kisaragi/VSCode-GitHub-Copilot-Instructions-Template.git
   ```

2. 根据项目的语言和风格调整 instruction 文件。
   示例：

   * `.github/instructions/documentation.instructions.md` → 定义 HLD/LLD、Mermaid 图的生成规则
   * `.github/instructions/git-flow.instructions.md` → 定义团队 Git 工作流
   * `.github/instructions/coding/` → 按语言划分的编码规约（JavaScript、Python、C++ 等）
   * `.github/instructions/framework/` → 框架特定指南（Unity、Vue.js 等）
   * `.github/prompts/commit-message.prompt.md` → 保持一致的提交信息

3. 使用基于代理的聊天模式执行特定任务：
   * **QA 模式** (`.github/chatmodes/agent-qa.chatmode.md`) → 错误报告、调查、说明
   * **规划模式** (`.github/chatmodes/agent-planning.chatmode.md`) → 功能设计与任务规划
   * **PR 审查模式** (`.github/chatmodes/pr-review.chatmode.md`) → Pull Request 审查支持

4. 自定义 `.github/prompts/` 下的提示模板以实现一致的交互。

5. 参考 `.github/STANDARDIZATION_TEMPLATE.md` 获取保持指令文件间一致性的指南。

6. 与团队共享以保持一致性。

---

## 推荐设置

* 在 VSCode 中安装 GitHub Copilot 和 Copilot Chat
* 使用 Prettier / ESLint / Flake8 等代码格式化与检查工具
* 集成 GitHub Actions 实现 CI/CD 检查（推荐）

---

## 许可证

MIT License
