#!/usr/bin/env bash
set -euo pipefail
TARGET="${1:-.}"
mkdir -p "$TARGET/skills/cli-anything"
cp "$(dirname "$0")/../skills/cli-anything/SKILL.md" "$TARGET/skills/cli-anything/SKILL.md"
echo "Installed cli-anything skill to $TARGET/skills/cli-anything/SKILL.md"
