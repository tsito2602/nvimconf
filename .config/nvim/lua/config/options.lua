-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- システムクリップボードを使用
vim.opt.clipboard = "unnamedplus"

-- 行番号
vim.opt.number = true
vim.opt.relativenumber = true

-- タブ・インデント (VSCode default)
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- スクロール余白 (VSCodeライク)
vim.opt.scrolloff = 8

-- 検索
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true

-- マウス操作を有効化
vim.opt.mouse = "a"

-- 行末の折り返しなし
vim.opt.wrap = false

-- 分割方向 (VSCodeライク)
vim.opt.splitright = true
vim.opt.splitbelow = true

-- フォント
vim.opt.guifont = "JetBrainsMono Nerd Font:h13"

-- カーソル行をハイライト
vim.opt.cursorline = true

-- WezTerm上でもモードごとにカーソル点滅を有効化
vim.opt.guicursor = table.concat({
  "n-v-c:block-blinkwait0-blinkon400-blinkoff400",
  "i-ci:ver25-blinkwait0-blinkon400-blinkoff400",
  "r-cr:hor20-blinkwait0-blinkon400-blinkoff400",
}, ",")

-- conceal無効化（マークダウンの```や括弧などを常に表示）
vim.opt.conceallevel = 0

-- 保存時の自動整形をデフォルト無効化（<leader>ufで一時有効化）
vim.g.autoformat = false
