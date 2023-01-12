local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.code_actions.xo,
  b.formatting.deno_fmt,
  b.formatting.prettier,

  -- Lua
  b.formatting.stylua,

  -- Shell
  b.formatting.beautysh,
  b.diagnostics.shellcheck,

  -- cpp
  b.formatting.clang_format,
  b.formatting.rustfmt,

  -- python
  b.diagnostics.flake8,
  b.formatting.autopep8,

  -- general dev
  b.code_actions.gitsigns,
  -- b.code_actions.refactoring,

  -- prose
  b.diagnostics.proselint,
  b.code_actions.proselint,
}

local utils = require("core.utils")

local on_attach = function(client, bufnr)
  utils.load_mappings("lspconfig", { buffer = bufnr })

  -- Autoformat on save: as long as the mappings are working, I don't need this.
  -- vim.api.nvim_create_autocmd("BufWritePost", {
  --   callback = function()
  --     vim.lsp.buf.format()
  --   end,
  -- })
end

null_ls.setup({
  debug = true,
  sources = sources,
  on_attach = on_attach,
})
