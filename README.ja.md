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
├── STANDARDIZATION_TEMPLATE.md      # 命令ファイル間の一貫性を保つためのガイドライン
├── copilot-instructions.md          # Copilotの基本ルール（思考モード・返答規則など）
├── instructions/
│   ├── coding/                       # 言語別のコーディング規約
│   │   ├── cpp.instructions.md       # C++コーディング規約
│   │   ├── csharp.instructions.md    # C#コーディング規約
│   │   ├── dart.instructions.md      # Dart/Flutterコーディング規約
│   │   ├── html_css.instructions.md  # HTML/CSSコーディング規約
│   │   ├── javascript.instructions.md # JavaScript/TypeScriptコーディング規約
│   │   ├── kotlin.instructions.md    # Kotlin/Androidコーディング規約
│   │   ├── python.instructions.md    # Pythonコーディング規約
│   │   └── swift.instructions.md     # Swift/iOSコーディング規約
│   ├── framework/                    # フレームワーク固有のガイドライン
│   │   ├── tyranoscript.instructions.md # TyranoScript固有のガイドライン
│   │   ├── unity.instructions.md     # Unityゲームエンジンガイドライン
│   │   ├── unrealengine.instructions.md # Unreal Engineガイドライン
│   │   └── vue.instructions.md       # Vue.jsフレームワークガイドライン
│   ├── documentation.instructions.md  # ドキュメント生成ルール (HLD/LLD, Mermaid, LaTeX)
│   ├── documentation-supplementary.instructions.md # 補足ドキュメントガイドライン
│   ├── git-flow.instructions.md       # Git運用フローをCopilotで使うためのルール
│   └── task-management.instructions.md # Issue/タスク管理ルール
├── prompts/
│   ├── code-review.prompt.md         # コードレビュー支援テンプレート
│   ├── commit-message.prompt.md      # コミットメッセージ生成テンプレート
│   └── task-management.prompt.md     # タスク管理支援テンプレート
├── chatmodes/                        # エージェントベースのチャットモード設定
│   ├── agent-planning.chatmode.md    # 計画・設計モードエージェント
│   ├── agent-qa.chatmode.md          # QA・調査モードエージェント
│   └── pr-review.chatmode.md         # Pull Requestレビューエージェント
LICENSE                               # MIT License
README.md                             # プロジェクトREADME（英語版）
README.ja.md                          # プロジェクトREADME（日本語版）
README.kr.md                          # プロジェクトREADME（韓国語版）
README.zh.md                          # プロジェクトREADME（中国語版）

````

---

## 使い方

1. このリポジトリをクローンします:

   ```bash
   git clone https://github.com/sora-kisaragi/VSCode-GitHub-Copilot-Instructions-Template.git
   ```

2. プロジェクトの言語やスタイルに合わせて instruction ファイルを調整してください。
   例:

   * `.github/instructions/documentation.instructions.md` → HLD/LLDやMermaid図の生成ルール
   * `.github/instructions/git-flow.instructions.md` → チームのGit運用ルール
   * `.github/instructions/coding/` → 言語別のコーディング規約（JavaScript、Python、C++など）
   * `.github/instructions/framework/` → フレームワーク固有のガイドライン（Unity、Vue.jsなど）
   * `.github/prompts/commit-message.prompt.md` → 一貫したコミットメッセージ生成

3. 特定のタスクにはエージェントベースのチャットモードを利用してください:
   * **QAモード** (`.github/chatmodes/agent-qa.chatmode.md`) → バグ報告、調査、説明
   * **計画モード** (`.github/chatmodes/agent-planning.chatmode.md`) → 機能設計とタスク計画
   * **PRレビューモード** (`.github/chatmodes/pr-review.chatmode.md`) → Pull Requestレビュー支援

4. `.github/prompts/` 以下のプロンプトテンプレートを一貫したやり取りのためにカスタマイズしてください。

5. 命令ファイル間の一貫性を保つためのガイドラインは `.github/STANDARDIZATION_TEMPLATE.md` を参照してください。

6. チームで共有し、統一的な運用を実現しましょう。

---

## 推奨セットアップ

* VSCode に GitHub Copilot および Copilot Chat をインストール
* Prettier / ESLint / Flake8 などのリンターやフォーマッター
* CI/CD チェックを GitHub Actions に統合（推奨）

### Flutter/Dart 開発環境

このテンプレートには Flutter/Dart 環境構築が含まれています：

* **Flutterテンプレート** (`flutter_template/`) - VSCode設定を含む完全なFlutterプロジェクト構造
* **Dartテンプレート** (`dart_template/`) - CLIアプリケーション用のスタンドアロンDartプロジェクト
* **拡張されたDart指示** (`.github/instructions/coding/dart.instructions.md`) - 包括的なFlutter/Dartコーディングガイドライン

Flutter環境構築の手順については、[`flutter_template/README.md`](flutter_template/README.md) を参照してください。

---

## ライセンス

MIT License
