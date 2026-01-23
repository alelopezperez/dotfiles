-- Saecki Crates Completion
return {
  'saecki/crates.nvim',
  ft = { 'rust', 'toml' },
  opts = {
    completion = {
      crates = {
        enabled = true,
        max_results = 8,
        min_chars = 3,
      },
    },
    lsp = {
      enabled = true,
      actions = true,
      completion = true,
      hover = true,
    },
  },
  config = function(_, opts)
    local crates = require 'crates'
    crates.setup(opts)
    crates.show()
  end,
}
