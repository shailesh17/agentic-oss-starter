# Copilot & Cursor AI Guidelines for `agentic-oss-starter`

This repository is an AI-native open-source polyglot monorepo template powered by **pnpm workspaces** and **local Nx task orchestration**.

## Polyglot Workspace Structure

1. **Applications (`apps/`)**:
   - `apps/web`: TypeScript Frontend Client
   - `apps/api`: TypeScript Backend / API Gateway
   - `apps/ai-service`: Python AI / Data / MCP Microservice (`pyproject.toml`)
   - `apps/gateway`: Go High-Performance Microservice (`go.mod`)

2. **Shared Packages (`packages/`)**:
   - `packages/shared`: Shared TypeScript Schemas, Interfaces, and Constants (`@agentic/shared`)

3. **Common Build Language**:
   - Every tier specifies standard scripts: `"build"`, `"test"`, `"dev"`.
   - Root `package.json` coordinates all tiers with `nx run-many` and `nx affected`.
