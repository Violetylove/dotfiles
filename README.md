# Winter's Dotfiles

个人开发环境与桌面环境的配置文件合集。从编辑器、终端、Shell，到窗口管理器与桌面美化，覆盖 Windows 与 Linux 两大平台，全部以结构化目录收纳于此，方便跨设备同步与迁移。

## 目录总览

| 目录 | 平台 | 内容 |
| --- | --- | --- |
| [`backgrounds/`](#背景壁纸) | 通用 | 壁纸合集 |
| [`git/`](#git) | 通用 | Git 全局配置 |
| [`idea/`](#jetbrains-idea) | 通用 | JetBrains IDE 的 Vim 插件配置（IdeaVim） |
| [`linux/`](#linux) | Linux | Arch Linux 桌面环境配置（i3 / awesome / polybar / rofi / sddm 等） |
| [`nvim/`](#neovim) | 通用 | 自用 Neovim 配置（基于 Lazy.nvim） |
| [`nvim-astro/`](#astronvim) | 通用 | AstroNvim v4+ 配置（适配 VSCode Neovim 插件） |
| [`shell/`](#shell) | 通用 | 终端模拟器与 Shell 配置（alacritty / wezterm / PowerShell / zsh / starship） |
| [`vscode/`](#visual-studio-code) | 通用 | Visual Studio Code 配置 |
| [`windows/`](#windows) | Windows | Windows 工具链配置（GlazeWM / komorebi / scoop / yasb 等） |

## 背景壁纸

`backgrounds/` 收录了 15 张壁纸，以 EVA（新世纪福音战士）与 Violet Evergarden（紫罗兰永恒花园）等二次元风格为主，供桌面（如 Linux 下的 `feh`、Windows 桌面）使用。

## git

`git/.gitconfig` 为 Git 全局配置：

- 用户信息（name / email）
- 默认编辑器设为 `nvim`
- `git init` 默认分支设为 `main`

## JetBrains IDEA

`idea/.ideavimrc` 是 JetBrains 全家桶中 IdeaVim 插件的配置文件，包含：

- **插件**：`vim-surround`（环绕编辑）、`easymotion`（快速跳转）、`nerdtree`（文件树）、`vim-commentary`（注释）、`vim-highlightedyank`（高亮复制）
- **基础设置**：剪贴板共享、相对行号、增量搜索、智能大小写等
- **键位映射**：以 `<Space>` 为 leader，支持窗口切换、错误跳转、格式化、重命名等 IDE 操作与 Vim 操作的混合映射，并通过 `sethandler` 精细划分按键归属

## Linux

`linux/` 是 Arch Linux 桌面环境的整套配置，按组件分目录存放：

| 目录 | 组件 | 说明 |
| --- | --- | --- |
| `awesome/` | Awesome WM | 平铺窗口管理器配置（`rc.lua`） |
| `i3/` | i3 | 平铺窗口管理器配置与锁屏脚本（`config`、`lock.sh`） |
| `polybar/` | polybar | 状态栏（`config.ini` 主配置 + `colors.ini` 配色 + `modules.ini` 模块 + `launch.sh` 启动脚本） |
| `rofi/` | rofi | 应用启动器，内置 4 套主题：`rounded-nord-dark`、`rounded-green-dark`、`rounded-common`、`squared-everforest` |
| `sddm/` | SDDM | 登录管理器，内置 catppuccin 系列主题（latte / macchiato） |
| `dunst/` | dunst | 通知守护进程 |
| `picom/` | picom | 合成器，实现圆角、透明、平滑过渡等特效 |
| `neofetch/` | neofetch | 终端系统信息展示（含自定义 logo） |
| `pkg-list.txt` | — | Arch 软件包清单（终端、字体、输入法、窗口管理器等，便于一键重装） |

SDDM 主题安装方式见 `linux/sddm/README.md`：将主题目录放入 `/usr/share/sddm/themes`，并在 `/etc/sddm.conf` 中指定：

```ini
[Theme]
Current=catppuccin-macchiato
```

## Neovim

`nvim/` 是基于 [Lazy.nvim](https://github.com/folke/lazy.nvim) 的自用配置，入口为 `init.lua`，按 `core`（核心）与 `plugins`（插件）分层组织：

- **core/**：基础设置（options）、键位（keymaps）、自动命令（autocmds）、插件管理器（lazy）、主题命令（theme-cmd）
- **plugins/ui/**（界面与外观）：alpha（启动页）、bufferline、lualine、barbecue / dropbar（面包屑）、gitsigns、rainbow-delimiters、indent-blankline、scrollbar、specs、dressing，以及多套配色主题（catppuccin、everforest、gruvbox、hardhacker、onedark、rose-pine、tokyonight）
- **plugins/tools/**（工具）：telescope（模糊搜索，含 frecency 高频优先）、which-key、nvim-tree、toggleterm、flash、aerial、mini.nvim、persistence（会话持久化）、nvim-notify、fidget、accelerated-jk、nvim-lastplace、markdown-preview、vim-tmux-navigator、vim-visual-multi 等
- **plugins/code/**（代码能力）：LSP 体系（lspconfig + mason + mason-lspconfig）、nvim-cmp（补全）、treesitter（语法高亮）、conform（格式化）、trouble（诊断列表）

## AstroNvim

`nvim-astro/` 是 [AstroNvim](https://github.com/AstroNvim/AstroNvim) v4+ 的用户配置模板，通过 `lua/plugins/` 下各文件定制 AstroNvim 的默认行为（UI、LSP、Mason、Alpha 启动页等）。其中 `neovim.yml` 与 `lua/plugins/vscode.lua` 专为 VSCode 的 Neovim 插件场景做了适配。

安装方式（详见 `nvim-astro/README.md`）：备份现有 `~/.config/nvim` 等目录后，将本目录克隆至 `~/.config/nvim`，启动 `nvim` 即可自动完成初始化。

## Shell

`shell/` 收纳了各终端模拟器与 Shell 的配置：

| 目录 | 说明 |
| --- | --- |
| `alacritty/` | Alacritty 配置（`alacritty.toml`）与 15 套配色主题，主题切换只需修改 `import` 行 |
| `wezterm/` | WezTerm 配置，采用模块化 Lua 结构：`config/`（外观、键位、域、字体、通用、启动）、`events/`（左右状态栏、标签页标题等）、`utils/`（GPU 适配、平台判断等工具），入口为 `wezterm.lua` |
| `power_shell/` | PowerShell 配置：`Microsoft.PowerShell_profile.ps1`（PSReadLine 补全、Terminal-Icons、z 目录跳转，以及大量 git / scoop 相关别名与函数）、`terminal-schemes.json`（终端配色方案，供 Windows Terminal 导入） |
| `zsh/` | Zsh 配置（`.zshrc` + `.zimrc`），基于 [Zim](https://github.com/zimfw/zim) 框架，含自动补全、语法高亮、powerlevel10k 主题与常用别名 |
| `starship/` | Starship 提示符主题（tokyonight、gruvbox-rainbow、nerd-fonts-symbols），任选其一复制为 `~/.config/starship.toml` 即可 |

## Visual Studio Code

`vscode/` 包含三份配置：

- `settings.json`：编辑器设置（字体、格式化、相对行号、Git、终端等）
- `keybindings.json`：命令与插件命令的快捷键绑定
- `.vscodevimrc`：VSCodeVim 插件的按键映射

启用 `.vscodevimrc` 需要在 `settings.json` 中开启：

```json
{
  "vim.vimrc.enable": true,
  "vim.vimrc.path": "D:\\Your\\VSCode\\Vim\\.vscodevimrc\\Path"
}
```

## Windows

`windows/` 是 Windows 平台工具链的配置集合：

| 目录 | 工具 | 说明 |
| --- | --- | --- |
| `GlazeWM/` | [GlazeWM](https://github.com/lars-berger/GlazeWM) | 平铺窗口管理器（`config.yaml`），配置位于 `$HOME\.glaze-wm\config.yaml`，内置顶部状态栏与圆角焦点边框 |
| `komorebi/` | [komorebi](https://github.com/LGUG2Z/komorebi) | 平铺窗口管理器（`komorebi.ps1` + 生成的 `komorebi.generated.ps1`），与 whkd 搭配使用 |
| `whkd/` | whkd | 全局快捷键守护进程（`whkdrc`），为 komorebi 提供 Alt 键位操作（焦点、移动、工作区切换等） |
| `lf/` | [lf](https://github.com/gokcehan/lf) | 终端文件管理器（`lfrc` + 图标与配色），配置路径 `$HOME\AppData\Local\lf` |
| `scoop/` | [Scoop](https://github.com/ScoopInstaller/Scoop) | 包管理器配置：`apps-list.json`（已安装应用与 bucket 清单，可作备份）、`config.json` |
| `yasb/` | yasb | 现代化状态栏（`config.yaml` + `styles.css`），支持亚克力模糊、多组件布局 |
| `msys2/` | MSYS2 | 启动脚本（`msys2_shell.cmd`），默认 bash 登录 Shell |

## 许可

[MIT](LICENSE) © Winter Yuan
