# AI 与免 Key 多源翻译实现及验证报告

日期：2026-10-31。分支：`feat/multi-source-translation`。
基线：`0af0ef36362207eaecf1ff43882ce56e9b24d98d`。
业务代码及测试提交：`454eedfeb8f50cb5d725a69e12b7d0e7b8f17060`。

**本次交付不等于全部功能已通过实机验收。** 未连接 Android 设备，没有 Telegram 登录会话或用户 AI Key；
LSPosed 下原生面板、跨 UID broker、Keystore、账号翻译接口和重启持久化必须继续实机验证。
没有改管理 App 的 Compose 页面或底部导航。UI 接入见 `18_TRANSLATION_SOURCE_CONFIG_HANDOFF.md`。

## 1. 分阶段记录

| 阶段 | 提交 | 内容与已执行验证 |
| --- | --- | --- |
| P0 | `025140c` | 基线审计、NagramX 路径分析、DexSQL 查询及解码 |
| P1 | `897eb14` | 稳定 Provider ID、统一管理器、缓存、账号隔离、超时单测 |
| P2 | `de5b100` | Google/Yandex/Bing 请求及 Native 反射适配器、JVM 联网样例 |
| P3 | `a539e84` | 通用 Chat Completions、模型列表、连接测试、错误模拟 |
| P4 | `da1ade9` | 单次 Prompt 变量替换、原文 role 隔离测试 |
| P5 | `82e5f57` | HTML 实体往返、范围/身份校验、安全降级、Google 真实格式样例 |
| P6 | `5549051` | 原生翻译面板、重译/源选择、关闭取消、过期结果隔离；编译和单测 |
| P7 | `fc4a7be` | Remote Preferences 字符串、Keystore、签名调用方 broker；全量单测和 Debug APK |
| P8 | `454eedf` | 128 项 JVM 测试、真实格式矩阵、Debug/Release/仪器测试 APK、Release Lint、签名检查 |
| P9 | 当前文档提交 | UI 数据接口交接、能力边界、测试报告、最终产物记录 |

每阶段日志位于 `artifacts/validation/translation-p*.log`；最终完整执行日志为 `translation-build.log`，
代码提交后再次打包的日志为 `translation-final-build.log`。P8 初次测试夹具编译失败及网络安全 XML Lint
失败均已修复并保留失败日志，没有关闭 Lint 或增加错误基线来绕过检查。

## 2. APK 与 DEX 证据

目标仍仅为官方 `org.telegram.messenger` 和 `org.telegram.messenger.web`，Modern API 102。
用户提供 APK 实际版本 **13.1.0 / 72299**，不是 13.1.1；沿用此前“小版本差异暂不管”的授权，
但不能把它写成已经验证了 13.1.1 实机。

输入 SHA-256：`4c122bca5edb997e38fc65360c33e6e726e6f1b31ba23987df0adad0e323a9d8`。

```powershell
python scripts/analyze_translation.py --dexsql "$env:LOCALAPPDATA\DexSQL\v0.1.1\dexsql.exe"
python scripts/verify_translation.py --report artifacts/validation/translation-tests.json
```

证据目录：`artifacts/dexsql/translation-1310/`，包括 SQL、完整描述符、字段、实体类型、调用关系、
原生请求序列化、面板请求/回调/渲染/关闭及控制器批量请求的 smali。
`17_TRANSLATION_SYSTEM_AUDIT.md` 记录具体 Hook 类名、方法、签名、参数、返回值与时机。
没有猜测混淆类名或使用“扫描到首个相似方法就 Hook”的逻辑。

## 3. 实现边界

所有新增翻译经 `TranslationManager` 调用，Provider 使用稳定字符串 ID。
异步请求、30 秒默认期限、请求取消、64 项/5 分钟内存缓存；缓存按账号、Provider、语言、文本、
实体及配置修订隔离。重译显式跳过缓存。不自动回退到另一个服务，防止未授权的跨服务原文披露。

只扩展消息文本/Caption 长按入口及原生文本翻译面板；不接管整会话自动翻译、投票、富消息、
图片 OCR 或动态翻译，不改媒体发送、历史/删除消息数据库。
原生翻译面板的结果仍交给 Telegram 自己的实体渲染与滚动布局。
新长按菜单提供“翻译 / 重译”和“选择翻译源”，目标语言通过原生面板切换。

普通服务无需用户 Key，但属于非付费开发者 API 的公开客户端接口，不保证永久可用/不限流。
Google 接口单次载荷上限 5000 字符（含格式标记）；统一入口原文上限 16000 字符，
响应体上限 2 MiB、最终译文上限 64000 字符，实体最多 512 个；超限明确报错，不静默截断。

