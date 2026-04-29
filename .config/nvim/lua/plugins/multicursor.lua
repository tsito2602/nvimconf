-- Ctrl+D: マルチカーソル (VSCodeライク)
return {
  "mg979/vim-visual-multi",
  branch = "master",
  init = function()
    -- Ctrl+D で単語を選択 & 次の同じ単語を追加 (VSCode: Ctrl+D)
    vim.g.VM_maps = {
      ["Find Under"] = "<C-d>",
      ["Find Subword Under"] = "<C-d>",
      ["Select All"] = "<C-S-l>",
      ["Add Cursor Down"] = "<C-S-Down>",
      ["Add Cursor Up"] = "<C-S-Up>",
    }
  end,
}
