return {
  'mrcjkb/rustaceanvim',
  lazy = false, -- This plugin is already lazy
  ft = 'rust',
  init = function()
    vim.g.rustaceanvim = {
      tools = { float_win_config = { border = 'rounded' } },
    }
  end,
}
