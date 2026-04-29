-- ToggleTerm: VSCodeライクなターミナル
return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {
    open_mapping = [[<C-`>]],
    direction = "horizontal",
    size = 15,
    shade_terminals = true,
    start_in_insert = true,
  },
}
