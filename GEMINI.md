# Antigravity / Gemini Workspace Rules

Refer to [AGENTS.md](./AGENTS.md) for full architecture overview, development workflows, and constraints.

## Key Rules

1. **Build and Verification**: Always verify code changes with `pnpm run build`, `pnpm run format`, and `pnpm run check`.
2. **Commit & PR Standards**: Use standard Conventional Commits (`type(scope): description`).
3. **Pull Requests**: Follow the AI PR workflow detailed in `.agents/skills/create-pr/SKILL.md` with rich markdown formatting (What, Why, How to Test, Testing Evidence, AI Model footer).
