# Agent Guidelines for `agentic-oss-starter`

Welcome, AI agent! This document details the technical architecture, development workflows, strict constraints, coding standards, and Pull Request procedures for this repository.

---

## 🎯 Repository Overview

`agentic-oss-starter` is a production-ready, opinionated GitHub template repository for **100% AI-native open-source polyglot monorepo development**.

It is structured as a modern **pnpm + Nx multi-tier, multi-language monorepo**:

- **`apps/web`** (TypeScript): Frontend application client.
- **`apps/api`** (TypeScript): Backend service / API gateway.
- **`apps/ai-service`** (Python): AI agent, data processing, and prompt engineering microservice (`pyproject.toml`).
- **`apps/gateway`** (Go): High-performance proxy and networking microservice (`go.mod`).
- **`packages/shared`** (TypeScript): Shared contracts, interfaces, and utilities (`@agentic/shared`).
- **`nx.json`**: Local Nx task graph orchestration (caching, dependency graph, affected tasks, zero cloud telemetry).
- **`pnpm-workspace.yaml`**: Workspace definition and package dependency linking.

---

## ⚠️ Critical Constraints & Rules

### 1. Unified Common Task Language Across Languages

All apps and packages implement standard scripts in their local `package.json` that hook into their respective native language toolchains:

- `build`: Compiles the project artifacts (e.g. `tsc` for TS, `go build` for Go, `py_compile` for Python).
- `test`: Executes unit tests (`node --test` for TS, `go test ./...` for Go, `python3 -m unittest` for Python).
- `dev`: Runs watch/development mode.

Root scripts orchestrate tasks across all tiers using Nx:

```bash
# Build all packages & apps across all languages
pnpm run build

# Run tests across all workspace tiers (TS + Python + Go)
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
   - **Title**: Conventional Commit (e.g. `feat(gateway): add request rate limiting`).
   - **Body**: Rich Markdown format including Description, Motivation, How to Test, Testing Evidence, AI Model, and Checklist.

---

## 🛠️ Common Commands

```bash
# Install dependencies
pnpm install

# Build all workspace packages & apps (TS + Python + Go)
pnpm run build

# Run all test suites across all languages
pnpm test

# Format code
pnpm run format

# Run linters & static analysis
pnpm run check
```
