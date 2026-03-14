# CLI-Anything for OpenClaw

An OpenClaw-native adaptation of [HKUDS/CLI-Anything](https://github.com/HKUDS/CLI-Anything).

This repository packages the CLI-Anything methodology so OpenClaw can trigger it as a local workspace skill.

## What this gives you

- A local OpenClaw skill: `cli-anything`
- A clean bridge from the upstream CLI-Anything methodology into OpenClaw
- A simple install path for workspace-based usage

## Included

- `skills/cli-anything/SKILL.md` — OpenClaw skill entrypoint
- `references/upstream-layout.md` — notes about how the upstream repo maps into OpenClaw
- `scripts/install-to-workspace.sh` — install the skill into an OpenClaw workspace

## Install into an OpenClaw workspace

```bash
bash scripts/install-to-workspace.sh ~/.openclaw/workspace
```

Or from inside an existing OpenClaw workspace:

```bash
bash scripts/install-to-workspace.sh .
```

## Usage

Once installed, ask OpenClaw to:

- build a CLI-Anything harness for a local repo
- refine an existing harness
- validate a target repo using CLI-Anything methodology

Example prompt:

```text
Use cli-anything on https://github.com/example/project and build an OpenClaw-friendly harness.
```

## Relationship to upstream

This repo does **not** replace the upstream HKUDS project.
It adapts the upstream methodology for OpenClaw skill discovery and workflow execution.

## Upstream source

- Upstream: https://github.com/HKUDS/CLI-Anything
