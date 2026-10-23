#!/usr/bin/env bash
# Sync shared reference files into each skill.
#
# Why: each skill must be installable on its own, so each needs its own copy
# of the shared rubric files. Copies drift if edited by hand. Edit files in
# /shared only, then run this script.
#
# Usage:
#   scripts/sync.sh          copy shared files into every skill
#   scripts/sync.sh --check  exit non-zero if any copy differs (use in CI)

set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SHARED="$ROOT/shared"
SKILLS=("portfolio-review-ic" "portfolio-review-leadership")

status=0
for skill in "${SKILLS[@]}"; do
  dest="$ROOT/skills/$skill/references"
  mkdir -p "$dest"
  for file in "$SHARED"/*.md; do
    name="$(basename "$file")"
    if [[ "${1:-}" == "--check" ]]; then
      if ! cmp -s "$file" "$dest/$name"; then
        echo "Out of sync: skills/$skill/references/$name"
        status=1
      fi
    else
      cp "$file" "$dest/$name"
      echo "Copied $name -> skills/$skill/references/"
    fi
  done
done

if [[ "${1:-}" == "--check" && $status -eq 0 ]]; then
  echo "All shared files in sync."
fi
exit $status
