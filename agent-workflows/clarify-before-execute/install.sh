#!/usr/bin/env bash
set -euo pipefail

WITH_ECC=0
DRY_RUN=0

for arg in "$@"; do
  case "$arg" in
    --with-ecc) WITH_ECC=1 ;;
    --dry-run) DRY_RUN=1 ;;
    *) echo "Unknown argument: $arg" >&2; exit 1 ;;
  esac
done

info() {
  printf '[Byte-Brane] %s\n' "$1"
}

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILL_SOURCE="$SCRIPT_DIR/skills/clarify-before-execute"
TARGET_ROOT="$HOME/.codex/skills"
TARGET="$TARGET_ROOT/clarify-before-execute"

info "Installing core Skill: clarify-before-execute"
info "Source: $SKILL_SOURCE"
info "Target: $TARGET"

if [[ "$DRY_RUN" == "1" ]]; then
  info "Dry run: no files will be copied."
else
  [[ -d "$SKILL_SOURCE" ]] || { echo "Skill source not found: $SKILL_SOURCE" >&2; exit 1; }
  mkdir -p "$TARGET_ROOT"
  rm -rf "$TARGET"
  cp -R "$SKILL_SOURCE" "$TARGET"
  info "Installed clarify-before-execute."
fi

if [[ "$WITH_ECC" == "1" ]]; then
  info "ECC upstream source: https://github.com/affaan-m/everything-claude-code"
  info "Suggested upstream command: npx -y ecc-universal"
  info "This repository does not vendor ECC Skills. Verify upstream instructions and license before installing."
  if [[ "$DRY_RUN" != "1" ]]; then
    read -r -p "Run 'npx -y ecc-universal' now? Type YES to continue: " answer
    if [[ "$answer" == "YES" ]]; then
      npx -y ecc-universal
    else
      info "Skipped ECC install."
    fi
  fi
fi

info "Done. To use it, ask Codex: 'Use the clarify-before-execute workflow for this task.'"

