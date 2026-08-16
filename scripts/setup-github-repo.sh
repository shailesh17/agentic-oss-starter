#!/usr/bin/env bash
# ==============================================================================
# setup-repo-standards.sh
# 
# Opinionated automation script to apply best-practice open-source repository
# settings and modern branch rulesets to any GitHub repository using GitHub CLI.
#
# Usage:
#   ./scripts/setup-repo-standards.sh [owner/repo]
#
# Examples:
#   ./scripts/setup-repo-standards.sh
#   ./scripts/setup-repo-standards.sh shailesh17/mcp-httpserver-proxy
# ==============================================================================

set -euo pipefail

# Ensure gh CLI is available
if ! command -v gh &>/dev/null; then
  echo "❌ Error: GitHub CLI ('gh') is not installed or not in PATH."
  echo "   Install it via: brew install gh (or ensure ~/.brew/bin is in PATH)"
  exit 1
fi

# Determine target repository
REPO="${1:-$(gh repo view --json nameWithOwner -q .nameWithOwner 2>/dev/null || true)}"

if [[ -z "${REPO}" ]]; then
  echo "❌ Error: Could not detect repository from current directory."
  echo "   Please specify repo as argument: ./scripts/setup-repo-standards.sh owner/repo"
  exit 1
fi

echo "================================================================="
echo "🚀 Applying Opinionated Repository Standards to: ${REPO}"
echo "================================================================="

# ------------------------------------------------------------------------------
# 1. Repository Settings
# ------------------------------------------------------------------------------
echo ""
echo "⚙️ 1/3 Configuring General Repository Settings..."
gh repo edit "${REPO}" \
  --enable-squash-merge=true \
  --enable-merge-commit=false \
  --enable-rebase-merge=false \
  --delete-branch-on-merge=true \
  --enable-issues=true \
  --enable-projects=false \
  --enable-wiki=false

echo "   ✔ Squash-and-merge enforced (merge commits & rebase disabled)"
echo "   ✔ Auto-delete head branches after merge enabled"
echo "   ✔ Issues enabled"

# ------------------------------------------------------------------------------
# 2. Squash Commit Defaults (PR Title + Commit Details)
# ------------------------------------------------------------------------------
echo ""
echo "📝 2/3 Configuring Squash Commit Defaults (PR Title + Commit Details)..."
gh api --method PATCH "repos/${REPO}" \
  --field squash_merge_commit_title="PR_TITLE" \
  --field squash_merge_commit_message="COMMIT_MESSAGES" >/dev/null

echo "   ✔ Default squash commit title: Pull Request Title"
echo "   ✔ Default squash commit message: Commit details/messages (avoids polluting git log with PR templates)"

# ------------------------------------------------------------------------------
# 3. Modern Branch Ruleset for 'main'
# ------------------------------------------------------------------------------
echo ""
echo "🛡️ 3/3 Configuring 'main branch ruleset'..."

BRANCH_RULESET_NAME="main branch ruleset"

# Check if branch ruleset already exists
EXISTING_BRANCH_RULESET_ID=$(gh api "repos/${REPO}/rulesets" --jq ".[] | select(.name==\"${BRANCH_RULESET_NAME}\" or .name==\"Main Branch Standards\") | .id" 2>/dev/null || true)

BRANCH_RULESET_PAYLOAD=$(cat <<EOF
{
  "name": "${BRANCH_RULESET_NAME}",
  "target": "branch",
  "enforcement": "active",
  "conditions": {
    "ref_name": {
      "include": ["refs/heads/main"],
      "exclude": []
    }
  },
  "rules": [
    {
      "type": "deletion"
    },
    {
      "type": "non_fast_forward"
    },
    {
      "type": "required_linear_history"
    },
    {
      "type": "required_signatures"
    },
    {
      "type": "pull_request",
      "parameters": {
        "required_approving_review_count": 0,
        "dismiss_stale_reviews_on_push": true,
        "require_code_owner_review": false,
        "require_last_push_approval": false,
        "required_review_thread_resolution": true
      }
    },
    {
      "type": "required_status_checks",
      "parameters": {
        "strict_required_status_checks_policy": true,
        "required_status_checks": [
          {
            "context": "Build & Check (Node 22.x)"
          },
          {
            "context": "Build & Check (Node 24.x)"
          },
          {
            "context": "Trunk Check & Lint"
          }
        ]
      }
    }
  ]
}
EOF
)

if [[ -n "${EXISTING_BRANCH_RULESET_ID}" ]]; then
  echo "   Updating existing '${BRANCH_RULESET_NAME}' (ID: ${EXISTING_BRANCH_RULESET_ID})..."
  gh api --method PUT "repos/${REPO}/rulesets/${EXISTING_BRANCH_RULESET_ID}" \
    --header "Accept: application/vnd.github+json" \
    --input - <<< "${BRANCH_RULESET_PAYLOAD}" >/dev/null
else
  echo "   Creating new '${BRANCH_RULESET_NAME}'..."
  gh api --method POST "repos/${REPO}/rulesets" \
    --header "Accept: application/vnd.github+json" \
    --input - <<< "${BRANCH_RULESET_PAYLOAD}" >/dev/null
fi

echo "   ✔ Name set to: 'main branch ruleset'"
echo "   ✔ Direct pushes to 'main' restricted (Pull Request required)"
echo "   ✔ Force pushes & branch deletions blocked"
echo "   ✔ Linear history enforced"
echo "   ✔ Signed commits required (GPG / SSH verified)"
echo "   ✔ Required CI status checks: Node 22/24 build, Trunk lint"

echo ""
echo "================================================================="
echo "🎉 SUCCESS: ${REPO} is fully configured with open-source standards!"
echo "================================================================="
