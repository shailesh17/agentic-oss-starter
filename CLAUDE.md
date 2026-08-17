# Claude Code Guidelines for `agentic-oss-starter`

Welcome, Claude! This document provides concise, actionable guidelines for developing within this **AI-native polyglot monorepo**.

---

## 🛠️ Common Commands

- **Build all workspace tiers**: `pnpm run build`
- **Run all test suites**: `pnpm test`
- **Run tests for affected packages only**: `pnpm run affected:test`
- **Run watch/dev mode**: `pnpm run dev`
- **Format code**: `pnpm run format` (`trunk fmt`)
- **Lint & static analysis**: `pnpm run check` (`trunk check`)

---

## 🏗️ Polyglot Architecture & Tiers

- **`apps/web`** (TypeScript): Frontend application client.
- **`apps/api`** (TypeScript): Backend service / API gateway.
- **`apps/ai-service`** (Python): AI agent, prompt processing, and data service (`pyproject.toml`).
- **`apps/gateway`** (Go): High-performance microservice and proxy (`go.mod`).
- **`packages/shared`** (TypeScript): Reusable contracts, schemas, and utilities (`@agentic/shared`).

---

## 📝 Coding & Commit Standards

- **Conventional Commits**: `<type>(<scope>): <description>` (e.g. `feat(gateway): add health check`, `fix(ai-service): handle empty prompt`).
- **Pre-flight Checks**: Always run `pnpm run build`, `pnpm test`, `pnpm run format`, and `pnpm run check` before submitting changes.
- **Dependency Management**: Use `pnpm` exclusively. Never introduce `npm` or `yarn` lockfiles.
- **Local Tooling**: Nx and Trunk run strictly locally via `node_modules` without global installation requirements.
