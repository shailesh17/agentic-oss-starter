---
name: create-pr
description: >-
  Automated end-to-end workflow to verify, format, test, push, and open a polished, AI-native Pull Request using GitHub CLI (gh) with Conventional Commits and rich markdown formatting.
---

# Create PR Skill

Use this skill when you need to prepare, verify, push, and create a Pull Request on GitHub following this repository's AI-native development standards.

---

## 📋 Standard PR Title Format (Conventional Commits)

All Pull Request titles and commit messages must follow the standard **Conventional Commit** pattern:

`<type>(<optional-scope>): <description>`

### Type Reference

| Type       | Description                             | Example                                             |
| :--------- | :-------------------------------------- | :-------------------------------------------------- |
| `feat`     | New feature or capability               | `feat(api): add health check endpoint`              |
| `fix`      | Bug fix or error resolution             | `fix(shared): resolve type export mismatch`         |
| `docs`     | Documentation changes                   | `docs(readme): add monorepo architecture guide`     |
| `style`    | Formatting or styling adjustments       | `style: standardize TypeScript import order`        |
| `refactor` | Code restructuring without logic change | `refactor(web): extract header component`           |
| `perf`     | Performance improvement                 | `perf(nx): optimize build output caching`           |
| `test`     | Adding or updating tests                | `test(api): add authentication mock tests`          |
| `build`    | Build system or dependency updates      | `build: update TypeScript target to ES2022`         |
| `ci`       | CI/CD workflow updates                  | `ci: add Node 24 matrix test and semantic PR check` |
| `chore`    | Tooling, configs, or maintenance        | `chore(trunk): track .trunk configs in Git`         |
| `revert`   | Reverting a previous commit             | `revert: undo experimental stream buffer`           |

---

## 🛠️ Step-by-Step Execution Workflow

### Step 1: Pre-flight Verification & Tests

Run all verification tools to ensure zero build errors, format violations, test failures, or lint issues:

```bash
# 1. Compile all workspace packages & apps
pnpm run build

# 2. Run all test suites
pnpm test

# 3. Format code with Trunk
pnpm run format

# 4. Lint and analyze workspace
pnpm run check
```

### Step 2: Git Branch & Push

1. Ensure changes are committed with Conventional Commit messages (`type(scope): description`).

2. Check current branch:

   ```bash
   git branch --show-current
   ```

   If on `main`, switch to a descriptive branch:

   ```bash
   git checkout -b <type>/<short-description>
   ```

3. Push branch to remote:

   ```bash
   git push -u origin <branch-name>
   ```

### Step 3: Create Pull Request with GitHub CLI (`gh`)

Use `gh pr create` with the Conventional Commit title and rich Markdown body.
