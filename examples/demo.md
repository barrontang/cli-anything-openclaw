# Demo: Review a Repository with CLI-Anything for OpenClaw

This example shows how to use the `cli-anything` skill inside OpenClaw to evaluate whether a repository is a good fit for the CLI-Anything methodology.

## Example prompt

```text
Use cli-anything on ./target-repo and review whether it is a good candidate for an agent-friendly CLI harness.
```

## What OpenClaw should do

1. Read the local `cli-anything` skill.
2. Use the upstream CLI-Anything methodology as the source of truth.
3. Inspect the target repo structure and backend interfaces.
4. Decide whether the software is a good fit for a CLI harness.
5. Report:
   - likely command groups
   - implementation risks
   - recommended next steps

## Good target candidates

- GUI applications with scriptable backends
- Projects with stable internal APIs
- Tools that already expose some CLI or automation interface
- Software where agent workflows would benefit from structured commands

## Weak target candidates

- Purely visual apps with no scriptable backend
- Projects with highly unstable internals
- Software where the GUI is thin but the real engine is inaccessible

## Expected output shape

A good review should produce:

- a clear fit / not-fit judgment
- likely CLI domains or command groups
- backend/access constraints
- a suggested next step such as build, refine, or validate-only
