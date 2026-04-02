---
name: cli-anything
description: Build, refine, test, or validate a CLI-Anything harness for a GUI application or source repository. Use when the user wants OpenClaw to generate an agent-native CLI around existing software, mentions CLI-Anything, or asks to use the HKUDS CLI-Anything methodology on a local path or GitHub repo.
---

Upstream: `~/.openclaw/workspace/CLI-Anything` (override with `CLI_ANYTHING_UPSTREAM_PATH`).

On trigger:
1. Read `UPSTREAM/cli-anything-plugin/HARNESS.md` — primary SOP (5 phases: analyze, design, implement, plan tests, validate).
2. For Codex tasks: also read `UPSTREAM/codex-skill/SKILL.md`.
3. For slash commands: check `UPSTREAM/opencode-commands/`.

Input: local path or GitHub URL.

Workflow (per HARNESS.md): analyze codebase/backend → design command groups → implement in `agent-harness/` → write `TEST.md` plan → implement tests → validate CLI entry points.

Output: target, files changed, commands run, risks.
