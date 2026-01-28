return {
  'ibhagwan/fzf-lua',
  -- optional for icon support
  -- dependencies = { "nvim-tree/nvim-web-devicons" },
  -- or if using mini.icons/mini.nvim
  dependencies = { 'nvim-mini/mini.icons' },
  ---@module "fzf-lua"
  ---@type fzf-lua.Config|{}
  ---@diagnostic disable: missing-fields
  opts = {},
  keys = {
    {
      '<leader>ff',
      function() require('fzf-lua').files() end,
      desc = 'Find files in Project Directory',
    },
    {
      '<leader>fg',
      function() require('fzf-lua').live_grep() end,
      desc = 'Find by grepping Project Directory',
    },
    {
      '<leader>fn',
      function() require('fzf-lua').files { cwd = vim.fn.stdpath 'config' } end,
      desc = 'Find in Neovim config',
    },
    {
      '<leader>ob',
      function() require('fzf-lua').buffers() end,
      desc = 'Open Buffers',
    },
    {
      '<leader>/',
      function() require('fzf-lua').lgrep_curbuf() end,
      desc = 'Live grep inside current buffer/file',
    },
  },
  ---@diagnostic enable: missing-fields
}
