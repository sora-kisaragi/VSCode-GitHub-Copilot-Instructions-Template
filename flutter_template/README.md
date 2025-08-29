# Flutter環境構築テンプレート / Flutter Environment Setup Template

このディレクトリには、Flutterプロジェクトの基本的な環境構築テンプレートが含まれています。  
This directory contains a basic Flutter project environment setup template.

## 含まれるファイル / Included Files

- `pubspec.yaml` - プロジェクトの依存関係とメタデータ / Project dependencies and metadata
- `lib/main.dart` - メインアプリケーションファイル / Main application file
- `test/widget_test.dart` - ウィジェットテストの例 / Widget test example
- `analysis_options.yaml` - Dartの静的解析設定 / Dart static analysis configuration
- `.vscode/` - VSCode設定ファイル / VSCode configuration files
- `.gitignore` - Flutter固有のgitignore設定 / Flutter-specific gitignore settings

## セットアップ手順 / Setup Instructions

### 1. Flutter SDKのインストール / Install Flutter SDK

#### Option A: 公式インストーラー / Official Installer
```bash
# Linux/macOS
git clone https://github.com/flutter/flutter.git -b stable
export PATH="$PATH:`pwd`/flutter/bin"

# Windows
# https://docs.flutter.dev/get-started/install/windows からダウンロード
```

#### Option B: パッケージマネージャー / Package Manager
```bash
# Snap (Linux)
sudo snap install flutter --classic

# Homebrew (macOS)
brew install --cask flutter

# Chocolatey (Windows)
choco install flutter
```

### 2. 環境の確認 / Verify Environment
```bash
flutter doctor
```

### 3. プロジェクトの初期化 / Initialize Project
```bash
# 新しいFlutterプロジェクトを作成する場合
# To create a new Flutter project
flutter create my_app
cd my_app

# または、このテンプレートを使用する場合
# Or, to use this template
cp -r flutter_template/ my_app/
cd my_app
flutter pub get
```

### 4. 開発環境の設定 / Development Environment Setup

#### VSCode拡張機能 / VSCode Extensions
推奨される拡張機能がextensions.jsonで定義されています：
Recommended extensions are defined in extensions.json:

- Dart
- Flutter
- GitHub Copilot
- GitHub Copilot Chat

#### 静的解析とフォーマット / Static Analysis and Formatting
```bash
# 静的解析の実行 / Run static analysis
flutter analyze

# コードのフォーマット / Format code
flutter format .

# テストの実行 / Run tests
flutter test
```

## 開発のベストプラクティス / Development Best Practices

### コーディング規約 / Coding Conventions
- クラス名：PascalCase / Class names: PascalCase
- 変数・関数名：camelCase / Variable/function names: camelCase
- 定数：ALL_CAPS_WITH_UNDERSCORES / Constants: ALL_CAPS_WITH_UNDERSCORES
- ウィジェットファイル名：snake_case / Widget file names: snake_case

### ウィジェット構造 / Widget Structure
- 小さく再利用可能なウィジェットを優先 / Prefer small, reusable widgets
- buildメソッドは簡潔に保つ / Keep build methods concise
- 可能な限りStatelessWidgetを使用 / Use StatelessWidget when possible

### 状態管理 / State Management
- 選択した状態管理パターンに従う（Provider、Riverpod、Bloc等）
- Follow chosen state management pattern (Provider, Riverpod, Bloc, etc.)
- UIとビジネスロジックを分離 / Separate UI and business logic

### テスト / Testing
- ビジネスロジック用のユニットテスト / Unit tests for business logic
- UIコンポーネント用のウィジェットテスト / Widget tests for UI components

## GitHub Copilotとの連携 / Integration with GitHub Copilot

このテンプレートは、`.github/instructions/coding/dart.instructions.md` で定義されているFlutter/Dartコーディング規約と連携します。  
This template works with Flutter/Dart coding conventions defined in `.github/instructions/coding/dart.instructions.md`.

Copilotを使用する際は、以下を参考にしてください：  
When using Copilot, refer to the following:

- DartDocスタイルでの公開メソッドとクラスの文書化
- Document public methods and classes with DartDoc style
- 英語をメインとし、必要に応じて日本語で補足説明
- Use English as main language, Japanese for clarification when necessary

## 参考資料 / References

- [Flutter公式ドキュメント / Flutter Official Documentation](https://docs.flutter.dev/)
- [Dart言語ガイド / Dart Language Guide](https://dart.dev/guides)
- [Flutter Widget カタログ / Flutter Widget Catalog](https://docs.flutter.dev/ui/widgets)