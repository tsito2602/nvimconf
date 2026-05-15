return {
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        python = { "flake8", "mypy" },
      },
      linters = {
        flake8 = {
          cmd = vim.fn.expand("~/.local/bin/flake8"),
        },
        mypy = {
          cmd = vim.fn.expand("~/.local/bin/mypy"),
          prepend_args = { "--strict" },
        },
      },
    },
  },
}
