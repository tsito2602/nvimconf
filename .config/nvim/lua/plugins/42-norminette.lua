return {
  "MrSloth-dev/42-NorminetteNvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-mini/mini.icons",
  },
  ft = { "c", "cpp" },
  keys = {
    { "<leader>n", "<cmd>NorminetteToggle<cr>", desc = "Norminette Toggle" },
    { "<leader>ns", "<cmd>NorminetteSizeToggle<cr>", desc = "Norminette Size Toggle" },
  },
  config = function()
    require("norminette").setup()

    -- プラグインのバグ回避: アンロード済みバッファへのTreesitterアクセスを防ぐ
    vim.api.nvim_create_autocmd("BufUnload", {
      pattern = { "*.c", "*.h" },
      callback = function(ev)
        pcall(vim.api.nvim_clear_autocmds, { group = "NorminetteFunctionSize", buffer = ev.buf })
      end,
    })
  end,
}