AI 只实现一份 Chat Completions 客户端，支持手动模型、`GET /models`、completion 连接测试、
自定义名称/URL/Key/Prompt。不发送温度等厂商兼容性不确定的参数，不新增第二阶段适配器。
密钥由管理 UID Keystore 加密后存入原有 `features`，管理进程负责 AI 网络，Hook 不解密 Key。
broker 只接受受审计官方签名与包名，限制并发、载荷和取消 token。无法获取配置时失败，不伪造保存。

## 4. Provider 状态矩阵

| Provider | 已实现 | 已编译 | 已连接测试 | 已真实翻译测试 | 未验证/限制 |
| --- | --- | --- | --- | --- | --- |
| Google | 是 | 是 | JVM HTTP 200 | 中英日四组样例；十组格式样例 | Android/LSPosed 原生呈现未验证；非官方稳定性承诺 |
| Yandex | 是 | 是 | JVM HTTP 200 | 中英日四组样例；十组格式探测 | Pre 安全降级；繁体目标不冒充支持；实机未验证 |
| Bing | 诊断适配器 | 是 | 是，但地区站 HTTP 403，失败 | 否 | `selectable=false`；没有把编译成功写成服务可用 |
| Telegram Native | 是 | 是 | 否，无登录账号设备 | 否 | 请求/取消/实体反射只做 DEX 核验；实机未验证 |
| OpenAI-Compatible | 是 | 是 | 协议模拟通过；公网 GET 探测另述 | 否，无用户 Key/模型 | 厂商 POST、broker 和 Keystore 实机未验证；默认未配置 |

Bing 从 translator 页面动态解析 IG/IID/AbusePreventionHelper，不包含真实固定 Token，
也不照搬 NagramX 的 Token 日志或额外偏好文件。本机 `www.bing.com` 返回到 `cn.bing.com` 的地区跳转，
已按固定 HTTPS 域名处理；后者仍返回 403，所以正式选择入口不启用 Bing。

## 5. 真实翻译质量探测

所有样例都是本次测试用的公开短句，没有使用用户聊天记录。
源语言自动识别，按以下顺序执行：

| 输入与目标 | Google 返回 | Yandex 返回 |
| --- | --- | --- |
| `你好，世界。` → 英文 | `Hello World.` | `Hello, world.` |
| `Hello, world.` → 简体中文 | `你好世界。` | `你好，世界！.` |
| `こんにちは、世界。` → 简体中文 | `你好世界。` | `嗨，世界。` |
| `你好，世界。` → 日文 | `こんにちは世界。` | `こんにちは。` |

这是**基础连通/语言烟测**，不是完整质量基准：Yandex 有额外标点、语气变化或省略，不能宣称与
Google 质量等同，也没有评测专业领域、长文、复杂正式/口语风格、术语或对抗性文本。
完整原始结果在 JVM XML 与 `artifacts/validation/translation-tests.json` 的 `live_probes` 中。
诊断探测不会因外部服务不可用而把整套单测判成客户端逻辑失败，必须单独读取 Provider 状态。

## 6. 格式验证

本地往返测试覆盖 Bold、Italic、Underline、Strike、Code、Pre、TextUrl、Mention、MentionName、
CustomEmoji、Blockquote、Spoiler，以及交叠/嵌套、UTF-16 Emoji、换行、转义字符、元数据保留。
另测丢失/重复/损坏标签、身份内容变化、恶意返回 href、越界实体及安全降级。

实际请求矩阵（英文 → 简体中文）：

| 格式 | Google | Yandex |
| --- | --- | --- |
| Bold / Italic / Underline / Strike | 四项均恢复一个原类型实体 | 四项均恢复一个原类型实体 |
| TextUrl | 保留本地 URL 身份 | 保留本地 URL 身份 |
| Spoiler / Blockquote | 两项均恢复 | 两项均恢复 |
| Pre | 代码块实体恢复 | 检测不一致，返回无实体译文并提示降级 |
| Mention / CustomEmoji | 两项均恢复本地身份元数据 | 两项均恢复本地身份元数据 |
| 多段落与 Emoji | 加粗综合样例保留段落与 Emoji | 组合样例已请求；原生渲染仍需实机 |

Google 十组实体样例 `fallback=false`；Yandex 九组 `false`、Pre 一组 `true`。
真实模型服务、Telegram Native 和 Android 动画 Emoji/链接点击呈现**未验证**。
实体恢复不代表下载/展示了真实 custom emoji 媒体资源；测试 ID 为本地合成数据。

## 7. AI 测试矩阵

