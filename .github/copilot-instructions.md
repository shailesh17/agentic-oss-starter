# Copilot & Cursor AI Guidelines for `agentic-oss-starter`

This repository is an AI-native open-source monorepo template powered by **pnpm workspaces** and **local Nx task orchestration**.

## Guidelines for AI Assistants

1. **Workspace Structure**:
   - Applications reside under `apps/` (e.g. `apps/web`, `apps/api`).
   - Shared packages reside under `packages/` (e.g. `packages/shared`).
   - Root `package.json` orchestrates tasks with `nx run-many` and `nx affected`.

2. **Common Build Language**:
   - When adding a new tier, ensure its `package.json` includes standard scripts: `"build"`, `"test"`, `"dev"`.

3. **Coding Standards**:
   - Strict TypeScript (`NodeNext` module resolution, ES2022 target).
   - Node 22 native test runner (`node --test`).
   - Formatting and linting managed by Trunk (`trunk fmt`, `trunk check`).
   - Conventional Commits enforced on all commits and PRs.
