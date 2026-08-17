<div align="center">

# Agentic OSS Starter 🚀

**Production-ready GitHub Template Repository for 100% AI-Native Polyglot Monorepos (TypeScript + Python + Go)**

<p align="center">
  <a href="https://github.com/shailesh17/agentic-oss-starter/actions/workflows/ci.yml">
    <img src="https://github.com/shailesh17/agentic-oss-starter/actions/workflows/ci.yml/badge.svg" alt="CI Status" />
  </a>
  <a href="https://gitlab.com/shaileshpatel17/agentic-oss-starter/-/pipelines">
    <img src="https://img.shields.io/badge/GitLab%20CI-passing-orange.svg?logo=gitlab&logoColor=white" alt="GitLab CI Status" />
  </a>
  <a href="https://claude.ai">
    <img src="https://img.shields.io/badge/Claude-Code%20Ready-D97706.svg?logo=anthropic&logoColor=white" alt="Claude Code Ready" />
  </a>
  <a href="https://deepmind.google/technologies/gemini/">
    <img src="https://img.shields.io/badge/Gemini-Supported-4285F4.svg?logo=google&logoColor=white" alt="Gemini Supported" />
  </a>
  <a href="https://github.com/features/copilot">
    <img src="https://img.shields.io/badge/Copilot%20%26%20Cursor-Configured-00ADD8.svg?logo=githubcopilot&logoColor=white" alt="Copilot & Cursor Configured" />
  </a>
  <a href="https://github.com/shailesh17/agentic-oss-starter/blob/main/LICENSE">
    <img src="https://img.shields.io/badge/License-MIT-blue.svg" alt="License: MIT" />
  </a>
  <a href="https://nodejs.org">
    <img src="https://img.shields.io/badge/Node.js-%3E%3D22.13.0-brightgreen.svg?logo=nodedotjs&logoColor=white" alt="Node.js Version" />
  </a>
  <a href="https://python.org">
    <img src="https://img.shields.io/badge/Python-3.10+-3776AB.svg?logo=python&logoColor=white" alt="Python Version" />
  </a>
  <a href="https://go.dev">
    <img src="https://img.shields.io/badge/Go-1.22+-00ADD8.svg?logo=go&logoColor=white" alt="Go Version" />
  </a>
  <a href="https://pnpm.io">
    <img src="https://img.shields.io/badge/pnpm-11.x-orange.svg?logo=pnpm&logoColor=white" alt="pnpm" />
  </a>
  <a href="https://nx.dev">
    <img src="https://img.shields.io/badge/Nx-Polyglot%20Monorepo-143055.svg?logo=nx&logoColor=white" alt="Nx Monorepo" />
  </a>
  <a href="https://trunk.io">
    <img src="https://img.shields.io/badge/Trunk-Checked-blueviolet.svg?logo=trunk&logoColor=white" alt="Trunk Check" />
  </a>
  <a href="https://www.conventionalcommits.org">
    <img src="https://img.shields.io/badge/Conventional%20Commits-1.0.0-yellow.svg?logo=conventionalcommits&logoColor=white" alt="Conventional Commits" />
  </a>
</p>

<p align="center">
  <img src="./assets/social-preview.jpg" alt="Agentic OSS Starter Hero Banner" width="100%" style="border-radius: 10px;" />
</p>

<p align="center">
  <a href="#-quick-start-in-10-seconds">Quick Start</a> •
  <a href="#-why-agentic-oss-starter">Why Agentic OSS?</a> •
  <a href="#-polyglot-monorepo-architecture">Polyglot Architecture</a> •
  <a href="#-standard-common-build-language">Common Build Language</a> •
  <a href="#-features--capabilities">Features</a> •
  <a href="#-ai-native-pairing-workflow">AI Pairing</a> •
  <a href="#-gitlab-dual-presence--gpg-mirroring">GitLab Mirror</a>
</p>

</div>

---

## 💡 Why Agentic OSS Starter?

Modern production systems are inherently **polyglot** and built with **AI-native pair programming**:

- **TypeScript** powers interactive user interfaces and web applications.
- **Python** drives AI agents, LLM toolchains, data processing, and FastAPI/MCP servers.
- **Go** delivers ultra-low-latency networking proxies, microservices, and API gateways.

However, organizing multiple languages into a single cohesive monorepo usually brings massive configuration friction across package managers, linters, and CI pipelines.

**`agentic-oss-starter` unifies TypeScript, Python, and Go under a single local task orchestrator in under 10 seconds.**

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

## 🏗️ Polyglot Monorepo Architecture

This template utilizes **pnpm workspaces** combined with **local Nx task orchestration** (with Nx Cloud telemetry explicitly disabled for 100% privacy and zero external dependencies).

