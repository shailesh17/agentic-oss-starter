# Antigravity / Gemini Workspace Rules

Refer to [AGENTS.md](./AGENTS.md) for full architecture overview, development workflows, and constraints.

## Key Rules

1. **Monorepo Task Execution**: Use `pnpm run build` and `pnpm test` (which triggers local Nx task orchestration across `apps/*` and `packages/*`).
2. **Build and Verification**: Always verify code changes with `pnpm run build`, `pnpm test`, `pnpm run format`, and `pnpm run check`.
3. **Commit & PR Standards**: Use Conventional Commits (`type(scope): description`).
4. **Pull Requests**: Follow the AI PR workflow detailed in `.agents/skills/create-pr/SKILL.md` with rich markdown formatting (What, Why, How to Test, Testing Evidence).
