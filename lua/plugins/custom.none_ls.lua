return {
  {
    "nvimtools/none-ls.nvim",
    event = "LazyFile",
    opts = function()
      local nls = require("null-ls")
      return {
        root_dir = require("null-ls.utils").root_pattern(".null-ls-root", ".neoconf.json", "Makefile", ".git"),
        sources = {
          nls.builtins.formatting.stylua,
          nls.builtins.formatting.shfmt,
          nls.builtins.diagnostics.sqlfluff.with({
            extra_args = { "--dialect", "postgres" },
          }),
          nls.builtins.diagnostics.dotenv_linter,
          nls.builtins.formatting.prettierd,
          nls.builtins.formatting.djlint,
          nls.builtins.formatting.nginx_beautifier,
          nls.builtins.formatting.pg_format,
          nls.builtins.formatting.phpcsfixer,
        },
      }
    end,
  },
}
