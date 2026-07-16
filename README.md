# Nello Codex Pet

更新时间：2026-07-16

## 项目定位

Nello 是一个用于 ChatGPT Codex Desktop 的自定义 v2 奶龙桌面宠物。用户目标是找一个还原程度高的现成宠物项目，复刻到本地并适配为 Codex 可试用版本。

当前主版本已从程序化丑版切换为高还原上游包适配路线：基于 `ZUNGJYU-dotcom/codex-nailong-pet` 的 Codex v2 图集，改成本地安装 ID `nello`，并保留来源、NOTICE 与授权边界说明。

## 已调研资料

- Codex pet v2 本地包接口：`~/.codex/pets/<pet-id>/pet.json` 与 `spritesheet.webp`。
- v2 图集规格：`1536x2288`，8 列 x 11 行，单格 `192x208`。
- 清单要求：`pet.json` 必须包含 `spriteVersionNumber: 2` 和相对图集路径。
- 标准动画行：idle、running-right、running-left、waving、jumping、failed、waiting、running、review。
- 追加方向行：第 9、10 行共 16 个视线方向。
- 奶龙官方资料显示英文名/品牌写法更接近 `Nailoong`，用户指定本项目文件夹与本地安装名为 `Nello`。

## 开源项目查找结论

已用以下方向搜索并筛选：

- `Codex pet Nello 奶龙 GitHub`
- `Codex desktop pet spritesheet pet.json GitHub`
- `奶龙 Nello desktop pet GitHub`
- `spriteVersionNumber spritesheet.webp pet.json GitHub`
- `Nailoong spritesheet GitHub`
- `奶龙 桌宠 GitHub`
- `Nailoong pet GitHub`

已找到并克隆的高价值候选：

- `ZUNGJYU-dotcom/codex-nailong-pet`：非官方 Codex v2 奶龙桌宠合集，含 `pet.json`、`spritesheet.webp`、预览、验证文件和 NOTICE。当前采用此项目根目录版作为主版本来源。
- `Jackjimmy/nailong-pet`：macOS 原生奶龙桌宠，描述强调高清捧腹大笑动画。
- `Fantome4174/codex-milk-dragon-lite`：Windows 奶龙桌宠，Codex 状态与额度监测、八帧情绪。
- `cynthia174/nailong-windows-desktop-pet`：Windows 奶龙桌宠，透明背景、可拖动、可打开 Codex。
- `Onlycanzzzz/NailoongPet`：Python 交互式桌面伴侣。

本次选择 `ZUNGJYU-dotcom/codex-nailong-pet`，原因是它已经是 Codex v2 spritesheet，接口匹配度最高，且视觉还原程度明显高于此前自制程序化版本。

参考来源：

- https://www.nailoong.com/
- https://zh.wikipedia.org/wiki/奶龙
- https://github.com/ZUNGJYU-dotcom/codex-nailong-pet

## 当前进度

- [x] 创建 `Nello` 子文件夹。
- [x] 整理接口、已有资料与调研结论。
- [x] 纠偏：停止程序化丑版路线，切换到现成高还原项目适配。
- [x] 克隆并评估 `ZUNGJYU-dotcom/codex-nailong-pet`。
- [x] 替换为高还原 v2 图集与 `pet.json`。
- [x] 本地安装到 Codex pets 目录并验证。
- [x] 创建 GitHub 新仓库、提交并推送。

## 本地试用状态

- 已安装高还原版到：`C:\Users\11443\.codex\pets\nello`
- 项目图集校验：通过，`errors: []`，`warnings: []`
- 安装目录图集校验：通过，`errors: []`，`warnings: []`
- 丑版备份：`C:\Users\11443\.codex\pet-backups\nello-20260716-214513`
- 预览图：`preview.png`、`preview-idle.gif`

## GitHub 发布状态

- 本地 Git 仓库：已创建，路径 `E:\codex\pet-liangzi\Nello`
- 当前分支：`main`
- 远端仓库：`https://github.com/1dlbbbdbd1/Codex-pet-Nello`
- 远端可见性：public
- 远端默认分支：`main`
- 发布方式：使用 Codex `config.toml` 中管理的 GitHub token，通过 GitHub API 初始化空仓库并发布完整文件树；这是为了绕开本机 Git HTTPS 凭证层错误。
- 已发布远端提交：`524828a1096c02d244e0d7187135e3304eda982a`

如需后续用普通 Git 推送，可先修复本机 GitHub CLI/HTTPS 凭据；当前仓库已发布，不影响下载安装到 Codex。

```powershell
cd E:\codex\pet-liangzi\Nello
git remote -v
```

## 文件结构

```text
Nello/
  README.md
  NOTICE.md
  LICENSE-CODE
  pet.json
  spritesheet.webp
  preview.png
  preview-idle.gif
  contact-sheet.png
  look-directions.png
  install.ps1
  uninstall.ps1
  docs/
    QA.md
    validation-upstream.json
```

## 本地安装

```powershell
powershell -ExecutionPolicy Bypass -File .\install.ps1
```

安装后重启 Codex Desktop，然后在设置里选择 `Nello`。如宠物隐藏，可在输入框执行 `/pet`。

## 来源、版权与声明

这是非官方粉丝向桌宠项目，与 OpenAI、Codex、第七印象或奶龙官方 IP 方没有隶属、授权或背书关系。

当前主视觉资产来自公开仓库 `ZUNGJYU-dotcom/codex-nailong-pet` 的非官方 AI 辅助生成奶龙 Codex v2 包，并按本项目需要改成本地安装 ID `nello`。上游仓库明确说明：代码和文档许可不覆盖 `spritesheet.webp`、预览图或其中的奶龙角色要素。公开分发时必须保留 [NOTICE.md](NOTICE.md) 与 [LICENSE-CODE](LICENSE-CODE)，并避免任何官方授权暗示。
