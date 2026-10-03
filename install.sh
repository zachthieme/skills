#!/usr/bin/env bash
# Symlink every skill in ./skills into ~/.claude/skills.
# Safe to re-run; refuses to clobber a real (non-symlink) directory.
set -euo pipefail

repo="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
dest="${CLAUDE_SKILLS_DIR:-$HOME/.claude/skills}"
mkdir -p "$dest"

for skill in "$repo"/skills/*/; do
  name="$(basename "$skill")"
  target="$dest/$name"
  if [ -e "$target" ] && [ ! -L "$target" ]; then
    echo "skip  $name: $target exists and is not a symlink" >&2
    continue
  fi
  ln -sfn "${skill%/}" "$target"
  echo "link  $name -> $target"
done
