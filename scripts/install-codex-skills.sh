#!/usr/bin/env bash
set -euo pipefail

FORCE=0
if [[ "${1:-}" == "--force" ]]; then
  FORCE=1
fi

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SRC_DIR="$REPO_ROOT/codex-skills"
DEST_ROOT="${CODEX_HOME:-$HOME/.codex}/skills"

if [[ ! -d "$SRC_DIR" ]]; then
  echo "Missing source skills directory: $SRC_DIR" >&2
  exit 1
fi

mkdir -p "$DEST_ROOT"

installed=0
skipped=0

for skill_dir in "$SRC_DIR"/*; do
  [[ -d "$skill_dir" ]] || continue
  skill_name="$(basename "$skill_dir")"
  dest="$DEST_ROOT/$skill_name"

  if [[ -e "$dest" && "$FORCE" -eq 0 ]]; then
    echo "Skipping $skill_name (already exists at $dest). Use --force to overwrite."
    skipped=$((skipped + 1))
    continue
  fi

  if [[ -e "$dest" && "$FORCE" -eq 1 ]]; then
    rm -rf "$dest"
  fi

  cp -R "$skill_dir" "$dest"
  echo "Installed $skill_name -> $dest"
  installed=$((installed + 1))
done

echo
echo "Install complete: $installed installed, $skipped skipped."
echo "Restart Codex to pick up new skills."
