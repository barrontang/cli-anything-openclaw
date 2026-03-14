# GitHub / ClawHub 双发布说明

现在这个项目采用的是 **GitHub repo + ClawHub skill 分离发布** 的方式。

## 为什么要分开？

原因很简单：

- GitHub repo 更适合放：
  - 项目源码
  - README
  - 测试
  - examples
  - launch 文案
  - review 报告

- ClawHub 更适合放：
  - 真正面向公开安装的 skill 包
  - 可移植、可直接安装的 skill 结构

如果把本地开发用的适配层和公开发布的 skill 包混在一起，会有两个问题：

1. GitHub repo 结构会变乱
2. ClawHub 用户拿到的 skill 可能会被本地路径或开发环境耦合

## 所以现在的做法是

- **GitHub repo** 负责项目本身
- **ClawHub** 负责公开安装版本

这样职责更清晰，也更适合后续维护。

## 一句话总结

> GitHub 是项目仓库，ClawHub 是可安装分发渠道；两者相关，但不混在一起。
