# CLI-Anything for OpenClaw: Bringing Agent-Native CLI Generation to OpenClaw

What if OpenClaw could take the powerful methodology behind CLI-Anything and use it directly as a local skill?

That is the idea behind **CLI-Anything for OpenClaw**.

This project adapts the upstream [HKUDS/CLI-Anything](https://github.com/HKUDS/CLI-Anything) work into an **OpenClaw-native workspace skill**, so you can use the CLI-Anything methodology inside OpenClaw without forcing Claude Code or OpenCode-specific installation paths.

## Why this repo exists

The upstream CLI-Anything project is strong: it provides a serious methodology for turning existing software into agent-usable CLIs.

But OpenClaw works differently.

OpenClaw shines with:
- workspace-local skills
- agent-driven file workflows
- direct adaptation into private or shared automation environments

So instead of trying to shoehorn OpenClaw into another tool's plugin system, this repo takes the cleaner path:

**wrap the CLI-Anything methodology in an OpenClaw-native skill shape.**

## What it provides

This repository gives you:
- an OpenClaw skill entrypoint: `skills/cli-anything/SKILL.md`
- a simple installation script for OpenClaw workspaces
- a clean bridge to upstream CLI-Anything references such as:
  - `HARNESS.md`
  - Codex skill instructions
  - OpenCode command patterns

## What this unlocks

With this repo, OpenClaw can more naturally:
- build harnesses for local repositories
- refine existing harnesses
- validate whether a target codebase fits the CLI-Anything approach
- reuse the CLI-Anything methodology without leaving the OpenClaw workflow

## Positioning

This is **not a fork trying to replace upstream**.
It is an **adapter layer** for OpenClaw users.

Think of it as:
- upstream CLI-Anything = methodology and command ecosystem
- this repo = OpenClaw-native integration layer

## Why it matters

AI agents are getting good at reasoning, but they still need clean operational interfaces.

CLI remains one of the best interfaces for agents because it is:
- composable
- inspectable
- scriptable
- automatable
- easier to validate than GUI-only interaction

That is why the CLI-Anything idea is so compelling.
And that is exactly why OpenClaw should speak it fluently.

## Repo

GitHub: https://github.com/barrontang/cli-anything-openclaw

If you use OpenClaw and want agent-native software workflows, this is a practical starting point.
