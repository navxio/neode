return {
  {
    "jose-elias-alvarez/null-ls.nvim",
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
          nls.builtins.diagnostics.jsonlint,
          nls.builtins.formatting.prettierd,
          nls.builtins.formatting.djlint,
          nls.builtins.formatting.nginx_beautifier,
          nls.builtins.formatting.pg_format,
          nls.builtins.formatting.taplo,
          nls.builtins.formatting.remark,
          nls.builtins.formatting.phpcsfixer,
          -- nls.builtins.diagnostics.flake8,
        },
      }
    end,
  },
}
