---
name: cli-anything
description: Build, refine, test, or validate a CLI-Anything harness for a GUI application or source repository. Use when the user wants OpenClaw/Codex to generate an agent-native CLI around existing software, mentions CLI-Anything, or asks to use the HKUDS CLI-Anything methodology on a local path or GitHub repo.
---

Use the cloned repository at `/home/barron/.openclaw/workspace/CLI-Anything` as the source of truth.

When this skill triggers:

1. Read `/home/barron/.openclaw/workspace/CLI-Anything/cli-anything-plugin/HARNESS.md` first.
2. If the task is specifically about Codex-style usage, also read `/home/barron/.openclaw/workspace/CLI-Anything/codex-skill/SKILL.md`.
3. If the task is specifically about slash-command workflows, read the relevant file under `/home/barron/.openclaw/workspace/CLI-Anything/opencode-commands/`.
4. Treat the repository as methodology + command templates; do not assume it auto-installs into OpenClaw by itself.
5. For OpenClaw use, execute the methodology directly or adapt it into workspace/local skills rather than inventing unsupported install commands.

Use these inputs:
- a local source path
- or a GitHub repository URL

Prefer this workflow:
- acquire source locally
- analyze codebase/backend
- design command groups and state model
- implement harness under an `agent-harness/` directory
- plan tests before writing them
- validate packaging and CLI entry points

Keep outputs concrete:
- target software/repo
- files added/changed
- commands run
- risks or limitations
