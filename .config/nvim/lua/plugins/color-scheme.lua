return {
  {
    "xiyaowong/transparent.nvim",
    lazy = false,
    opts = {
      enable = true,
      exclude_groups = { "CursorLine", "CursorLineNr" },
    },
  },
  { "tokyonight.nvim", enabled = false },
  { "catppuccin/nvim", enabled = false },
  {
    "craftzdog/solarized-osaka.nvim",
    enabled = false,
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.opt.termguicolors = true
      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "*",
        callback = function()
          vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
          vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
          vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

          -- Markdown ヘッダーの階層ごとに色を設定
          vim.api.nvim_set_hl(0, "@markup.heading.1.markdown", { fg = "#E46876", bold = true })
          vim.api.nvim_set_hl(0, "@markup.heading.2.markdown", { fg = "#FF9E3B", bold = true })
          vim.api.nvim_set_hl(0, "@markup.heading.3.markdown", { fg = "#E6C384", bold = true })
          vim.api.nvim_set_hl(0, "@markup.heading.4.markdown", { fg = "#98BB6C", bold = true })
          vim.api.nvim_set_hl(0, "@markup.heading.5.markdown", { fg = "#7FB4CA", bold = true })
          vim.api.nvim_set_hl(0, "@markup.heading.6.markdown", { fg = "#938AA9", bold = true })
        end,
      })
      vim.cmd.colorscheme("kanagawa")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },
}
