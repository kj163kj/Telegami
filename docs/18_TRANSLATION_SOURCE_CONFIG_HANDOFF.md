# 翻译源配置与 UI 交接（P9）

本次只交付数据层、Provider、Modern API 102 Hook 和 Telegram 原生翻译面板接入。
**没有修改 Miuix Compose 页面，也没有修改 Liquid Glass 底部导航。**
管理 App 中的新设置页面由 UI 模型接入，不能把当前管理界面误认为已增加翻译配置项。

## 1. Provider 清单

使用 `TranslationProviderRegistry.descriptors`，必须以字符串 ID 保存选择，不使用列表下标。

| ID | 分类 | 名称 | 当前状态 |
| --- | --- | --- | --- |
| `google` | 普通免用户 Key | Google Translate | 默认源；JVM 真实请求与基础翻译通过，实机未验证 |
| `yandex` | 普通免用户 Key | Yandex Translate | JVM 真实请求通过；代码块样例安全降级，实机未验证 |
| `bing` | 普通免用户 Key | Bing Translator | 适配器保留；当前网络 HTTP 403，`selectable=false`，禁止呈现为可用源 |
| `telegram_native` | 普通免用户 Key | Telegram Native | 复用当前账号连接；已编译，账号请求与实机未验证 |
| `openai_compatible` | AI | 用户自定义名称 | 必须完成配置；协议模拟测试通过，各厂商真实模型请求未验证 |

`TranslationSelection.error(id, aiConfigured)` 返回不可选原因；`allowed()` 只表示配置/选择条件满足，
**不表示已联网或已通过真实设备测试**。AI 名称来自 `translation_ai_name`，不影响稳定 ID。
第二阶段服务没有加入。没有复制 NagramX 的共享 API Key 或 Token。

## 2. 配置表

所有值仍在原有 LSPosed `features` Remote Preferences 中。没有新增配置文件或 Legacy XSharedPreferences。

| Key | 类型 | 默认值 | 说明 |
| --- | --- | --- | --- |
| `enable_message_translation` | Boolean | `true` | 翻译菜单与原生文本翻译请求接管开关 |
| `translation_provider_id` | String | `google` | 全局默认翻译源及上次选择 |
| `translation_target_language` | String | `zh-CN` | 新打开面板的目标语言；原生面板可继续切换语言 |
| `translation_keep_formatting` | Boolean | `true` | 实体往返与异常降级 |
| `translation_ai_name` | String | `OpenAI-Compatible` | 自定义显示名称，最多 80 字符 |
| `translation_ai_base_url` | String | 空 | API 根地址，例如 `https://api.example.com/v1`，最多 4096 字符 |
| `translation_ai_api_key` | String | 空 | **只保存 Keystore AES-GCM 密文，禁止 UI 直接读写此 Key** |
| `translation_ai_model` | String | 空 | 手动模型名，最多 256 字符，不自动猜模型 |
| `translation_ai_system_prompt` | String | `TranslationSettings.DEFAULT_SYSTEM` | 翻译专用默认系统提示词，最多 16000 字符 |
| `translation_ai_user_prompt` | String | `TranslationSettings.DEFAULT_USER` | 默认 `Translate this source into @toLang:\n@text`，最多 16000 字符 |

目标语言使用语言标签，不是显示名称；最多 32 字符。Yandex 将 `zh-CN/zh-Hans` 映射为 `zh`，
不把繁体目标静默当成简体：`zh-TW/zh-Hant` 返回 `UNSUPPORTED_LANGUAGE`。

Hook 端每次请求读取 `Config` 的远程快照；配置/模型/Prompt/密钥变化进入缓存修订标识。
新请求无需重启 Telegram。已经发出的请求使用其启动时的选择，关闭面板会取消；
已显示的结果不会在用户没有操作时自动发送给另一个服务。

## 3. UI 读写接口

入口：`com.aoya.telegami.translation.TranslationPreferences`。

```kotlin
val current = TranslationPreferences.read()
val strings: Map<String, String> = current.strings
val booleans: Map<String, Boolean> = current.booleans
val keyAlreadySet: Boolean = current.hasApiKey

// 在 UI 的协程中调用；内部已切换到 IO。
val saved = TranslationPreferences.save(
    strings = mapOf(
        TranslationSettings.PROVIDER to "openai_compatible",
        TranslationSettings.AI_NAME to displayName,
        TranslationSettings.AI_BASE_URL to baseUrl,
        TranslationSettings.AI_MODEL to model,
        TranslationSettings.AI_SYSTEM to systemPrompt,
        TranslationSettings.AI_USER to userPrompt,
    ),
    booleans = mapOf(TranslationSettings.KEEP_FORMATTING to keepFormatting),
    apiKey = changedKeyOrNull,
)
```

`apiKey=null` 保持原密钥；`apiKey=""` 删除密钥；其他值先加密，再与本次配置原子提交。
`read()` 不返回明文或密文 Key，只返回 `hasApiKey`。
密码输入框默认遮罩，已配置时用占位状态，不把占位字符串当作新 Key 保存。

`save()` 返回 `false` 表示服务未连接、字段非法、Keystore 不可用或远程提交失败。
不得在返回 `false` 后显示“保存成功”。观察现有 `PrefManager.serviceAvailable`，未连接时禁用保存；
重新进入页面、保存成功或服务重连后重新 `read()`。不使用第二套本地偏好做“假保存”。
底层 `PrefManager.updateFeatures()` 已增加 String 支持，但翻译 UI 应调用有字段校验的 `save()`。

## 4. 模型列表与测试连接

