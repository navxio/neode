return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "php-cs-fixer",
        "phpactor",
      })
    end,
  },

  -- Add `server` and setup lspconfig
  {
    "neovim/nvim-lspconfig",
    dependencies = {},
    opts = {
      servers = {
        phpactor = {},
      },
    },
  },

  -- Setup null-ls with `phpcsfixer`
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")
      opts.sources = vim.list_extend(opts.sources, {
        nls.builtins.formatting.phpcsfixer,
      })
    end,
  },
}
