# CLI-Anything for OpenClaw：把 CLI-Anything 方法论带进 OpenClaw

我做了一个小仓库：**CLI-Anything for OpenClaw**。

它的目标很直接：
**把 HKUDS 的 CLI-Anything 方法论，转换成 OpenClaw 可以直接发现、安装和触发的原生 Skill。**

## 为什么值得做

CLI-Anything 的核心价值，在于把软件往“更适合 AI Agent 使用”的方向推进。

而 OpenClaw 的优势，在于：
- 工作区 Skill
- 本地自动化流程
- 任务驱动的 agent 工作方式

所以最合理的做法，不是强行把 OpenClaw 套进别人的插件安装路径，
而是把方法论包装成 **OpenClaw 自己擅长消费的 Skill 结构**。

## 这个仓库做了什么

它提供了：
- `skills/cli-anything/SKILL.md`
- 工作区安装脚本
- 对上游 CLI-Anything 结构的映射说明
- 可直接用于 OpenClaw 的接入层

## 它不是什么

它不是对上游的替代。
它不是一个重新发明的 CLI-Anything。

更准确地说，它是：
**一个 OpenClaw-native adapter。**

## 它适合谁

- 想让 OpenClaw 使用 CLI-Anything 方法论的人
- 想把 GUI 软件能力转换成 agent-friendly CLI 的人
- 想沉淀 OpenClaw 本地 Skill 生态的人

## 仓库地址

https://github.com/barrontang/cli-anything-openclaw
