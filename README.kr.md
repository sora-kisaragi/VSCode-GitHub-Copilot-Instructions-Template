# GitHub Copilot Template for VSCode

[English](./README.md) | [日本語版](./README.ja.md) | [中文版本](./README.zh.md)

[GitHub Copilot](https://docs.github.com/copilot) 을 **VSCode** 에서 활용하기 위한 **바로 사용 가능한 템플릿**입니다. 다음을 포함합니다:

* 📐 언어별 코딩 규칙
* 🌱 Git 워크플로우 가이드
* 📄 문서 작성 규칙
* 🗂️ 작업 관리 및 보조 자료 지침
* 🤖 Copilot Chat / Agent용 지시 파일 및 프롬프트 (커밋 메시지, PR 리뷰, QA/계획 모드 등)

이 저장소는 팀과 개인이 **일관된 Copilot 사용 규칙을 설정** 하여 명확한 기준, 원활한 협업, 재현 가능한 개발 흐름을 구현할 수 있도록 돕습니다.

---

## 저장소 구조

```

.github/
├── STANDARDIZATION_TEMPLATE.md      # 지시 파일 간 일관성 유지를 위한 가이드라인
├── copilot-instructions.md          # Copilot 핵심 규칙 (사고 모드, 응답 규칙 등)
├── instructions/
│   ├── coding/                       # 언어별 코딩 표준
│   │   ├── cpp.instructions.md       # C++ 코딩 규약
│   │   ├── csharp.instructions.md    # C# 코딩 규약
│   │   ├── dart.instructions.md      # Dart/Flutter 코딩 규약
│   │   ├── html_css.instructions.md  # HTML/CSS 코딩 규약
│   │   ├── javascript.instructions.md # JavaScript/TypeScript 코딩 규약
│   │   ├── kotlin.instructions.md    # Kotlin/Android 코딩 규약
│   │   ├── python.instructions.md    # Python 코딩 규약
│   │   └── swift.instructions.md     # Swift/iOS 코딩 규약
│   ├── framework/                    # 프레임워크별 가이드라인
│   │   ├── tyranoscript.instructions.md # TyranoScript 가이드라인
│   │   ├── unity.instructions.md     # Unity 게임 엔진 가이드라인
│   │   ├── unrealengine.instructions.md # Unreal Engine 가이드라인
│   │   └── vue.instructions.md       # Vue.js 프레임워크 가이드라인
│   ├── documentation.instructions.md    # 문서 생성 규칙 (HLD/LLD, Mermaid, LaTeX)
│   ├── documentation-supplementary.instructions.md # 보조 문서 가이드라인
│   ├── git-flow.instructions.md         # Git 워크플로우 규칙
│   └── task-management.instructions.md  # Issue / 작업 관리 규칙
├── prompts/
│   ├── code-review.prompt.md         # 코드 리뷰 지원 템플릿
│   ├── commit-message.prompt.md      # 커밋 메시지 생성 템플릿
│   └── task-management.prompt.md     # 작업 관리 지원 템플릿
├── chatmodes/                        # 에이전트 기반 채팅 모드 설정
│   ├── agent-planning.chatmode.md    # 계획/설계 모드 에이전트
│   ├── agent-qa.chatmode.md          # QA/조사 모드 에이전트
│   └── pr-review.chatmode.md         # Pull Request 리뷰 에이전트
LICENSE                               # MIT License
README.md                             # 프로젝트 README (영어)
README.ja.md                          # 프로젝트 README (일본어)
README.kr.md                          # 프로젝트 README (한국어)
README.zh.md                          # 프로젝트 README (중국어)

````

---

## 사용 방법

1. 저장소를 클론합니다:

   ```bash
   git clone https://github.com/sora-kisaragi/VSCode-GitHub-Copilot-Instructions-Template.git
   ```

2. 프로젝트의 언어와 스타일에 맞게 instruction 파일을 조정하세요.
   예:

   * `.github/instructions/documentation.instructions.md` → HLD/LLD, Mermaid 다이어그램 생성 규칙
   * `.github/instructions/git-flow.instructions.md` → 팀 Git 워크플로우 정의
   * `.github/instructions/coding/` → 언어별 코딩 규약 (JavaScript, Python, C++ 등)
   * `.github/instructions/framework/` → 프레임워크별 가이드라인 (Unity, Vue.js 등)
   * `.github/prompts/commit-message.prompt.md` → 일관된 커밋 메시지 작성

3. 특정 작업에는 에이전트 기반 채팅 모드를 사용하세요:
   * **QA 모드** (`.github/chatmodes/agent-qa.chatmode.md`) → 버그 보고, 조사, 설명
   * **계획 모드** (`.github/chatmodes/agent-planning.chatmode.md`) → 기능 설계와 작업 계획
   * **PR 리뷰 모드** (`.github/chatmodes/pr-review.chatmode.md`) → Pull Request 리뷰 지원

4. 일관된 상호작용을 위해 `.github/prompts/` 아래의 프롬프트 템플릿을 사용자 정의하세요.

5. 지시 파일 간 일관성 유지를 위한 가이드라인은 `.github/STANDARDIZATION_TEMPLATE.md`를 참조하세요.

6. 팀과 공유하여 일관된 운영을 유지하세요.

---

## 추천 환경

* VSCode 에 GitHub Copilot 및 Copilot Chat 설치
* Prettier / ESLint / Flake8 등의 코드 포맷터 및 린터 사용
* GitHub Actions 를 통한 CI/CD 검사 통합 (권장)

---

## 라이선스

MIT License
