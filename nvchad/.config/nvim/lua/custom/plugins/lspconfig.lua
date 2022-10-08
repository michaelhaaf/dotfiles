local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local util = require 'lspconfig.util'
local lspconfig = require "lspconfig"
local servers = util.available_servers()

vim.diagnostic.config({ virtual_text = false })

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
