<div align="center">

# Agentic OSS Starter 🚀

**Production-ready GitHub Template Repository for 100% AI-Native Open-Source Development**

<p align="center">
  <a href="https://github.com/shailesh17/agentic-oss-starter/actions/workflows/ci.yml">
    <img src="https://github.com/shailesh17/agentic-oss-starter/actions/workflows/ci.yml/badge.svg" alt="CI Status" />
  </a>
  <a href="https://gitlab.com/shaileshpatel17/agentic-oss-starter/-/pipelines">
    <img src="https://img.shields.io/badge/GitLab%20CI-passing-orange.svg?logo=gitlab" alt="GitLab CI Status" />
  </a>
  <a href="https://github.com/shailesh17/agentic-oss-starter/blob/main/LICENSE">
    <img src="https://img.shields.io/badge/License-MIT-blue.svg" alt="License: MIT" />
  </a>
  <a href="https://nodejs.org">
    <img src="https://img.shields.io/badge/Node.js-%3E%3D22.13.0-brightgreen.svg" alt="Node.js Version" />
  </a>
  <a href="https://pnpm.io">
    <img src="https://img.shields.io/badge/pnpm-11.x-orange.svg" alt="pnpm" />
  </a>
  <a href="https://trunk.io">
    <img src="https://img.shields.io/badge/Trunk-Checked-blueviolet.svg" alt="Trunk Check" />
  </a>
  <a href="https://www.conventionalcommits.org">
    <img src="https://img.shields.io/badge/Conventional%20Commits-1.0.0-yellow.svg" alt="Conventional Commits" />
  </a>
</p>

<p align="center">
  <img src="./assets/social-preview.jpg" alt="Agentic OSS Starter Hero Banner" width="100%" style="border-radius: 10px;" />
</p>

<p align="center">
  <a href="#-quick-start-in-10-seconds">Quick Start</a> •
  <a href="#-why-agentic-oss-starter">Why Agentic OSS?</a> •
  <a href="#-features--capabilities">Features</a> •
  <a href="#-ai-native-pairing-workflow">AI Pairing</a> •
  <a href="#-gitlab-dual-presence--gpg-mirroring">GitLab Mirror</a> •
  <a href="#-repository-standards--rulesets">Rulesets</a> •
  <a href="#-contributing">Contributing</a>
</p>

</div>

---

## 💡 Why Agentic OSS Starter?