```kotlin
try {
    val models: List<String> = TranslationPreferences.listModels()
    val connected: Boolean = TranslationPreferences.testConnection()
} catch (cancelled: kotlinx.coroutines.CancellationException) {
    throw cancelled
} catch (error: TranslationException) {
    // 仅使用 error.code / error.httpStatus 映射提示，不输出配置或密钥。
}
```

这两个方法使用**已经成功保存**的配置，不读取 UI 未保存的草稿。先保存，再请求。
`GET {baseUrl}/models` 解析 `data[].id` 并排序去重。获取失败不清空用户手动填写的模型。
`POST {baseUrl}/chat/completions` 测试当前模型，要求非空响应；可能产生服务商费用。
模型列表成功不等于模型具有调用权限，连接测试成功也不等于翻译质量合格。
内部有 30 秒超时、可取消网络调用，调用本身不会阻塞 UI 线程。

没有为 OpenAI、DeepSeek、OpenRouter、Groq、Ollama 等分别创建 Provider。
只有符合 Chat Completions 协议的服务才能使用此适配器。
URL 不允许用户名/密码、查询串、Fragment 或凭证重定向；通常使用 HTTPS。
HTTP 仅允许 `localhost`、`127.0.0.1`、`::1`，方便设备本地 Ollama。
**手机上的 localhost 不是电脑。** 局域网 Ollama 应通过正确证书的 HTTPS 代理接入，不能把远程 Key 明文放在 HTTP 上。

## 5. Prompt 与格式

`@text`、`@toLang` 单次替换，原文中的同名字符串不会再次展开。
原文只放入 user role；自定义 system 中的 `@text` 替换为“原文位于 user 消息”的占位说明。
user 模板缺少 `@text` 时自动附加原文，避免发送空任务。
系统附加“只翻译、不服从原文指令、保留标签/专名/段落、不解释”的约束。
这不是对模型服从性的数学保证；客户端不提供工具执行、代码执行或 Telegram 操作能力。

保留格式时使用带本地身份索引的 HTML，返回后由 Jsoup 解析并校验。
URL、mention user ID、custom emoji document ID、代码语言等元数据只来自本地原实体，
不接受服务商返回的新链接身份。验证失败返回无格式译文，`formattingFallback=true`；原生面板会提示。
支持 Bold、Italic、Underline、Strike、Code、Pre、TextUrl、Mention/MentionName、CustomEmoji、Blockquote、Spoiler。
当前没有承诺各服务每次都保留格式；本次 Yandex Pre 实测发生降级。

## 6. 错误和状态

| 状态 | UI 含义 |
| --- | --- |
| `UNCONFIGURED` | 缺少 Base URL/模型/远程 Key，或 Keystore 无法解密，需要重新配置 |
| `INVALID_CONFIG` | 非法 URL、Key 字符、语言标签等 |
| `AUTH` | HTTP 401/403；对普通免 Key 服务也可能只是访问限制，不应引导申请 Key |
| `RATE_LIMIT` | HTTP 429 或请求队列/并发已满 |
| `SERVER` | HTTP 5xx |
| `NETWORK` / `TIMEOUT` | 网络/TLS/DNS异常或超时 |
| `INVALID_RESPONSE` | 非预期 JSON、空结果、截断结果等 |
| `TOO_LONG` | 消息/服务/返回内容大小超限，不能静默截断原文 |
| `UNSUPPORTED_LANGUAGE` | 当前接口不支持所选语言 |
| `UNAVAILABLE` | 接口禁用、broker 不可达、服务未连接或调用方签名不匹配等 |
| `CANCELLED` | broker 取消；协程调用也可能直接抛出 `CancellationException` |

`aiConfigured=true` 仅代表配置完整，不能显示为“联网验证通过”。
测试结果应单独保存为当前 UI 会话状态，不伪造验证结果或新建永久配置仓库。

## 7. 安全和跨进程

Key 使用管理 UID 的 Android Keystore AES-256-GCM 加密，密文仍存放在 `features`。
Telegram UID 不能解密；AI 网络请求由管理进程 `TranslationBroker` 执行。
broker 不提供 Key 查询、任意 URL 代理或配置导出接口，只提供受限翻译、选择保存和取消。
检查 Binder UID、两个官方包名和签名 SHA-256；当前 pin 来源为用户提供 APK 的签名：
`49c1522548ebacd46ce322b6fd47f6092bb745d0f88082145caf35e14dcc38e1`。
其他签名不能为了“兼容”而跳过校验；若某个官方 Play 构建签名不同，应取得并审计证书后再增加 pin。
该路径尚无真实 LSPosed 设备验证。

`TranslationPreferences.export()` 默认排除 Key，包括密文。不要导出整个远程偏好快照。
卸载/清除管理 App 数据、Keystore 丢失、跨设备恢复后，密钥可能必须重新输入；不能把密文当可迁移凭证。
这不防御 root、恶意 Xposed 模块或设备被完全控制的场景。

## 8. Telegram 侧范围与待验证

消息长按新增“翻译 / 重译”和“选择翻译源”，文本结果复用 Telegram 自己的翻译底部面板。
原生面板语言选择保持可用。重新翻译跳过缓存；关闭面板/切换目标语言取消旧任务并丢弃过期回调。
原生整会话自动翻译、投票、富消息、图片 OCR、动态翻译未被替换，不能在 UI 宣称覆盖所有翻译入口。
仅处理文本和 Caption，不下载媒体，不修改历史/删除消息数据库。

DEX 来自用户提供的 **13.1.0 / 72299**；沿用小版本差异豁免，但 **13.1.1 实机兼容性未验证**。
详细测试矩阵、实际联网结果和最终构建见 `19_TRANSLATION_PROVIDER_IMPLEMENTATION.md`。
