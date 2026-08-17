# Agent Guidelines for `agentic-oss-starter`

Welcome, AI agent! This document details the technical architecture, development workflows, strict constraints, coding standards, and Pull Request procedures for this repository.

---

## 🎯 Repository Overview

`agentic-oss-starter` is a production-ready, opinionated GitHub template repository for **100% AI-native open-source monorepo development**.

It is structured as a modern **pnpm + Nx multi-tier monorepo**:

- `apps/*`: Application entrypoints (e.g. `apps/web` for frontend, `apps/api` for backend services).
- `packages/*`: Reusable shared libraries, types, and utilities (e.g. `packages/shared`).
- `nx.json`: Local Nx task graph orchestration (caching, dependency graph, affected tasks, zero cloud telemetry).
- `pnpm-workspace.yaml`: Workspace definition and package dependency linking.

---

## ⚠️ Critical Constraints & Rules

### 1. Unified Common Task Language

All apps and packages implement standard scripts in their local `package.json`:

- `build`: Compiles the project artifacts to `dist/`.
- `test`: Executes native unit tests using `node --test`.
- `dev`: Runs watch/development mode.

Root scripts orchestrate tasks across all tiers using Nx:

```bash
# Build all packages & apps (respects dependency order ^build)
pnpm run build

# Run tests across all workspace packages
pnpm test

# Run dev watch mode
pnpm run dev

# Run only affected tasks based on git changes
pnpm run affected:test
pnpm run affected:build
```

### 2. Package Management & Tooling

- Always use **`pnpm`** as the package manager (`pnpm install`, `pnpm run build`, `pnpm test`, `pnpm run format`, `pnpm run check`).
- Never introduce `npm` or `yarn` lockfiles.
- Standard formatting and linting is managed locally by **Trunk**:
  - Format: `pnpm run format` (`trunk fmt`)
  - Lint/Check: `pnpm run check` (`trunk check`)
- Nx is installed strictly as a local dev dependency in `package.json` with Nx Cloud disabled (`neverConnectToCloud: true`). Never install Nx globally.

### 3. Git & Commit Standards

- All commit messages and PR titles must follow **Conventional Commits**:
  - Format: `<type>(<scope>): <description>`
  - Types: `feat`, `fix`, `docs`, `style`, `refactor`, `perf`, `test`, `build`, `ci`, `chore`, `revert`.
- Commits are verified locally via Trunk git hooks (`commitlint`).
- PR titles are verified in CI via GitHub Actions (`semantic-pr.yml`).

---

## 🤖 AI Pull Request Workflow

When instructed to open a Pull Request, use the [create-pr skill](.agents/skills/create-pr/SKILL.md):

1. **Pre-flight**: Run `pnpm run build`, `pnpm test`, `pnpm run format`, and `pnpm run check`. Ensure 0 errors.
2. **Branch & Push**: Create a feature branch and push to remote (`git push -u origin <branch>`).
3. **Open PR via `gh pr create`**:
   - **Title**: Conventional Commit (e.g. `feat(api): add health check endpoint`).
   - **Body**: Rich Markdown format including Description, Motivation, How to Test, Testing Evidence, AI Model, and Checklist.

---

## 🛠️ Common Commands

```bash
# Install dependencies
pnpm install

# Build all workspace packages
pnpm run build

# Run all test suites
pnpm test

# Format code
pnpm run format

# Run linters & static analysis
pnpm run check
```