```text
agentic-oss-starter/
├── apps/
│   ├── web/                    # 🌐 TypeScript Frontend Application (React / Vite)
│   │   ├── package.json        # Name: @agentic/web
│   │   ├── tsconfig.json
│   │   ├── src/index.ts
│   │   └── test/web.test.ts
│   ├── api/                    # 🔌 TypeScript Backend Service / MCP Server
│   │   ├── package.json        # Name: @agentic/api
│   │   ├── tsconfig.json
│   │   ├── src/index.ts
│   │   └── test/api.test.ts
│   ├── ai-service/             # 🐍 Python AI / Data / Prompt Microservice
│   │   ├── package.json        # Bridges Python to Nx tasks
│   │   ├── pyproject.toml      # PEP 621 Python project config
│   │   ├── src/main.py
│   │   └── test/test_service.py
│   └── gateway/                # 🐹 Go High-Performance Microservice / Proxy
│       ├── package.json        # Bridges Go to Nx tasks
│       ├── go.mod              # Go module definition
│       ├── main.go
│       └── main_test.go
├── packages/
│   └── shared/                 # 📦 Shared TypeScript Contracts & Schemas
│       ├── package.json        # Name: @agentic/shared
│       ├── tsconfig.json
│       ├── src/index.ts
│       └── test/shared.test.ts
├── .agents/
│   └── skills/
│       └── create-pr/SKILL.md  # Automated rich AI PR workflow
├── .github/
│   ├── workflows/
│   │   ├── ci.yml              # Matrix CI (Node 22/24 + Python + Go) with Trunk
│   │   ├── semantic-pr.yml     # Conventional Commits PR title linter
│   │   └── release.yml         # Automated release notes drafter
│   ├── PULL_REQUEST_TEMPLATE.md
│   ├── copilot-instructions.md
│   └── dependabot.yml          # Consolidated weekly dependency updates
├── .gitlab-ci.yml              # GitLab CI pipeline for dual GitHub/GitLab presence
├── .trunk/                     # Polyglot linting suite (Prettier, Actionlint, Markdownlint, Yamllint)
├── assets/                     # Social preview & branding assets
├── scripts/
│   ├── setup-github-repo.sh    # One-command GitHub settings & branch ruleset setup
│   └── mirror-to-gitlab.sh     # One-command GitLab mirror with GPG signature preservation
├── CLAUDE.md                   # Anthropic Claude Code CLI memory & instructions
├── nx.json                     # Local Nx workspace task graph & cache config
├── pnpm-workspace.yaml         # Defines workspace package layout
├── package.json                # Root package.json with unified orchestration scripts
├── tsconfig.json               # Base TypeScript compiler options
├── AGENTS.md & GEMINI.md       # AI agent pairing guidelines
├── CONTRIBUTING.md             # Contributor guide
├── LICENSE                     # MIT License
└── README.md                   # Complete documentation
```

---

## 🎯 Standard "Common Build Language"

Every project inside `apps/*` and `packages/*` exposes standard scripts in its `package.json` that bridge to its native toolchain:

| Target      | TypeScript (`apps/web`, `api`, `shared`) | Python (`apps/ai-service`) | Go (`apps/gateway`)        |
| :---------- | :--------------------------------------- | :------------------------- | :------------------------- |
| **`build`** | `tsc`                                    | `python3 -m py_compile`    | `go build -o dist/gateway` |
| **`test`**  | `node --test`                            | `python3 -m unittest`      | `go test -v ./...`         |
| **`dev`**   | `tsc -w`                                 | `python3 src/main.py`      | `go run main.go`           |

### Unified Root Commands:

```bash
# Compile all 5 tiers (TS + Python + Go) respecting topological dependency order
pnpm run build

# Run all test suites in parallel across Node, Python unittest, and Go test
pnpm test

# Run all services concurrently in development mode
pnpm run dev

# Run linters across all workspace files
pnpm run check

# Auto-format all code
pnpm run format

# Run tests ONLY for packages affected by your current Git branch
pnpm run affected:test
```

---

## ➕ Adding More Languages or Services

