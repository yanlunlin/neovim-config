# Neovim Config

個人 Neovim 設定，使用 [lazy.nvim](https://github.com/folke/lazy.nvim) 作為插件管理器。

## 需求

- Neovim >= 0.10
- Git
- [Nerd Font](https://www.nerdfonts.com/)（圖示顯示用）
- `cargo`（blink.cmp Rust fuzzy matcher，選用）

## 安裝

```bash
# 備份原有設定（若有）
mv ~/.config/nvim ~/.config/nvim.bak

# clone 本設定
git clone https://github.com/yanlunlin/neovim-config ~/.config/nvim

# 啟動 Neovim，lazy.nvim 會自動安裝所有插件
nvim
```

## 目錄結構

```
├── init.lua              # 進入點
└── lua/
    ├── config/
    │   ├── lazy.lua      # lazy.nvim 初始化與 leader 設定
    │   ├── config.lua    # 基本選項（行號、縮排、診斷等）
    │   ├── keymap.lua    # 全域快捷鍵
    │   └── autocmd.lua   # 自動命令
    └── plugins/
        ├── colorscheme.lua   # 主題、狀態列、buffer 標籤、UI
        ├── lsp.lua           # LSP、自動補全
        ├── treesitter.lua    # 語法高亮與縮排
        ├── snack.lua         # snacks.nvim 工具集
        ├── flash.lua         # 快速跳轉
        ├── surround.lua      # 成對符號操作、自動補全括號
        └── terminal.lua      # 浮動終端
```

## 插件列表

### 介面

| 插件 | 說明 |
|------|------|
| [catppuccin/nvim](https://github.com/catppuccin/nvim) | 配色方案（Mocha） |
| [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | 狀態列 |
| [romgrk/barbar.nvim](https://github.com/romgrk/barbar.nvim) | Buffer 標籤列 |
| [folke/noice.nvim](https://github.com/folke/noice.nvim) | UI 通知與命令列美化 |
| [rcarriga/nvim-notify](https://github.com/rcarriga/nvim-notify) | 通知彈窗 |
| [HiPhish/rainbow-delimiters.nvim](https://github.com/HiPhish/rainbow-delimiters.nvim) | 彩虹括號 |
| [folke/which-key.nvim](https://github.com/folke/which-key.nvim) | 快捷鍵提示 |
| [nvim-tree/nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) | 檔案圖示 |

### LSP 與補全

| 插件 | 說明 |
|------|------|
| [mason-org/mason.nvim](https://github.com/mason-org/mason.nvim) | LSP/DAP/Linter 安裝管理 |
| [mason-org/mason-lspconfig.nvim](https://github.com/mason-org/mason-lspconfig.nvim) | Mason 與 lspconfig 整合 |
| [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | LSP 設定 |
| [saghen/blink.cmp](https://github.com/saghen/blink.cmp) | 自動補全（Enter 確認） |
| [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets) | 常用 snippet 集合 |

### 語法與編輯

| 插件 | 說明 |
|------|------|
| [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | 語法高亮（lua、c、cpp、python） |
| [folke/flash.nvim](https://github.com/folke/flash.nvim) | 快速游標跳轉 |
| [nvim-mini/mini.surround](https://github.com/echasnovski/mini.surround) | 成對符號新增／刪除 |
| [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs) | 自動補全括號 |

### 工具

| 插件 | 說明 |
|------|------|
| [folke/snacks.nvim](https://github.com/folke/snacks.nvim) | Dashboard、Picker、縮排線、滾動等工具集 |
| [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim) | 浮動終端 |
| [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Git 狀態標示 |

## 基本設定

- **Leader 鍵**：`Space`
- **縮排**：2 個空格（expandtab）
- **行號**：顯示絕對行號 + 相對行號
- **Cursor line**：啟用
- **診斷顯示**：virtual text（inline），關閉底線與圖示

## 快捷鍵

### 全域

| 按鍵 | 模式 | 說明 |
|------|------|------|
| `jj` | Insert | 退出 Insert 模式（等同 `<Esc>`） |
| `<leader>L` | Normal | 開啟 Lazy.nvim 管理介面 |
| `<leader>?` | Normal | 顯示目前 buffer 的快捷鍵（which-key） |

### 跳轉（flash.nvim）

| 按鍵 | 模式 | 說明 |
|------|------|------|
| `s` | Normal / Visual / Operator | Flash 跳轉 |
| `S` | Normal / Visual / Operator | Flash Treesitter 跳轉 |
| `r` | Operator | Remote Flash |
| `R` | Operator / Visual | Treesitter 搜尋 |
| `<C-s>` | Command | 切換 Flash 搜尋 |

### 成對符號（mini.surround）

| 按鍵 | 說明 |
|------|------|
| `<leader>sa` | 新增成對符號 |
| `<leader>sd` | 刪除成對符號 |

### 補全（blink.cmp）

| 按鍵 | 說明 |
|------|------|
| `<Enter>` | 確認補全 |
| `<C-Space>` | 開啟補全選單／文件 |
| `<C-n>` / `<C-p>` | 選擇下／上一個項目 |
| `<C-e>` | 關閉補全選單 |

### 終端（toggleterm.nvim）

| 按鍵 | 說明 |
|------|------|
| `<C-\>` | 開關浮動終端 |
