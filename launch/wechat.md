# CLI-Anything for OpenClaw：把 CLI-Anything 方法论真正带进 OpenClaw

最近我做了一个小仓库：**CLI-Anything for OpenClaw**。

它的核心目标很直接：
**把 HKUDS 的 CLI-Anything 方法论，转换成 OpenClaw 可以直接使用的原生 Skill 形态。**

## 为什么要做这件事？

CLI-Anything 很有意思。
它本质上是在回答一个越来越重要的问题：

> 当未来的软件用户不只是人，还包括 AI Agent 时，我们该怎样给软件建立更适合 Agent 的接口？

其中一个答案，就是 CLI。

CLI 对 Agent 来说天然友好，因为它：
- 结构化
- 可组合
- 可脚本化
- 容易验证
- 比 GUI 更适合作为自动化接口

CLI-Anything 的价值，就在于它试图把“任意软件”往这种 agent-native 的方向推进。

## 但 OpenClaw 需要自己的接入方式

问题在于，原始项目主要围绕其他工具生态来组织，例如 Claude Code、OpenCode、Codex 等。

而 OpenClaw 的工作方式并不完全一样。

OpenClaw 更适合的路径是：
- 在工作区内管理 Skill
- 通过本地文件和方法论驱动任务
- 在现有自动化流程中自然调用能力

所以，最合理的做法不是硬塞一个插件安装逻辑进 OpenClaw，
而是**把 CLI-Anything 改写成 OpenClaw 能直接理解和触发的 Skill 结构。**

## 这个仓库做了什么？

这个仓库提供了：
- OpenClaw 可发现的 `cli-anything` skill
- 面向工作区安装的简单脚本
- 对上游方法论文档的映射说明
- 一个更适合 OpenClaw 用户的接入层

它不是替代上游项目，
而是一个 **OpenClaw-native adapter**。

## 它适合谁？

如果你正在做这些事情，这个仓库会很适合你：
- 想让 OpenClaw 更自然地调用 CLI-Anything 方法论
- 想分析某个 GUI 软件，构建 agent-friendly CLI
- 想把软件能力封装成更适合 Agent 使用的接口
- 想把方法论沉淀成 OpenClaw Skill，而不是分散在外部工具链里

## 仓库地址

https://github.com/barrontang/cli-anything-openclaw

如果你对 AI Agent、CLI、软件接口演化、自动化工具链这些方向有兴趣，欢迎交流。
