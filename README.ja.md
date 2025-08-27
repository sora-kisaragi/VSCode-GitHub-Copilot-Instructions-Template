# GitHub Copilot Template for VSCode

[English version](./README.md) | [한국어 버전](./README.kr.md) | [中文版本](./README.zh.md)

VSCodeでの[GitHub Copilot](https://docs.github.com/copilot)導入用の **すぐ使えるテンプレート** です。内容には以下が含まれます：

* 📐 コーディング規約（言語別）
* 🌱 Gitワークフローガイド
* 📄 ドキュメント作成ルール
* 🤖 Copilot Chat / Agent 用の指示・プロンプトファイル

このリポジトリは、チームや個人が **GitHub Copilotを統一的に導入** できるように設計されており、明確なルール、円滑な共同作業、再現可能な開発フローを支援します。

---

## リポジトリ構成

```
.github/
├── copilot-instructions.md          # Copilotの基本指示ファイル
├── instructions/                    # プロジェクト固有の指示ファイル
├── prompts/                         # 事前定義されたプロンプトテンプレート
├── prompt-snippets/                 # 再利用可能なプロンプトスニペット
├── workflows/                       # GitHub Actions ワークフロー
docs/
├── git_flow.md                       # Gitワークフローガイド
├── documentation.md                  # ドキュメント作成ルール
├── coding_styles/                     # 言語別コーディング規約
└── api_docs.md                        # APIドキュメントテンプレート
src/                                  # ソースコード
tests/                                # テストコード
README.md                              # プロジェクトREADME
```

---

## 使い方

1. リポジトリをクローンします：

   ```bash
   git clone https://github.com/your-org/copilot-template.git
   ```
2. プロジェクトに合わせて指示ファイルを調整します。
3. `docs/git_flow.md` にGitワークフローを定義します。
4. `.github/prompts/` 以下に必要なプロンプトテンプレートを追加します。
5. チームで共有し、統一された開発フローを維持します。

---

## 推奨セットアップ

* VSCode + GitHub Copilot / Copilot Chat
* Prettier / ESLint / Flake8 などのリンター・フォーマッター
* GitHub Actions でのCI/CDチェック（任意ですが推奨）

---

## ライセンス

MITライセンス
