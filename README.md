# CLI-Anything for OpenClaw

**Bring the CLI-Anything methodology into OpenClaw as a native workspace skill.**

This project adapts [HKUDS/CLI-Anything](https://github.com/HKUDS/CLI-Anything) for OpenClaw so agent-native CLI generation can live inside an OpenClaw workflow instead of being tied to another tool's plugin system.

## Why this exists

CLI-Anything is a strong methodology for turning existing software into agent-usable CLIs.

But OpenClaw has its own strengths:
- workspace-local skills
- agent-driven file workflows
- private automation environments
- direct adaptation into real operator workflows

So instead of forcing OpenClaw into Claude Code or OpenCode installation patterns, this repository takes the cleaner path:

**package the CLI-Anything approach in a shape OpenClaw can actually use.**

## What you get

- an OpenClaw-native skill: `cli-anything`
- a workspace install script
- a clean adapter layer to the upstream methodology
- a practical starting point for agent-native software automation in OpenClaw

## Included

```text
skills/cli-anything/SKILL.md      # OpenClaw skill entrypoint
scripts/install-to-workspace.sh   # Install into an OpenClaw workspace
references/upstream-layout.md     # How this maps to upstream CLI-Anything
launch/                           # Blog + X + Weibo + WeChat launch copy
```

## Install

Install into an OpenClaw workspace:

```bash
bash scripts/install-to-workspace.sh ~/.openclaw/workspace
```

Or, from inside a workspace:

```bash
bash scripts/install-to-workspace.sh .
```

## Usage

Once installed, ask OpenClaw to:
- build a CLI-Anything harness for a local repository
- refine an existing harness
- validate a codebase using the CLI-Anything methodology

## Quick test

Run the minimal install test:

```bash
bash tests/test_install.sh
```

## Example

See a practical review example in:

- `examples/demo.md`

Example:

```text
Use cli-anything on https://github.com/example/project and build an OpenClaw-friendly harness.
```

## Positioning

This repo does **not** replace the upstream HKUDS project.

It is an **OpenClaw-native adapter** for users who want the CLI-Anything methodology inside an OpenClaw skill workflow.

- Upstream CLI-Anything = methodology and command ecosystem
- This repo = OpenClaw integration layer

## Why it matters

AI agents are becoming real software users.

CLI remains one of the best interfaces for agents because it is:
- composable
- inspectable
- automatable
- scriptable
- easier to validate than GUI-only interaction

That makes CLI-Anything important.
And that makes an OpenClaw-native adaptation worth having.

## Upstream source

- https://github.com/HKUDS/CLI-Anything
