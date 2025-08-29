# GitHub Copilot Template for VSCode

[English](./README.md) | [한국어 버전](./README.kr.md) | [中文版本](./README.zh.md)

[GitHub Copilot](https://docs.github.com/copilot) を **VSCode** で利用するための **すぐに使えるテンプレート** です。以下を含みます:

* 📐 コーディング規約（言語別）
* 🌱 Git 運用フローガイド
* 📄 ドキュメント作成ルール
* 🗂️ タスク管理・補足資料の指示
* 🤖 Copilot Chat / Agent 用の Instruction & Prompt ファイル（コミットメッセージ、PRレビュー、QA/計画モードなど）

このリポジトリを使うことで、チームや個人が **一貫した Copilot 利用ルールを定義** し、明確な規約のもとでスムーズなコラボレーションと再現可能な開発フローを実現できます。

---

## リポジトリ構成

```

.github/
├── copilot-instructions.md           # Copilotの基本ルール（思考モード・返答規則など）
├── instructions/
│   ├── documentation.instructions.md  # ドキュメント生成ルール (HLD/LLD, Mermaid, LaTeX)
│   ├── git\_flow\.instructions.md       # Git運用フローをCopilotで使うためのルール
│   ├── task\_management.instructions.md # Issue/タスク管理ルール
│   └── supplementary\_docs.instructions.md # 補足資料（DB/業務フロー/APIなど）の作成ガイド
├── prompts/
│   ├── commit-message.prompt.md       # コミットメッセージ生成テンプレート
│   ├── pr-review\.prompt.md            # Pull Requestレビュー補助
│   ├── qa-mode.prompt.md              # QAモード指示
│   └── planning-mode.prompt.md        # 計画モード指示
├── prompt-snippets/                   # 再利用可能なスニペットプロンプト
├── workflows/                         # GitHub Actions ワークフロー
docs/
├── git\_flow\.md                        # Git運用フロー（人間向け）
├── documentation.md                   # ドキュメント作成ルール
├── coding\_styles/                     # 言語別のコーディング規約
└── api\_docs.md                        # APIドキュメントテンプレート
src/                                   # ソースコード
tests/                                 # テストコード
README.ja.md                           # プロジェクトREADME（日本語版）

````

---

## 使い方

1. このリポジトリをクローンします:

   ```bash
   git clone https://github.com/your-org/copilot-template.git
   ```

2. プロジェクトの言語やスタイルに合わせて instruction ファイルを調整してください。
   例:

   * `.github/instructions/documentation.instructions.md` → HLD/LLDやMermaid図の生成ルール
   * `.github/instructions/git_flow.instructions.md` → チームのGit運用ルール
   * `.github/prompts/commit-message.prompt.md` → 一貫したコミットメッセージ生成

3. バグ報告や調査には **QAモード (`qa-mode.prompt.md`)** を、
   設計や計画には **計画モード (`planning-mode.prompt.md`)** を利用してください。

4. `.github/prompts/` 以下のテンプレートを拡張したり、再利用用に `.github/prompt-snippets/` にまとめることも可能です。

5. チームで共有し、統一的な運用を実現しましょう。

---

## 推奨セットアップ

* VSCode に GitHub Copilot および Copilot Chat をインストール
* Prettier / ESLint / Flake8 などのリンターやフォーマッター
* CI/CD チェックを GitHub Actions に統合（推奨）

---

## ライセンス

MIT License
