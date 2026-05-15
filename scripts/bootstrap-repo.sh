#!/usr/bin/env bash

set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "Usage: scripts/bootstrap-repo.sh /path/to/target-repo" >&2
  exit 1
fi

SOURCE_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TARGET_ROOT="$(cd "$1" && pwd)"

copy_if_missing() {
  local src="$1"
  local dst="$2"
  if [[ -e "$dst" ]]; then
    echo "skip: $dst already exists"
    return 0
  fi
  mkdir -p "$(dirname "$dst")"
  cp "$src" "$dst"
  echo "copy: $dst"
}

mkdir -p \
  "$TARGET_ROOT/.agents" \
  "$TARGET_ROOT/docs/ai/modules" \
  "$TARGET_ROOT/docs/ai/templates" \
  "$TARGET_ROOT/docs/operations" \
  "$TARGET_ROOT/docs/specs" \
  "$TARGET_ROOT/docs/plans"

copy_if_missing "$SOURCE_ROOT/.agents/templates/AGENTS.md" \
  "$TARGET_ROOT/AGENTS.md"
copy_if_missing "$SOURCE_ROOT/.agents/templates/agent-assets.md" \
  "$TARGET_ROOT/.agents/README.md"
copy_if_missing "$SOURCE_ROOT/.agents/templates/project-overview.md" \
  "$TARGET_ROOT/docs/ai/project-overview.md"
copy_if_missing "$SOURCE_ROOT/.agents/templates/reference-repos.md" \
  "$TARGET_ROOT/docs/ai/reference-repos.md"
copy_if_missing "$SOURCE_ROOT/.agents/templates/roadmap.md" \
  "$TARGET_ROOT/docs/roadmap.md"
copy_if_missing "$SOURCE_ROOT/.agents/templates/harness-workflow.md" \
  "$TARGET_ROOT/docs/ai/harness-workflow.md"
copy_if_missing "$SOURCE_ROOT/.agents/templates/delivery-checklist.md" \
  "$TARGET_ROOT/docs/ai/templates/delivery-checklist.md"
copy_if_missing "$SOURCE_ROOT/.agents/templates/session-handoff.md" \
  "$TARGET_ROOT/docs/operations/session-handoff.md"

echo
echo "Bootstrap complete for: $TARGET_ROOT"
echo "Next:"
echo "  1. customize AGENTS.md"
echo "  2. keep .agents/README.md as a thin asset-layer guide"
echo "  3. fill docs/ai/project-overview.md"
echo "  4. add module docs under docs/ai/modules/"
echo "  5. update docs/roadmap.md"
echo "  6. if adoption teaches you something, open an issue in Team-Cyan/harness-agent-kit"
