-- Main Theme
return {
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'folke/tokyonight.nvim',
    lazy = true,
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.

      -- You can configure highlights by doing something like:
      vim.cmd.hi 'Comment gui=none'
    end,
  },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    lazy = true,
    priority = 1000,
    opts = {
      integrations = {
        neotree = true,
        mason = true,
      },
    },
  },
  {
    'sainnhe/gruvbox-material',
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_enable_italic = 1
      vim.g.gruvbox_material_background = 'medium'
      vim.g.gruvbox_material_foreground = 'material'

      vim.g.gruvbox_material_inlay_hints_background = 'none'
      vim.g.gruvbox_material_diagnostic_text_highlight = 1
      vim.g.gruvbox_material_diagnostic_line_highlight = 1
      vim.g.gruvbox_material_diagnostic_virtual_text = 'colored'
      vim.g.gruvbox_material_float_style = 'bright'
      vim.g.gruvbox_material_menu_selection_background = 'green'
      vim.g.gruvbox_material_visual = 'green background'
      vim.g.gruvbox_material_enable_bold = 1
      vim.g.gruvbox_material_statusline_style = 'mix'
    end,
    opts = {},
  },
  {
    'ellisonleao/gruvbox.nvim',
    lazy = true,
    priority = 1000,
    config = true,
    opts = {
      contrast = '',
    },
  },
}
