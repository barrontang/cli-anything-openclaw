# CLI-Anything for OpenClaw

[English](README.md)

**让 AI 把任何 macOS/Linux 应用变成命令行工具，60 秒搞定。**

本项目将 [HKUDS/CLI-Anything](https://github.com/HKUDS/CLI-Anything) 方法论接入 OpenClaw，让你的 AI Agent 能自动分析 GUI 应用、生成 CLI 接口、从终端控制一切。

> *"只要有 AppleScript 字典、D-Bus 接口或 API —— 它就能变成 CLI。"*

---

## 🎬 真实演示

以下 CLI 均由 OpenClaw Agent 实时构建，每个不到 60 秒。没有模板，没有样板代码 —— Agent 自动分析应用的脚本接口，生成可运行的 CLI。

### 演示 1：JustFocus（番茄钟）→ `justfocus`

**指令：** *"cli-anything JustFocus"*

**Agent 做了什么：**
1. 在应用包中发现 `JustFocus.sdef`（AppleScript 字典）
2. 识别出 4 个命令：`start pomodoro`、`short break`、`long break`、`stop`
3. 生成 bash CLI，带自动启动应用功能

**效果：**

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

**现在 AI Agent 可以说：** *"帮你开始 25 分钟专注"* → `justfocus start` → 搞定。

---

### 演示 2：QuickTime Player → `quicktime`

**指令：** *"cli-anything QuickTime Player"*

**Agent 做了什么：**
1. 通过 `osascript` 探测 QuickTime 的隐藏 AppleScript API
2. 映射出播放控制、录制模式、导出和文档管理功能
3. 构建了包含 15 个命令的完整 CLI

**效果：**

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

从一个纯 GUI 应用生成 **15 个命令**。之前一行代码都没有。

---

## 🧠 工作原理

```
┌─────────────┐     ┌──────────────┐     ┌──────────────┐
│  你说：       │────▶│  OpenClaw     │────▶│  CLI 已生成   │
│  "cli-anything    │  Agent 扫描   │     │  全局可用     │
│   Keynote"   │     │  应用包，发现  │     │              │
│              │     │  API，生成CLI │     │              │
└─────────────┘     └──────────────┘     └──────────────┘
```

Agent 的工作流程：
1. **检查** 应用包（`Info.plist`、`.sdef` 文件、URL Scheme）
2. **探测** 脚本 API，通过 `osascript` 发现可用命令
3. **设计** CLI 子命令，映射到应用功能
4. **生成** bash/python 脚本，带错误处理
5. **安装** 到 `/usr/local/bin`，全局可用
6. **测试** 每个命令，验证可用性

不需要手写代码。不需要 YAML 配置。只需要把 Agent 指向一个应用。

---

## 🎯 适合的目标应用

| 应用类型 | 示例 | 发现方式 |
|---|---|---|
| 带 AppleScript 的 macOS 应用 | Keynote、Pages、Finder、Music、Mail | `.sdef` 字典 |
| 带 URL Scheme 的应用 | Spotify、Bear、Things 3 | Info.plist 中的 `CFBundleURLTypes` |
| 有 CLI 后端的应用 | VS Code、Sublime Text | 已有的部分 CLI |
| Linux D-Bus 应用 | GNOME 应用、KDE 应用 | D-Bus 自省 |
| Electron 应用 | Slack、Discord | IPC / 内置 API |

---

## 📦 安装

```bash
git clone https://github.com/barrontang/cli-anything-openclaw.git
cd cli-anything-openclaw
bash scripts/install-to-workspace.sh ~/.openclaw/workspace
```

然后克隆上游方法论仓库：

```bash
git clone https://github.com/HKUDS/CLI-Anything.git ~/.openclaw/workspace/CLI-Anything
```

启动一个 OpenClaw 会话，然后说：

```
cli-anything [应用名]
```

---

## 🧪 快速测试

```bash
bash tests/test_install.sh
```

---

## 💡 使用示例

```text
# 为 GUI 应用构建 CLI
cli-anything Keynote

# 从 GitHub 仓库构建
cli-anything https://github.com/example/project

# 评估一个应用是否适合 CLI 化
用 cli-anything 评估一下 Bear.app 是否适合生成 CLI。

# 优化已有的 harness
优化 quicktime CLI —— 加一个 trim 命令。
```

---

## 📁 项目结构

```
skills/cli-anything/SKILL.md      # OpenClaw skill 入口
scripts/install-to-workspace.sh   # 安装到 workspace 的脚本
references/upstream-layout.md     # 与上游 CLI-Anything 的结构映射
examples/                         # 演示和示例
  harnesses/                      # 真实可运行的 CLI 脚本
tests/                            # 安装验证
```

---

## 🔗 项目定位

本仓库是 CLI-Anything 方法论的 **OpenClaw 原生适配层**。

- **[HKUDS/CLI-Anything](https://github.com/HKUDS/CLI-Anything)** = 方法论与研究
- **本仓库** = 接入 OpenClaw，让 Agent 直接使用

---

## 🌟 为什么这很重要

AI Agent 需要控制软件。GUI 对自动化是敌对的。CLI 可组合、可检查、可脚本化。

CLI-Anything 架起了这座桥：**任何应用 → Agent 友好的 CLI → 自动化**。

结合 OpenClaw，你的私人 AI 现在可以：
- 🍅 启动你的番茄钟
- 🎬 录制你的屏幕
- 📊 导出演示文稿
- 🎵 控制音乐播放
- 📝 管理你的笔记

全部通过自然语言。全部不需要碰鼠标。

---

## 上游项目

- [HKUDS/CLI-Anything](https://github.com/HKUDS/CLI-Anything)
- [OpenClaw](https://github.com/openclaw/openclaw)
