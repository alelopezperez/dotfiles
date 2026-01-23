--local lspconfig = require 'kickstart.plugins.lspconfig'
local util = require 'lspconfig/util'
local M = {}

M.setup = function(capabilities)
  return {
    capabilities = capabilities,
    filetypes = { 'rust' },
    root_dir = util.root_pattern 'Cargo.toml',
    settings = {
      ['rust-analyzer'] = {
        diagnostics = {
          enable = true,
        },
        checkOnSave = true,
        check = {
          command = 'clippy',
          features = 'all',
        },
        inlayHints = true,
        cargo = {
          features = 'all',
        },
      },
    },
  }
end

return M
