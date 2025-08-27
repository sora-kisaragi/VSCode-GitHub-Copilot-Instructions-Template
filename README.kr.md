# GitHub Copilot Template for VSCode

[English version](./README.md) | [日本語版](./README.ja.md) | [中文版本](./README.zh.md)

VSCode에서 [GitHub Copilot](https://docs.github.com/copilot)을 설정하기 위한 **바로 사용할 수 있는 템플릿**입니다. 포함 내용은 다음과 같습니다：

* 📐 코딩 규칙 (언어별)
* 🌱 Git 워크플로우 가이드
* 📄 문서 작성 규칙
* 🤖 Copilot Chat / Agent용 지시문 및 프롬프트 파일

이 리포지토리는 팀과 개인이 **GitHub Copilot을 일관되게 도입**할 수 있도록 설계되었으며, 명확한 규칙, 원활한 협업, 재현 가능한 개발 흐름을 지원합니다.

---

## 리포지토리 구조

```
.github/
├── copilot-instructions.md          # Copilot 기본 지시문
├── instructions/                    # 프로젝트별 지시문 파일
├── prompts/                         # 사전 정의된 프롬프트 템플릿
├── prompt-snippets/                 # 재사용 가능한 프롬프트 스니펫
├── workflows/                       # GitHub Actions 워크플로우
docs/
├── git_flow.md                       # Git 워크플로우 가이드
├── documentation.md                  # 문서 작성 규칙
├── coding_styles/                     # 언어별 코딩 규칙
└── api_docs.md                        # API 문서 템플릿
src/                                  # 소스 코드
tests/                                # 테스트 코드
README.md                              # 프로젝트 README
```

---

## 사용 방법

1. 리포지토리를 클론합니다：

   ```bash
   git clone https://github.com/your-org/copilot-template.git
   ```
2. 프로젝트에 맞게 지시문 파일을 조정합니다.
3. `docs/git_flow.md`에 Git 워크플로우를 정의합니다.
4. `.github/prompts/` 아래에 필요한 프롬프트 템플릿을 추가합니다.
5. 팀과 공유하여 일관된 개발 흐름을 유지합니다.

---

## 권장 설정

* VSCode + GitHub Copilot / Copilot Chat
* Prettier / ESLint / Flake8 등 린터/포매터
* GitHub Actions를 통한 CI/CD 체크 (선택 사항이지만 권장)

---

## 라이선스

MIT 라이선스