Software development has fundamentally shifted to **AI-native pair-programming**. AI agents ([Antigravity](https://github.com/shailesh17/mcp-httpserver-proxy), [Cursor](https://www.cursor.com/), [Claude Code](https://claude.ai/), [GitHub Copilot](https://github.com/features/copilot)) write code, run tests, and open Pull Requests.

However, spinning up a new open-source repository typically requires **hours of repetitive boilerplate setup**:

- Configuring TypeScript compilers, ESM modules, and pnpm lockfile hygiene.
- Writing CI/CD matrix workflows across multiple Node versions.
- Configuring linters, formatters, and Git hooks.
- Setting up Conventional Commits and semantic PR validation.
- Configuring branch protection rules, squash merge defaults, and GPG verification.
- Establishing pairing prompt runbooks and PR templates for AI agents.

**`agentic-oss-starter` solves this permanently.** In under **10 seconds**, you can spin up a production-ready, fully automated repository with world-class engineering standards.

---

## ⚡ Quick Start in 10 Seconds

### Step 1: Initialize Your New Repository from this Template

```bash
# Create and clone a new repository using this template
gh repo create my-awesome-project --template shailesh17/agentic-oss-starter --public --clone
cd my-awesome-project
```

### Step 2: Apply Opinionated GitHub Standards & Branch Rulesets

```bash
# Enforces squash-and-merge, PR title defaults, signed commits, linear history, and CI status checks
./scripts/setup-github-repo.sh
```

### Step 3: (Optional) Mirror to GitLab with Verified GPG Commits

```bash
# Syncs your new repository to GitLab for dual-presence with automated GPG signing
./scripts/mirror-to-gitlab.sh
```

---

## 📦 Features & Capabilities

| Feature                         | Description                                                               | File / Tool                                                 |
| :------------------------------ | :------------------------------------------------------------------------ | :---------------------------------------------------------- |
| **🤖 AI Agent Guidelines**      | Comprehensive pairing rules, stdout stream hygiene, and prompt runbooks   | `AGENTS.md`, `GEMINI.md`, `.github/copilot-instructions.md` |
| **⚡ AI PR Creation Skill**     | Automated rich Markdown PR generator with verification & checklist        | `.agents/skills/create-pr/SKILL.md`                         |
| **🧪 Multi-Node Matrix CI**     | Automated builds & tests across Node 22.x & 24.x with pnpm cache          | `.github/workflows/ci.yml`                                  |
| **📝 Semantic PR Validation**   | Enforces Conventional Commits specification on PR titles                  | `.github/workflows/semantic-pr.yml`                         |
| **🏷️ Release Drafter**          | Automatically drafts release notes categorized by Conventional Commits    | `.github/workflows/release.yml`                             |
| **🦊 GitLab CI/CD Pipeline**    | Dual-platform CI pipeline ready for GitLab mirroring with zero config     | `.gitlab-ci.yml`, `scripts/mirror-to-gitlab.sh`             |
| **🔐 GPG Mirror Verification**  | Automatically signs mirrored commits with personal GPG keys on GitLab     | `scripts/mirror-to-gitlab.sh`                               |
| **🛡️ Automated Repo Rules**     | One-command setup for squash merging, linear history, and branch rulesets | `scripts/setup-github-repo.sh`                              |
| **🧹 Zero Global Dependencies** | Trunk launcher, TypeScript, and Commitlint run locally via `node_modules` | `.trunk/trunk.yaml`, `package.json`                         |
| **🤖 Consolidated Dependabot**  | Groups weekly updates into unified PRs, preventing rebasing cascades      | `.github/dependabot.yml`                                    |

---

## 🏗️ Architecture & Project Structure

```text
agentic-oss-starter/
├── .agents/
│   └── skills/
│       └── create-pr/SKILL.md      # Automated rich AI PR workflow
├── .github/
│   ├── workflows/
│   │   ├── ci.yml                  # Matrix testing (Node 22/24) with pnpm & Trunk
│   │   ├── semantic-pr.yml         # Conventional Commits PR title linter
│   │   └── release.yml             # Automated release notes drafter
│   ├── PULL_REQUEST_TEMPLATE.md    # Rich AI-native PR template (What, Why, How to Test, Logs)
│   ├── copilot-instructions.md     # Cursor / Copilot instructions
│   └── dependabot.yml              # Consolidated weekly dependency groups
├── .gitlab-ci.yml                  # GitLab CI pipeline for dual GitHub/GitLab presence
├── .trunk/                         # Trunk linter suite (Prettier, Actionlint, Markdownlint, Yamllint)
├── assets/                         # Social preview & branding assets
├── scripts/
│   ├── setup-github-repo.sh        # One-command GitHub settings & branch ruleset setup
│   └── mirror-to-gitlab.sh         # One-command GitLab mirror with GPG signature preservation
├── src/
│   └── index.ts                    # TypeScript entrypoint
├── commitlint.config.js            # Conventional Commits validator
├── package.json                    # Modern TypeScript, ESM, pnpm 11, format & check scripts
├── tsconfig.json                   # Strict TypeScript compiler config
├── .nvmrc                          # Node 22 LTS
├── AGENTS.md & GEMINI.md           # Agent pairing guidelines
├── CONTRIBUTING.md                 # Open-source contributor workflow
├── LICENSE                         # MIT License
└── README.md                       # Complete documentation
```

---

## 🤖 AI-Native Pairing Workflow

This template is configured to instruct AI agents how to contribute safely and effectively.

### 📚 Agent Configuration Files

| File                                  | Target Agent / IDE         | Purpose                                                                |
| :------------------------------------ | :------------------------- | :--------------------------------------------------------------------- |
| **`AGENTS.md`**                       | All Coding Agents          | Architecture overview, constraints, package manager, and commit rules. |
| **`GEMINI.md`**                       | Antigravity / Gemini IDE   | Workspace instructions and automated PR standards.                     |
| **`.github/copilot-instructions.md`** | GitHub Copilot & Cursor    | Coding conventions, strict mode rules, and tooling commands.           |
| **`.agents/skills/create-pr/`**       | Antigravity / AI Subagents | Automated PR creation runbook & rich Markdown generator.               |

### 💬 Ready-to-Use Agent Prompt

Copy and paste this prompt when instructing your AI assistant:

```text
Please implement [feature/fix description].
1. Follow the guidelines in AGENTS.md.
2. Verify with `pnpm run build`, `pnpm run format`, and `pnpm run check`.
3. Open a Pull Request using the workflow in `.agents/skills/create-pr/SKILL.md`.
```

---

## 🦊 GitLab Dual-Presence & GPG Mirroring

Maintain an active presence on both **GitHub** and **GitLab** with zero duplicate maintenance.

### One-Command Sync:

```bash
./scripts/mirror-to-gitlab.sh
```

**How it works:**

1. Ensures the project exists on your GitLab profile via `glab`.
2. Automatically signs the commit payload with your local GPG key (`git commit-tree`).
3. Pushes `main` and all tags to GitLab with force-update permissions for perfect mirror fidelity.
4. Triggers the GitLab CI pipeline (`.gitlab-ci.yml`).
5. Commits display the green **"Verified"** badge on GitLab!

---

## 🛡️ Repository Standards & Rulesets

Running `./scripts/setup-github-repo.sh` applies GitHub standards via GitHub CLI:

- **Squash-and-Merge Enforcement**: Disables merge commits and rebase merges to maintain a clean linear Git history.
- **Clean Commit Titles**: Sets default squash commit title to the PR Title and body to commit details (preventing PR template clutter in git logs).
- **Modern Branch Ruleset (`main`)**:
  - Direct pushes to `main` restricted (Pull Requests required).
  - Force pushes and branch deletions blocked.
  - Linear history required.
  - Signed commits required (GPG / SSH verified).
  - Required CI status checks: Node 22 Build, Node 24 Build, Trunk Lint, Semantic PR Title.

---

## 🛠️ Essential Command Flow

```bash
# 1. Install dependencies
pnpm install

# 2. Compile TypeScript
pnpm run build

# 3. Development watch mode
pnpm run dev

# 4. Format all files (Prettier via Trunk)
pnpm run format

# 5. Lint workspace (Trunk check)
pnpm run check
```

---

## 📝 Conventional Commits Specification

All commit messages and Pull Request titles follow standard [Conventional Commits](https://www.conventionalcommits.org/):

`<type>(<optional scope>): <description>`

| Type       | Description                                                 |
| :--------- | :---------------------------------------------------------- |
| `feat`     | A new feature or capability                                 |
| `fix`      | A bug fix                                                   |
| `docs`     | Documentation changes only                                  |
| `style`    | Formatting, missing semicolons, etc.                        |
| `refactor` | Code restructuring without fixing a bug or adding a feature |
| `perf`     | Performance improvements                                    |
| `test`     | Adding or updating tests                                    |
| `build`    | Build system or dependency updates                          |
| `ci`       | CI configuration files or scripts                           |
| `chore`    | Routine maintenance tasks                                   |
| `revert`   | Reverting a previous commit                                 |

---

## 📄 License

This project is licensed under the [MIT License](./LICENSE).
