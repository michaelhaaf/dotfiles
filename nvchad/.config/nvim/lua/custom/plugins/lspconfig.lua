local present, lspconfig = pcall(require, "lspconfig")

if not present then
  return
end

local utils = require("core.utils")

local on_attach = function(client, bufnr)
  client.server_capabilities.documentFormattingProvider = true
  client.server_capabilities.documentRangeFormattingProvider = true

  utils.load_mappings("lspconfig", { buffer = bufnr })

  if client.server_capabilities.signatureHelpProvider then
    require("nvchad_ui.signature").setup(client)
  end
end

local capabilities = require("plugins.configs.lspconfig").capabilities

local util = require("lspconfig.util")
local lspconfig = require("lspconfig")
local servers = util.available_servers()

vim.diagnostic.config({ virtual_text = false })

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup({
    on_attach = on_attach,
    capabilities = capabilities,
  })
end
