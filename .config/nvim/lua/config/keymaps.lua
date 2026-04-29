-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- Ctrl+B: ファイルツリー開閉
map("n", "<C-b>", "<cmd>Neotree toggle<CR>", { desc = "Toggle file tree" })

-- F3: 現在のバッファを整形
map({ "n", "v" }, "<F3>", function()
  require("conform").format({ async = false, lsp_format = "fallback" })
end, { desc = "Format buffer" })
