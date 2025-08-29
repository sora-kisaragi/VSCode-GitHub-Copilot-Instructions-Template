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
├── copilot-instructions.md             # Copilot 핵심 규칙 (사고 모드, 응답 규칙 등)
├── instructions/
│   ├── documentation.instructions.md    # 문서 생성 규칙 (HLD/LLD, Mermaid, LaTeX)
│   ├── git\_flow\.instructions.md         # Git 워크플로우 규칙
│   ├── task\_management.instructions.md  # Issue / 작업 관리 규칙
│   └── supplementary\_docs.instructions.md # 보조 자료 (DB/업무 흐름/API 등) 작성 지침
├── prompts/
│   ├── commit-message.prompt.md         # 커밋 메시지 생성 템플릿
│   ├── pr-review\.prompt.md              # Pull Request 리뷰 보조
│   ├── qa-mode.prompt.md                # QA 모드 지시
│   └── planning-mode.prompt.md          # 계획 모드 지시
├── prompt-snippets/                     # 재사용 가능한 스니펫 프롬프트
├── workflows/                           # GitHub Actions 워크플로우
docs/
├── git\_flow\.md                          # Git 워크플로우 가이드 (사람용)
├── documentation.md                     # 문서 작성 규칙과 지침
├── coding\_styles/                       # 언어별 코딩 규칙
└── api\_docs.md                          # API 문서 템플릿
src/                                     # 소스 코드
tests/                                   # 테스트 코드
README.kr.md                             # 프로젝트 README (한국어)

````

---

## 사용 방법

1. 저장소를 클론합니다:

   ```bash
   git clone https://github.com/your-org/copilot-template.git
   ```

2. 프로젝트의 언어와 스타일에 맞게 instruction 파일을 조정하세요.
   예:

   * `.github/instructions/documentation.instructions.md` → HLD/LLD, Mermaid 다이어그램 생성 규칙
   * `.github/instructions/git_flow.instructions.md` → 팀 Git 워크플로우 정의
   * `.github/prompts/commit-message.prompt.md` → 일관된 커밋 메시지 작성

3. 버그 보고 및 조사에는 **QA 모드 (`qa-mode.prompt.md`)** 를,
   설계 및 계획에는 **계획 모드 (`planning-mode.prompt.md`)** 를 사용하세요.

4. `.github/prompts/` 아래의 템플릿을 확장하거나, `.github/prompt-snippets/` 에 재사용 가능한 프롬프트를 정리할 수 있습니다.

5. 팀과 공유하여 일관된 운영을 유지하세요.

---

## 추천 환경

* VSCode 에 GitHub Copilot 및 Copilot Chat 설치
* Prettier / ESLint / Flake8 등의 코드 포맷터 및 린터 사용
* GitHub Actions 를 통한 CI/CD 검사 통합 (권장)

---

## 라이선스

MIT License
