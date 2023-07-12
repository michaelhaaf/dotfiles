return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"

    -- Check supported formatters and linters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      -- Set a formatter
      null_ls.builtins.formatting.stylua,
      null_ls.builtins.formatting.prettierd,
      null_ls.builtins.formatting.autopep8,
      null_ls.builtins.formatting.beautysh,
      null_ls.builtins.code_actions.refactoring,
      null_ls.builtins.code_actions.shellcheck,
      null_ls.builtins.code_actions.eslint_d,
      null_ls.builtins.code_actions.gitsigns,
      null_ls.builtins.diagnostics.actionlint,
      null_ls.builtins.diagnostics.checkmake,
      null_ls.builtins.diagnostics.flake8,
      null_ls.builtins.diagnostics.ktlint,
      null_ls.builtins.diagnostics.markdownlint_cli2,
      null_ls.builtins.diagnostics.shellcheck,
      null_ls.builtins.diagnostics.stylelint,
      null_ls.builtins.diagnostics.typos,
      null_ls.builtins.completion.luasnip,
    }
    return config -- return final config table
  end,
}
