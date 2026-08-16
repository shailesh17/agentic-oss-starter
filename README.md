# Agentic OSS Starter 🚀

<p align="center">
  <a href="https://github.com/shailesh17/agentic-oss-starter/actions/workflows/ci.yml">
    <img src="https://github.com/shailesh17/agentic-oss-starter/actions/workflows/ci.yml/badge.svg" alt="CI Status" />
  </a>
  <a href="https://github.com/shailesh17/agentic-oss-starter/blob/main/LICENSE">
    <img src="https://img.shields.io/badge/License-MIT-blue.svg" alt="License: MIT" />
  </a>
  <a href="https://nodejs.org">
    <img src="https://img.shields.io/badge/Node.js-%3E%3D22.13.0-brightgreen.svg" alt="Node.js Version" />
  </a>
  <a href="https://pnpm.io">
    <img src="https://img.shields.io/badge/pnpm-11.x-orange.svg" alt="pnpm" />
  </a>
  <a href="https://www.conventionalcommits.org">
    <img src="https://img.shields.io/badge/Conventional%20Commits-1.0.0-yellow.svg" alt="Conventional Commits" />
  </a>
</p>

An opinionated, professional-grade **GitHub Template Repository** designed from the ground up for **100% AI-native development**. 

Launch production-ready TypeScript, Python, or CLI open-source projects in under 10 seconds with pre-configured CI/CD matrix builds, automated branch rulesets, Trunk linters, Conventional Commits, AI pairing guidelines, and multi-platform GitLab mirroring.

---

## ⚡ Quick Start: Create a New Repository from this Template

### Step 1: Initialize Your New Repository
```bash
# Create and clone a new repository using this template
gh repo create my-cool-project --template shailesh17/agentic-oss-starter --public --clone
cd my-cool-project
```

### Step 2: Apply Opinionated GitHub Standards & Branch Rulesets
```bash
# Enforces squash-and-merge, PR title defaults, signed commits, linear history, and CI status checks
./scripts/setup-github-repo.sh
```

### Step 3: (Optional) Mirror to GitLab
```bash
# Sync your new repository to GitLab for dual-presence
./scripts/mirror-to-gitlab.sh
```

---

## 📦 What's Included Out-of-the-Box

| Feature | Description | File / Tool |
| :--- | :--- | :--- |
| **🤖 AI Agent Guidelines** | Full pairing rules, stdout hygiene, and prompt runbooks | `AGENTS.md`, `GEMINI.md`, `.github/copilot-instructions.md` |
| **⚡ AI PR Creation Skill** | Automated rich Markdown PR generator with verification | `.agents/skills/create-pr/SKILL.md` |
| **🧪 Multi-Node Matrix CI** | Automated builds & tests across Node 22.x & 24.x with pnpm cache | `.github/workflows/ci.yml` |
| **📝 Semantic PR Check** | Enforces Conventional Commits specification on PR titles | `.github/workflows/semantic-pr.yml` |
| **🏷️ Release Drafter** | Automatically drafts release notes categorized by Conventional Commits | `.github/workflows/release.yml` |
| **🦊 GitLab CI/CD** | Dual-platform CI pipeline ready for GitLab mirroring | `.gitlab-ci.yml`, `scripts/mirror-to-gitlab.sh` |
| **🛡️ Automated Repo Rules** | One-command setup for squash merging, linear history, and branch rulesets | `scripts/setup-github-repo.sh` |
| **🧹 Trunk Linter Suite** | Unified linting & formatting (Prettier, Actionlint, Markdownlint, Yamllint) | `.trunk/trunk.yaml` |
| **🤖 Dependabot** | Weekly automated dependency updates for npm & GitHub Actions | `.github/dependabot.yml` |

---

## 🛠️ Essential Command Flow

```bash
# 1. Install dependencies
pnpm install

# 2. Compile TypeScript
pnpm run build

# 3. Format all files (Prettier via Trunk)
pnpm run format

# 4. Lint workspace (Trunk check)
pnpm run check
```

---

## 📄 License

This project is licensed under the [MIT License](./LICENSE).
