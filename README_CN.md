# CLI-Anything for OpenClaw

**把 CLI-Anything 方法论，以 OpenClaw 原生 workspace skill 的方式接入 OpenClaw。**

这个项目把 [HKUDS/CLI-Anything](https://github.com/HKUDS/CLI-Anything) 适配给 OpenClaw，让 agent-native CLI generation 可以直接进入 OpenClaw 的工作流，而不是依赖其他工具的插件体系。

## 为什么要做这个项目

CLI-Anything 的核心价值，是把现有软件的能力整理成更适合 AI Agent 调用的 CLI 接口。

而 OpenClaw 的优势在于：
- workspace 本地 skill
- agent 驱动的文件工作流
- 私有自动化环境
- 更贴近真实操作场景的任务编排

所以与其强行把 OpenClaw 套进 Claude Code 或 OpenCode 的插件安装方式，
更合理的做法是：

**把 CLI-Anything 包装成 OpenClaw 能直接使用的 Skill 形态。**

## 这个仓库提供什么

- 一个 OpenClaw 原生 skill：`cli-anything`
- 一个安装到 workspace 的脚本
- 一个连接上游 CLI-Anything 方法论的适配层
- 一个适合 OpenClaw 用户开始做 agent-native software automation 的入口

## 仓库内容

```text
skills/cli-anything/SKILL.md      # OpenClaw skill 入口
scripts/install-to-workspace.sh   # 安装到 OpenClaw workspace
references/upstream-layout.md     # 与上游 CLI-Anything 的结构映射
examples/                         # review / build / refine 示例
launch/                           # 博客、X、微博、微信发布文案
```

## 安装方式

安装到 OpenClaw workspace：

```bash
bash scripts/install-to-workspace.sh ~/.openclaw/workspace
```

如果你当前就在某个 workspace 目录里，也可以：

```bash
bash scripts/install-to-workspace.sh .
```

如果你的上游 CLI-Anything clone 不在默认路径，可以通过环境变量指定：

```bash
CLI_ANYTHING_UPSTREAM_PATH=/path/to/CLI-Anything bash scripts/install-to-workspace.sh ~/.openclaw/workspace
```

## 使用方式

安装完成后，你可以让 OpenClaw：
- 为本地仓库构建 CLI-Anything harness
- 对已有 harness 做 refine
- 按 CLI-Anything 方法论验证一个代码库是否适合 CLI 化

例如：

```text
Use cli-anything on https://github.com/example/project and build an OpenClaw-friendly harness.
```

## 快速测试

运行最小安装测试：

```bash
bash tests/test_install.sh
```

## 示例

可以参考这些示例：

- `examples/demo.md`
- `examples/build-demo.md`
- `examples/refine-demo.md`

## 项目定位

这个仓库**不是**用来替代上游 HKUDS CLI-Anything 的。

它更准确的定位是：

**一个面向 OpenClaw 的原生适配层。**

- 上游 CLI-Anything = 方法论与命令生态
- 这个仓库 = OpenClaw 集成层

## 为什么它有意义

AI Agent 正在逐渐成为真正的软件用户。

而 CLI 依然是最适合 Agent 的接口之一，因为它：
- 可组合
- 可检查
- 可自动化
- 可脚本化
- 比纯 GUI 更容易验证

这也是 CLI-Anything 为什么重要。
而这个项目的意义，就是让 OpenClaw 也能自然使用这套方法论。

## 上游项目

- https://github.com/HKUDS/CLI-Anything