Adding a new language (e.g. Rust, Java, or C#) is as simple as adding a folder with a `package.json` hook:

### Adding Rust (Cargo):

```json
{
  "name": "@agentic/rust-engine",
  "version": "0.1.0",
  "scripts": {
    "build": "cargo build --release",
    "test": "cargo test",
    "dev": "cargo run"
  }
}
```

---

## 📦 Features & Capabilities

| Feature                         | Description                                                                       | File / Tool                                                              |
| :------------------------------ | :-------------------------------------------------------------------------------- | :----------------------------------------------------------------------- |
| **🌐 Polyglot Support**         | First-class TypeScript, Python, and Go project scaffolding                        | `apps/*`, `packages/*`                                                   |
| **⚡ Local Nx Monorepo**        | Task caching, topological builds, and affected commands with zero cloud telemetry | `nx.json`, `pnpm-workspace.yaml`                                         |
| **🤖 AI Agent Guidelines**      | Comprehensive pairing rules, stdout stream hygiene, and prompt runbooks           | `AGENTS.md`, `GEMINI.md`, `CLAUDE.md`, `.github/copilot-instructions.md` |
| **⚡ AI PR Creation Skill**     | Automated rich Markdown PR generator with verification & checklist                | `.agents/skills/create-pr/SKILL.md`                                      |
| **🧪 Multi-Node Matrix CI**     | Automated builds & tests across Node 22.x & 24.x, Python 3.12, and Go 1.22        | `.github/workflows/ci.yml`                                               |
| **📝 Semantic PR Validation**   | Enforces Conventional Commits specification on PR titles                          | `.github/workflows/semantic-pr.yml`                                      |
| **🏷️ Release Drafter**          | Automatically drafts release notes categorized by Conventional Commits            | `.github/workflows/release.yml`                                          |
| **🦊 GitLab CI/CD Pipeline**    | Dual-platform CI pipeline ready for GitLab mirroring with zero config             | `.gitlab-ci.yml`, `scripts/mirror-to-gitlab.sh`                          |
| **🔐 GPG Mirror Verification**  | Automatically signs mirrored commits with personal GPG keys on GitLab             | `scripts/mirror-to-gitlab.sh`                                            |
| **🛡️ Automated Repo Rules**     | One-command setup for squash merging, linear history, and branch rulesets         | `scripts/setup-github-repo.sh`                                           |
| **🧹 Zero Global Dependencies** | Trunk launcher, TypeScript, Nx, and Commitlint run locally via `node_modules`     | `.trunk/trunk.yaml`, `package.json`                                      |
| **🤖 Consolidated Dependabot**  | Groups weekly updates into unified PRs, preventing rebasing cascades              | `.github/dependabot.yml`                                                 |

---

## 🤖 AI-Native Pairing Workflow

This template is configured to instruct AI agents how to contribute safely and effectively across all workspace tiers.

### 📚 Agent Configuration Files

| File                                  | Target AI Tool / Platform  | Purpose                                                         |
| :------------------------------------ | :------------------------- | :-------------------------------------------------------------- |
| **`CLAUDE.md`**                       | Anthropic Claude Code CLI  | Session instructions, polyglot task commands, and rules.        |
| **`AGENTS.md`**                       | All Coding Agents          | Monorepo architecture, polyglot task contract, and PR workflow. |
| **`GEMINI.md`**                       | Antigravity / Gemini IDE   | Workspace instructions and automated PR standards.              |
| **`.github/copilot-instructions.md`** | GitHub Copilot & Cursor    | Coding conventions, polyglot guidelines, and tooling commands.  |
| **`.agents/skills/create-pr/`**       | Antigravity / AI Subagents | Automated PR creation runbook & rich Markdown generator.        |

### 💬 Ready-to-Use Agent Prompt

Copy and paste this prompt when instructing your AI assistant:

```text
Please implement [feature/fix description].
1. Follow the polyglot monorepo guidelines in AGENTS.md and CLAUDE.md.
2. Verify with `pnpm run build`, `pnpm test`, `pnpm run format`, and `pnpm run check`.
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
- **Clean Commit Titles**: Sets default squash commit title to the PR Title and body to commit details.
- **Modern Branch Ruleset (`main`)**:
  - Direct pushes to `main` restricted (Pull Requests required).
  - Force pushes and branch deletions blocked.
  - Linear history required.
  - Signed commits required (GPG / SSH verified).
  - Required CI status checks: Node 22 Build & Check, Node 24 Build & Check, Trunk Lint, Semantic PR Title.

---

## 📝 Conventional Commits Specification

All commit messages and Pull Request titles follow standard [Conventional Commits](https://www.conventionalcommits.org/):

`<type>(<optional scope>): <description>`

| Type       | Description                                                 | Example                                    |
| :--------- | :---------------------------------------------------------- | :----------------------------------------- |
| `feat`     | A new feature or capability                                 | `feat(gateway): add proxy route`           |
| `fix`      | A bug fix                                                   | `fix(ai-service): handle empty prompt`     |
| `docs`     | Documentation changes only                                  | `docs(readme): add polyglot guide`         |
| `style`    | Formatting, missing semicolons, etc.                        | `style: format imports with Prettier`      |
| `refactor` | Code restructuring without fixing a bug or adding a feature | `refactor(shared): extract string utility` |
| `perf`     | Performance improvements                                    | `perf(nx): optimize cache outputs`         |
| `test`     | Adding or updating tests                                    | `test(gateway): add status handler test`   |
| `build`    | Build system or dependency updates                          | `build: bump typescript to 5.7.2`          |
| `ci`       | CI configuration files or scripts                           | `ci: add setup-go and setup-python`        |
| `chore`    | Routine maintenance tasks                                   | `chore(trunk): sync linter configs`        |
| `revert`   | Reverting a previous commit                                 | `revert: undo experimental cache`          |

---

## 📄 License

This project is licensed under the [MIT License](./LICENSE).
