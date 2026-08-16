# Agent Guidelines for `agentic-oss-starter`

Welcome, AI agent! This document details the technical architecture, development workflows, strict constraints, coding standards, and Pull Request procedures for repositories built using this template.

---

## 🎯 Repository Overview

This repository is built with **100% AI-native development standards**, optimized for seamless pair-programming with AI coding assistants (Antigravity, Cursor, Claude Code, GitHub Copilot, Gemini CLI).

The core runtime is TypeScript (ESM) managed with **pnpm**, formatted and linted with **Trunk**, and enforced with standard **Conventional Commits**.

---

## ⚠️ Critical Constraints & Rules

### 1. Package Management & Tooling

- Always use **`pnpm`** as the package manager (`pnpm install`, `pnpm run build`, `pnpm run format`, `pnpm run check`).
- Never introduce `npm` or `yarn` lockfiles.
- Standard formatting and linting is managed by **Trunk**:
  - Format: `pnpm run format` (`trunk fmt`)
  - Lint/Check: `pnpm run check` (`trunk check`)

### 2. Git & Commit Standards

- All commit messages and PR titles must follow **Conventional Commits**:
  - Format: `<type>(<scope>): <description>`
  - Types: `feat`, `fix`, `docs`, `style`, `refactor`, `perf`, `test`, `build`, `ci`, `chore`, `revert`.
- Commits are verified locally via Trunk git hooks (`commitlint`).
- PR titles are verified in CI via GitHub Actions (`semantic-pr.yml`).

---

## 🤖 AI Pull Request Workflow

When instructed to open a Pull Request, use the [create-pr skill](.agents/skills/create-pr/SKILL.md):

1. **Pre-flight**: Run `pnpm run build`, `pnpm run format`, and `pnpm run check`. Ensure 0 errors.
2. **Branch & Push**: Create a feature branch and push to remote (`git push -u origin <branch>`).
3. **Open PR via `gh pr create`**:
   - **Title**: Conventional Commit (e.g. `feat(parser): add JSON streaming support`).
   - **Body**: Rich Markdown format including:
     - `📋 Description & What Changed`
     - `💡 Motivation & Why`
     - `🧪 How to Test`
     - `🔍 Testing Evidence & Execution Logs`
     - `🤖 AI Agent & Model`
     - `🛡️ Contributor Checklist`

---

## 🛠️ Common Commands

```bash
# Install dependencies
pnpm install

# Compile TypeScript
pnpm run build

# Development watch mode
pnpm run dev

# Format code
pnpm run format

# Run linters & static analysis
pnpm run check
```
