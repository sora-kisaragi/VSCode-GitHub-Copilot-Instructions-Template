# GitHub Copilot Template for VSCode

[English version](./README.md) | [日本語版](./README.ja.md) | [한국어 버전](./README.kr.md)

这是一个用于在 **VSCode** 中配置 [GitHub Copilot](https://docs.github.com/copilot) 的 **即用型模板**，包含内容如下：

* 📐 编码规范（按语言分类）
* 🌱 Git 工作流程指南
* 📄 文档编写规则
* 🤖 Copilot Chat / Agent 的指令和提示文件

该仓库帮助团队和个人 **一致性地使用 GitHub Copilot**，确保明确的规则、顺畅的协作流程以及可重复的开发工作流。

---

## 仓库结构

```
.github/
├── copilot-instructions.md          # Copilot 核心指令文件
├── instructions/                    # 项目特定的指令文件
├── prompts/                         # 预定义提示模板
├── prompt-snippets/                 # 可复用提示片段
├── workflows/                       # GitHub Actions 工作流
docs/
├── git_flow.md                       # Git 工作流程指南
├── documentation.md                  # 文档编写规则
├── coding_styles/                     # 按语言分类的编码规范
└── api_docs.md                        # API 文档模板
src/                                  # 源代码
tests/                                # 测试代码
README.md                              # 项目 README
```

---

## 使用方法

1. 克隆仓库：

   ```bash
   git clone https://github.com/your-org/copilot-template.git
   ```
2. 根据项目需求调整指令文件。
3. 在 `docs/git_flow.md` 中定义 Git 工作流程。
4. 在 `.github/prompts/` 下扩展所需的提示模板。
5. 与团队共享，保持一致的开发流程。

---

## 推荐设置

* VSCode + GitHub Copilot / Copilot Chat
* Prettier / ESLint / Flake8 或其他类似的代码检查/格式化工具
* 使用 GitHub Actions 进行 CI/CD 检查（可选，但推荐）

---

## 许可证

MIT 许可证
