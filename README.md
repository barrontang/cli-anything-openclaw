# CLI-Anything for OpenClaw

[中文文档](README_CN.md)

**Turn any macOS/Linux app into an agent-controlled CLI in 60 seconds.**

This project brings the [HKUDS/CLI-Anything](https://github.com/HKUDS/CLI-Anything) methodology into OpenClaw as a native workspace skill — so your AI agent can build CLI harnesses for GUI apps, control them from the terminal, and automate anything.

> *"If it has an AppleScript dictionary, a D-Bus interface, or an API — it gets a CLI."*

---

## 🎬 Real-World Demos

These were built live by an OpenClaw agent in under 60 seconds each. No templates, no boilerplate — just the agent analyzing the app's scripting API and generating a working CLI.

### Demo 1: JustFocus (Pomodoro Timer) → `justfocus`

**The ask:** *"cli-anything JustFocus"*

**What the agent did:**
1. Found `JustFocus.sdef` (AppleScript dictionary) inside the app bundle
2. Discovered 4 commands: `start pomodoro`, `short break`, `long break`, `stop`
3. Generated a bash CLI harness with auto-launch

**Result:**

```bash
$ justfocus start
🍅 Pomodoro started!

$ justfocus break
☕ Short break started!

$ justfocus longbreak
🏖️  Long break started!

$ justfocus stop
⏹️  Timer stopped.

$ justfocus status
✅ JustFocus is running (PID: 10977)
```

**Now an AI agent can say:** *"Starting a 25-minute focus session for you"* → `justfocus start` → done.

---

### Demo 2: QuickTime Player → `quicktime`

**The ask:** *"cli-anything QuickTime Player"*

**What the agent did:**
1. Probed QuickTime's hidden AppleScript API via `osascript`
2. Mapped playback controls, recording modes, export, and document management
3. Built a full CLI with 15 commands

**Result:**

```bash
$ quicktime open ~/Movies/demo.mp4
📂 Opened: /Users/you/Movies/demo.mp4

$ quicktime play
▶️  Playing.

$ quicktime pause
⏸️  Paused.

$ quicktime seek 30
⏩ Seeked to 30s.

$ quicktime volume 75
🔊 Volume set to 75%.

$ quicktime info
Name: demo.mp4
Duration: 120.5s
Position: 30.0s
Playing: false

$ quicktime record screen
🖥️  Screen recording started.

$ quicktime record stop
⏹️  Recording stopped.

$ quicktime export ~/Desktop/out.mov 1080p
📤 Exported to: /Users/you/Desktop/out.mov (1080p)
```

**15 commands** from a GUI-only app. Zero code existed before the agent ran.

---

## 🧠 How It Works

```
┌─────────────┐     ┌──────────────┐     ┌──────────────┐
│  You say:    │────▶│  OpenClaw     │────▶│  CLI Harness │
│  "cli-anything    │  agent scans  │     │  generated   │
│   Keynote"   │     │  app bundle,  │     │  & installed │
│              │     │  finds API,   │     │  globally    │
│              │     │  writes CLI   │     │              │
└─────────────┘     └──────────────┘     └──────────────┘
```

The agent:
1. **Inspects** the app bundle (`Info.plist`, `.sdef` files, URL schemes)
2. **Probes** the scripting API via `osascript` to discover commands
3. **Designs** a CLI with subcommands mapped to app features
4. **Generates** a bash/python harness with error handling
5. **Installs** it to `/usr/local/bin` for global access
6. **Tests** each command to verify it works

No manual coding. No YAML configs. Just point the agent at an app.

---

## 🎯 Good Targets

| App Type | Example | Discovery Method |
|---|---|---|
| macOS apps with AppleScript | Keynote, Pages, Finder, Music, Mail | `.sdef` dictionary |
| Apps with URL schemes | Spotify, Bear, Things 3 | `CFBundleURLTypes` in Info.plist |
| Apps with CLI backends | VS Code, Sublime Text | Existing partial CLIs |
| Linux apps with D-Bus | GNOME apps, KDE apps | D-Bus introspection |
| Electron apps | Slack, Discord | IPC / built-in APIs |

---

## 📦 Install

Install into an OpenClaw workspace:

```bash
git clone https://github.com/barrontang/cli-anything-openclaw.git
cd cli-anything-openclaw
bash scripts/install-to-workspace.sh ~/.openclaw/workspace
```

Then clone the upstream methodology:

```bash
git clone https://github.com/HKUDS/CLI-Anything.git ~/.openclaw/workspace/CLI-Anything
```

Start a new OpenClaw session and tell it:

```
cli-anything [app name]
```

---

## 🧪 Quick Test

```bash
bash tests/test_install.sh
```

---

## 💡 Usage Examples

```text
# Build a CLI for a GUI app
cli-anything Keynote

# Build from a GitHub repo
cli-anything https://github.com/example/project

# Review if an app is a good candidate
Use cli-anything to review whether Bear.app is a good fit for a CLI harness.

# Refine an existing harness
Refine the quicktime CLI — add a "trim" command.
```

---

## 📁 Project Structure

```
skills/cli-anything/SKILL.md      # OpenClaw skill entrypoint
scripts/install-to-workspace.sh   # Install into an OpenClaw workspace
references/upstream-layout.md     # How this maps to upstream CLI-Anything
examples/                         # Demo walkthroughs
tests/                            # Install validation
```

---

## 🔗 Positioning

This repo is an **OpenClaw-native adapter** for the CLI-Anything methodology.

- **[HKUDS/CLI-Anything](https://github.com/HKUDS/CLI-Anything)** = the methodology & research
- **This repo** = plug it into OpenClaw and let your agent use it

---

## 🌟 Why This Matters

AI agents need to control software. GUIs are hostile to automation. CLIs are composable, inspectable, and scriptable.

CLI-Anything bridges the gap: **any app → agent-friendly CLI → automation**.

Combined with OpenClaw, your personal AI can now:
- 🍅 Start your Pomodoro timer
- 🎬 Record your screen
- 📊 Export presentations
- 🎵 Control your music
- 📝 Manage your notes

All through natural language. All without touching a mouse.

---

## Upstream

- [HKUDS/CLI-Anything](https://github.com/HKUDS/CLI-Anything)
- [OpenClaw](https://github.com/openclaw/openclaw)