| 项目 | 结果与边界 |
| --- | --- |
| Chat Completions 请求 | 模拟验证自定义 `/custom/v1/chat/completions`、Bearer、手动模型、system/user、非流式 JSON |
| 模型列表 | 模拟验证 `/models`、ID 去重排序、失败不伪造成功；手动模型不依赖列表可用 |
| 连接测试 | 模拟验证当前模型 completion 形式，而不是只 GET 模型列表 |
| 错误 Key | 模拟 HTTP 401，`AUTH`，不含上游响应/凭证 |
| 错误 Model | 模拟 HTTP 400/404，失败状态；不自动替换模型 |
| 限流/服务异常 | 模拟 HTTP 429/500，`RATE_LIMIT/SERVER` |
| 畸形/空/截断结果 | 模拟非法 JSON、缺字段、空 choices、null content、length 截断，均拒绝 |
| 超时/取消 | MockWebServer 本地真实 socket 测试，验证 typed TIMEOUT、协程取消及 Call 释放 |
| 重定向 | 本地 302 测试，带 Authorization 的请求不会被跟随 |
| Prompt | 单次替换、源文本不注入 system role、缺少 `@text` 不丢原文、无自动跨源回退 |
| OpenAI 官方公网 | 无认证 GET `/v1/models` 返回 HTTP 401，仅证明端点可达；未测试授权翻译 |
| DeepSeek 公网 | 无认证 GET `/models` 返回 HTTP 401；未测试授权翻译 |
| OpenRouter 公网 | 无认证 GET `/api/v1/models` 返回 HTTP 200；不能推导 completion 可用 |
| Ollama | 本机 `127.0.0.1:11434` 无服务，连接失败，未验证 |
| Groq / AI Studio / 其他 | 未连接，未验证，不因为共享协议就宣称可用 |

公网 AI GET 探测使用 PowerShell/curl，不是带真实用户 Key 的 Provider completion 实测。
没有读取 IDE 中无关 YAML，没有索要、读取或记录个人服务凭证。

## 8. 回归与构建

JVM：**128 tests，0 failures，0 errors，0 skipped**。其中包含原有消息工具/历史/转发/作用域/UI 测试；
UI 测试通过不代表此次修改了 UI。仪器测试只编译，没有运行 Android Keystore 测试。

```powershell
$env:JAVA_HOME="$env:LOCALAPPDATA\TelegamiBuildTools\jdk-21.0.13+9"
$env:ANDROID_HOME="$env:LOCALAPPDATA\TelegamiBuildTools\AndroidSdk"
$env:Path="$env:JAVA_HOME\bin;$env:Path"
$env:TELEGAMI_TRANSLATION_LIVE="1"
./gradlew :app:testDebugUnitTest :app:assembleDebug :app:assembleRelease :app:assembleDebugAndroidTest --no-daemon --no-parallel --console=plain '-Pkotlin.compiler.execution.strategy=in-process'
python scripts/verify_translation.py --report artifacts/validation/translation-tests.json
python scripts/verify_official_targets.py --apk app/build/outputs/apk/debug/app-debug.apk --apk app/build/outputs/apk/release/app-release.apk
python scripts/verify_history_migration.py
```

需要强制重测公网时，为测试命令添加 `--rerun-tasks`，避免 Gradle 复用已有测试结果。
`TELEGAMI_TRANSLATION_LIVE` 不设为 `1` 时三项公网诊断会跳过；不能把缓存结果当成新一轮联网测试。

已通过：Release vital Lint、两个 APK 的 API 102/官方作用域/原图标资源检查、v2→v3 历史数据库
迁移与保留策略脚本、签名验证和 Release zipalign。保留现有 Gradle/AGP 弃用警告，不做无关构建系统重构。
Room Android 迁移、原有删除/编辑标记的 Telegram 实机回归仍待验证。

## 9. 最终 APK

代码提交 `454eedf` 后重新打包，后续交接文档不改变业务代码。

| 产物 | 路径 | 大小 |
| --- | --- | --- |
| 正式签名 Release | `app/build/outputs/apk/release/app-release.apk` | 13674333 bytes |
| Debug | `app/build/outputs/apk/debug/app-debug.apk` | 22160334 bytes |
| 待运行仪器测试 | `app/build/outputs/apk/androidTest/debug/app-debug-androidTest.apk` | 仅编译，不是设备验证报告 |

Release：`com.techsky.telegami`，版本 `3.1.3` / `30005`；未擅自修改版本号。
SHA-256：`7d31f125a699973ea8f7d88433808d8a42ec8ac0c71ea1d852e2923d93264b76`。
Debug SHA-256：`5762e94914973d259e98b5599f9f76b9dabe74feea642ba2a9af09e642efc61d`。
Release 使用原正式 RSA-4096 密钥，APK v2 签名通过；证书 SHA-256：
`bc80329b9ba7c8c8da2bc2b57057544d7b967477038f2037a2fb332d5a0186d7`。
未把 keystore、密码或个人 API Key 加入 Git 或 APK。

