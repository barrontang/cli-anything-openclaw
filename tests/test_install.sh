#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
TMPDIR="$(mktemp -d)"
cleanup() { rm -rf "$TMPDIR"; }
trap cleanup EXIT

bash "$ROOT/scripts/install-to-workspace.sh" "$TMPDIR"
TARGET="$TMPDIR/skills/cli-anything/SKILL.md"

[ -f "$TARGET" ]
grep -q '^---' "$TARGET"
grep -q '^name: cli-anything$' "$TARGET"
grep -q '^description:' "$TARGET"
grep -q "$TMPDIR" "$TARGET"
! grep -q 'default upstream path' "$TARGET"
! grep -q '\\$' "$TARGET"

echo 'PASS: install script copied a valid skill file'
