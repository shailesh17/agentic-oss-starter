# Contributing to agentic-oss-starter

Thank you for your interest in contributing! This project is designed from the ground up to support **100% AI-native development**.

---

## 🏗️ Development Setup

Ensure you have the following installed on your machine:

- **[Node.js](https://nodejs.org/)**: Version 22 LTS or later (Node 22 or Node 24).
- **[pnpm](https://pnpm.io/)**: Version 9 or 11 (recommended package manager).
- **[GitHub CLI (gh)](https://cli.github.com/)**: For automated PR creation via AI.
- **[Git](https://git-scm.com/)**

```bash
# 1. Clone your repository
git clone https://github.com/shailesh17/agentic-oss-starter.git
cd agentic-oss-starter

# 2. Install dependencies
pnpm install

# 3. Install Trunk CLI (linters & formatters)
curl https://get.trunk.io -fsSL | bash
trunk init
```

---

## 🌿 Branching Model & Single-Trunk Strategy

We follow a **Single-Trunk Git Workflow**:

1. **`main` is protected**: Direct pushes to `main` are restricted. All changes merge through Pull Requests.
2. **Feature branches**: Create short-lived feature branches (`feat/my-feature`, `fix/issue-description`, `docs/update-readme`).
3. **Squash and Merge**: Pull Requests are merged as single, clean squash commits.

---

## 📝 Commit Standards (Conventional Commits)

We use GitHub's **Squash and Merge** strategy. Enforcing conventional commit formats guarantees a clean, automated release history and changelog.

### Format

```text
<type>(<optional scope>): <description>

[optional body]

[optional footer(s)]
```

### Allowed Types

| Type       | Description                                                 | Example                                       |
| :--------- | :---------------------------------------------------------- | :-------------------------------------------- |
| `feat`     | A new feature or capability                                 | `feat(api): add health check endpoint ✨`     |
| `fix`      | A bug fix                                                   | `fix(transport): handle stream disconnect 🐛` |
| `docs`     | Documentation changes only                                  | `docs(readme): add installation guide 📝`     |
| `style`    | Formatting, missing semicolons, etc.                        | `style: format imports 🎨`                    |
| `refactor` | Code restructuring without fixing a bug or adding a feature | `refactor: extract helper module ♻️`          |
| `perf`     | Performance improvements                                    | `perf: cache parsed AST tree 🚀`              |
| `test`     | Adding or updating tests                                    | `test: add unit tests 🧪`                     |
| `build`    | Build system or dependency updates                          | `build: update TypeScript compiler target 📦` |
| `ci`       | CI configuration files or scripts                           | `ci: add Node 24 to matrix test 👷`           |
| `chore`    | Routine maintenance tasks                                   | `chore: update dependencies 🔧`               |
| `revert`   | Reverting a previous commit                                 | `revert: undo experimental changes ⏪`        |

---

## 🚀 Submitting a Pull Request (AI Flow)

1. Create a branch: `git checkout -b <type>/<short-description>`.
2. Make your changes and verify with `pnpm run build`, `pnpm run format`, and `pnpm run check`.
3. Commit using Conventional Commits: `git commit -m "feat: implement my feature"`.
4. Push and open PR with GitHub CLI:
   ```bash
   gh pr create --title "feat: implement my feature" --body-file .github/PULL_REQUEST_TEMPLATE.md
   ```
