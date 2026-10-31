# Telegami

<div align="center">

![Telegami](https://socialify.git.ci/kj163kj/Telegami/image?description=1&font=Inter&language=1&name=1&pattern=Floating+Cogs&theme=Auto)

[![GitHub License](https://img.shields.io/github/license/kj163kj/Telegami?style=for-the-badge)](LICENSE)
[![GitHub Release](https://img.shields.io/github/v/release/kj163kj/Telegami?style=for-the-badge)](https://github.com/kj163kj/Telegami/releases)

**基于 LSPosed Modern API 102 的 Telegram 官方客户端高级增强模块**

采用全新的 **Miuix Compose** 设计体系与 **Liquid Glass（液态玻璃）** 交互底栏

</div>

> [!WARNING]
> **隐私与责任声明**
> 
> Telegami 包含消息防撤回与捕获临时媒体等功能。使用相关功能可能会与他人的隐私预期产生冲突，请合理、负责任地使用并严格遵守您所在地区的法律法规。
> 
> 本软件按“原样”（AS IS）提供，不提供任何明示或暗示的担保。使用本模块产生的所有后果由使用者自行承担，开发者不对因使用或滥用本软件造成的任何损失、纠纷或封号等情况承担责任。

---

## 📱 支持客户端

本模块专为 **Android Telegram 官方 13.1.x 稳定版** 深度定制适配：

- **Google Play 官方版**：`org.telegram.messenger`
- **官方网站下载版**：`org.telegram.messenger.web`

> [!NOTE]
> 为确保 Hook 的精准度与极速性能，本模块不支持第三方修改版客户端（如 Cherrygram、Nekogram、Octogram 等）及 Telegram Beta 测试版。

---

## ✨ 核心特性

### 🎨 现代化界面架构
- **Miuix Compose 设计体系**：深度整合 Xiaomi HyperOS / MIUI 风格的视觉规范与卡片布局，提供高信息密度、优雅简洁的设置体验。
- **Liquid Glass 液态玻璃底栏**：基于真实的 AndroidLiquidGlass Backdrop 折射与柔和模糊效果，手势拖拽自然跟随，放手即平滑切换。
- **模块状态实时感知**：首页顶部智能识别 LSPosed 模块启用状态，操作直观高效。
- **深色与浅色模式**：全局自适应系统色彩模式，视觉效果统一协调。

---

### 🛡️ 隐私与状态隐身
- **阻止已读上报（防已读）**：
  - 私聊会话防已读
  - 群组会话防已读
  - 频道广播防已读
- **阻止正在输入状态**：向对方隐藏你的打字/录音等实时状态。
- **阻止故事已读**：静默查看联系人发布的故事（Stories），不留下浏览痕迹。
- **阻止在线状态上报**：在保持应用打开的同时向他人隐藏在线状态。

---

### 💬 消息增强与防撤回
- **消息防撤回**：本地保留对方删除的消息，并在聊天流中标记醒目的撤回状态与提示。
- **阅后即焚防销毁**：私密会话中的自毁照片、视频等临时媒体自动保留，防止过期销毁。
- **编辑历史捕获与版本回溯**：
  - 实时捕获消息编辑前后的各版本内容。
  - 支持直接在聊天界面查看消息历史修订版本。
  - 可自定义**编辑历史保留天数**（1–3650 天）与**单条消息最大版本数**（2–1000 个版本），到期自动维护本地存储。

---

### 🚀 消息操作与转发增强
- **消息复读**：保留经典 NagramX 复读交互图标，点击即可将指定消息作为本人新消息重新发送，不建立引用关系。
- **启用强制复制**：突破受保护群组与频道的限制，在任何禁止复制的会话中自由选择并复制消息文字。
- **无来源转发**：将受限会话或普通会话中的消息作为完全无转发来源的新消息派发到目标聊天，原生选择器全场景打通。
- **安全操作确认**：独立支持「复读前确认」与「无来源转发前确认」，深度整合 Telegram 原生弹窗避免误触。

---

### 🔓 媒体与频道限制解锁
- **受限内容保护解锁**：在限制保存媒体的群组和频道中允许自由保存图片、视频以及进行屏幕截图与录屏。
- **下载加速**：优化官方客户端下载策略，提升大文件拉取吞吐速率。

---

## 🛠️ 技术规格

- **Xposed 框架标准**：LSPosed Modern API 102 (`libxposed API 102.0.0`)
- **UI 框架**：Miuix Compose (`top.yukonga.miuix.kmp:0.9.1`)
- **底栏特效**：AndroidLiquidGlass (`io.github.kyant0:backdrop:1.0.7`)
- **构建工具链**：Gradle 9.4.1 / Android Gradle Plugin 9.2.1 / Kotlin 2.3.10 / JDK 21

---

## 👥 致谢

- [@mustafa1dev](https://github.com/mustafa1dev/TeleVip-Lsposed) - 原始项目基础与逆向灵感
- [@aoya111](https://github.com/aoya111/Telegami) - Telegami 上游初始仓库
- [NagramX](https://github.com/NagramX/NagramX) - 优秀的消息操作逻辑与图标设计参考
- [Miuix Compose](https://github.com/compose-miuix-ui/miuix) - 现代 MIUI 风格 Compose UI 库
- [AndroidLiquidGlass](https://github.com/Kyant0/AndroidLiquidGlass) - Android Compose 玻璃质感渲染库

---

## 📄 开源许可证

本项目基于 [GNU General Public License v3.0 (GPL-3.0)](LICENSE) 开源协议发布。

---

## ⚠️ 免责声明

本软件仅供计算机软件逆向工程技术学习与个人交流使用。用户在使用本模块时，须严格遵守 Telegram 用户服务条款及所在地法律法规。对于因使用本模块引起的任何民事、行政或刑事法律后果，开发者不承担任何责任。
