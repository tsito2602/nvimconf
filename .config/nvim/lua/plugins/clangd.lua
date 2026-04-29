return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {
          before_init = function(params, config)
            local root = config.root_dir or vim.fn.getcwd()
            local flags = { "-I" .. root }

            for _, dir in ipairs({ "inc", "include" }) do
              local path = root .. "/" .. dir
              if vim.fn.isdirectory(path) == 1 then
                table.insert(flags, "-I" .. path)
              end
            end

            params.initializationOptions = params.initializationOptions or {}
            params.initializationOptions.fallbackFlags = flags
          end,
        },
      },
    },
  },
}
