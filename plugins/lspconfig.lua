local M = {}

M.setup_lsp = function(attach, capabilities)
  local lspconfig = require "lspconfig"

  -- lspservers with default config
  local servers = { "html", "cssls", "omnisharp" }

  -- Add custom function to attach, if you want to
  -- modify it's behavior
  for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
      on_attach = attach,
      capabilities = capabilities,
      cmd = { "completion-style=detailed" }
    }
  end
end

return M
