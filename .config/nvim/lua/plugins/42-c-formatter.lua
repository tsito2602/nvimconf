return {
  {
    "Diogo-ss/42-C-Formatter.nvim",
    cmd = "CFormat42",
    ft = { "c", "cpp" },
    config = function()
      local formatter = require("42-formatter")
      formatter.setup({
        formatter = "c_formatter_42",
        filetypes = { c = true, h = true, cpp = true, hpp = true },
      })
    end,
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        c = { "c_formatter_42" },
        h = { "c_formatter_42" },
        cpp = { "c_formatter_42" },
        hpp = { "c_formatter_42" },
      },
      formatters = {
        c_formatter_42 = {
          command = "c_formatter_42",
          stdin = true,
        },
      },
    },
  },
}