验证日志：`translation-signature.log`、`translation-package.log`、`translation-zipalign.log`，
均在 `artifacts/validation/`。128 项测试的可读汇总是 `translation-tests.json`。

## 10. 修改文件清单

主代码前缀：`app/src/main/java/com/aoya/telegami/`。

```text
XposedInit.kt
service/Config.kt
service/PrefManager.kt
hooks/messages/MessageTranslationHook.kt
translation/TranslationProvider.kt
translation/TranslationConfig.kt
translation/TranslationManager.kt
translation/TranslationHttp.kt
translation/TranslationFormatting.kt
translation/TranslationSelection.kt
translation/TelegramTranslationResolver.kt
translation/TranslationPreferences.kt
translation/TranslationSecretVault.kt
translation/TranslationCallerPolicy.kt
translation/TranslationBroker.kt
translation/TranslationIpc.kt
translation/llm/LlmConfig.kt
translation/llm/LlmPromptManager.kt
translation/providers/WebTranslators.kt
translation/providers/TelegramNativeTranslator.kt
translation/providers/OpenAICompatibleTranslator.kt
```

其他代码/配置文件：`.gitignore`、`app/build.gradle.kts`、`app/src/main/AndroidManifest.xml`、
`app/src/main/res/xml/translation_network_security.xml`、`scripts/analyze_translation.py`、`scripts/verify_translation.py`。
新增依赖仅为 OkHttp、Jsoup 和测试用 MockWebServer。

测试前缀：`app/src/test/java/com/aoya/telegami/translation/`：
`TranslationManagerTest.kt`、`WebTranslatorsTest.kt`、`OpenAICompatibleTranslatorTest.kt`、
`LlmPromptManagerTest.kt`、`TranslationFormattingTest.kt`、`TranslationSelectionTest.kt`、
`TranslationPreferencesTest.kt`、`TranslationHttpTest.kt`。
仪器测试：`app/src/androidTest/java/com/aoya/telegami/translation/TranslationSecretVaultTest.kt`。
其余为本报告、17/18 两份新文档、`artifacts/dexsql/translation-1310/` 证据和上述验证日志/JSON。
没有编辑 `ui/`、导航、本地化管理器、Room schema 或原消息工具业务实现。

## 11. 真实设备验收（未执行）

本次 `adb devices -l` 返回空列表。以下全部标记为 **未验证**，不能以 APK 安装/编译替代：

1. 官方 13.1.1 的菜单、图标、长文本/Caption 翻译、原生面板深浅色与语言选择。
2. 关闭/快速切换目标语言取消请求、连续重译、失败提示及旧回调不覆盖新结果。
3. 两账号切换、Native 当前账号连接、权限/额度错误及账号请求取消。
4. Remote Preferences 修改即时生效、管理进程冷启动、IPC 签名认证、配置保存失败提示。
5. 用户自己的 AI 配置、模型列表、实际翻译、错误 Key/Model、设备网络/VPN/超时。
6. Keystore 加解密与篡改拒绝、进程重启、手机重启、配置导出不含 Key。
7. 原有删除/编辑标记、编辑历史、复读、媒体无来源转发、原有设置回归。

设备连接后可先运行 `./gradlew :app:connectedDebugAndroidTest`；它只覆盖新增 Keystore 仪器测试，
不等于完成 Telegram/LSPosed 手工验收。日志应使用模块过滤并去除聊天原文/URL/个人信息：

```powershell
adb logcat -v threadtime | Select-String -Pattern 'Telegami|Translation|HookInstall|ModuleInit'
```

还需要 LSPosed 模块日志中的 `MessageTranslationHook` 安装结果、Telegram 包名/版本、所选源、
操作顺序及错误代码；**不需要提供 API Key**。

## 12. 参考来源

- NagramX 源码版本 `2db685af00a4352c877ecf96474cbf0494284715`：
  `tw/nekomimi/nekogram/translate/source/{GoogleAppTranslator.kt,YandexTranslator.kt,raw/BingTranslatorRaw.java,TelegramAPITranslator.kt,LLMTranslator.kt}`。
- `HTMLKeeper.java`：OctoGram/NagramX 的 HTML 往返思路，本项目未合并整个客户端或复用共享凭证。
- https://github.com/risin42/NagramX
- https://developers.openai.com/api/reference/resources/chat/subresources/completions/methods/create/
- https://developers.openai.com/api/reference/resources/models/methods/list/
- https://developer.android.com/guide/topics/manifest/application-element （`forceQueryable`，让宿主可发现 broker；不授予数据访问权限）

保持用户要求的 Chat Completions 协议，没有替换为 Responses API，也没有硬编码“最新模型”。
