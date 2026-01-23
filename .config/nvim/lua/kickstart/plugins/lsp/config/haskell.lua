--local lspconfig = require 'kickstart.plugins.lspconfig'
local util = require 'lspconfig/util'
local M = {}

M.setup = function(capabilities)
  return {
    capabilities = capabilities,
    filetypes = { 'haskell', 'lhaskell', 'cabal' },
    settings = {
      haskell = {
        plugin = {
          rename = { config = { crossModule = true } },
        },
        formattingProvider = 'fourmolu',
      },
    },
  }
end

return M
