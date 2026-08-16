#!/usr/bin/env bash
# ==============================================================================
# mirror-to-gitlab.sh
# 
# Automatically mirrors the current Git repository to a matching GitLab repository.
#
# Usage:
#   ./scripts/mirror-to-gitlab.sh [gitlab-username/repo]
#
# Examples:
#   ./scripts/mirror-to-gitlab.sh
#   ./scripts/mirror-to-gitlab.sh shailesh17/agentic-oss-starter
# ==============================================================================

set -euo pipefail

GITLAB_REPO="${1:-}"

if [[ -z "${GITLAB_REPO}" ]]; then
  # Infer repo name from current git remote
  GITHUB_NAME=$(git config --get remote.origin.url | sed -E 's/.*[\/:]([^\/]+\/[^\/\.]+)(\.git)?$/\1/')
  GITLAB_REPO="${GITHUB_NAME}"
fi

echo "🦊 Configuring GitLab Mirror for: ${GITLAB_REPO}..."

# Check if gitlab remote already exists
if git remote | grep -q "^gitlab$"; then
  echo "   Updating existing 'gitlab' remote URL..."
  git remote set-url gitlab "git@gitlab.com:${GITLAB_REPO}.git"
else
  echo "   Adding new 'gitlab' remote..."
  git remote add gitlab "git@gitlab.com:${GITLAB_REPO}.git"
fi

echo "🚀 Pushing all branches and tags to GitLab..."
git push gitlab --all --force
git push gitlab --tags --force

echo "✅ Successfully synced to GitLab: https://gitlab.com/${GITLAB_REPO}"
