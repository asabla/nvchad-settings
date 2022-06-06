local M = {}

M.setup_lsp = function(attach, capabilities)
  local lspconfig = require "lspconfig"

  -- lspservers with default config
  local servers = { "html", "cssls", "omnisharp" }

  for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
      -- Put all custom behaviors in this on attach func
      -- on_attach = function(client, bufnr)
      --   attach(client, bufnr)
      -- end,
      on_attach = attach,
      capabilities = capabilities,
      cmd = { "completion-style=detailed" }
    }
  end
end

return M
