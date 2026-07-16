# Nello QA

更新时间：2026-07-16

## 接口核对

- `pet.json` ID：`nello`
- `spriteVersionNumber`：`2`
- 图集路径：`spritesheet.webp`
- 图集规格：`1536x2288`
- 单格规格：`192x208`
- 行列规格：8 列 x 11 行
- v2 neutral/front fallback：row 0 column 6 已补充。
- 主资产来源：`ZUNGJYU-dotcom/codex-nailong-pet` 根目录版。

## 动画行

| Row | State | 状态 |
| --- | --- | --- |
| 0 | idle | 呼吸、眨眼 |
| 1 | running-right | 向右移动 |
| 2 | running-left | 向左移动 |
| 3 | waving | 挥手 |
| 4 | jumping | 跳跃 |
| 5 | failed | 失败/难过 |
| 6 | waiting | 等待用户 |
| 7 | running | 工作中 |
| 8 | review | 审查/检查 |
| 9 | look directions A | 000 到 157.5 度 |
| 10 | look directions B | 180 到 337.5 度 |

## 当前质量结论

- 此前程序化生成版本还原度差，已从主版本移除。
- 当前主版本使用现成高还原 Codex v2 奶龙图集，视觉质量明显更接近奶龙形象。
- 项目目录已通过 `validate_atlas.py --require-v2`：`ok: true`，`errors: []`，`warnings: []`。
- 安装目录 `C:\Users\11443\.codex\pets\nello` 已通过同一校验。

## 已知限制

- 上游视觉资产并未授予完整开源许可；公开发布时需保留 NOTICE，并避免商业用途或官方授权暗示。
- 这是 AI 辅助生成的粉丝向还原包，不是官方素材。
- v3-laughing 候选图集在本地校验时无法解码，暂不采用。
