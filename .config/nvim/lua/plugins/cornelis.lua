return {
  'isovector/cornelis',
  name = 'cornelis',
  ft = 'agda',
  build = 'stack install',
  dependencies = { 'neovimhaskell/nvim-hs.vim', 'kana/vim-textobj-user' },
  version = '*',
  config = function()
    vim.api.nvim_create_autocmd('FileType', {
      pattern = 'agda',
      callback = function(args)
        local opts = { buffer = args.buf, silent = true }

        vim.keymap.set('n', '<leader>l', '<cmd>CornelisLoad<CR>', opts)
        vim.keymap.set('n', '<leader>r', '<cmd>CornelisRefine<CR>', opts)
        vim.keymap.set('n', '<leader>d', '<cmd>CornelisMakeCase<CR>', opts)
        vim.keymap.set('n', '<leader>,', '<cmd>CornelisTypeContext<CR>', opts)
        vim.keymap.set('n', '<leader>.', '<cmd>CornelisTypeContextInfer<CR>', opts)
        vim.keymap.set('n', '<leader>n', '<cmd>CornelisSolve<CR>', opts)
        vim.keymap.set('n', '<leader>a', '<cmd>CornelisAuto<CR>', opts)

        vim.keymap.set('n', 'grd', '<cmd>CornelisGoToDefinition<CR>', opts)
        vim.keymap.set('n', '[/', '<cmd>CornelisPrevGoal<CR>', opts)
        vim.keymap.set('n', ']/', '<cmd>CornelisNextGoal<CR>', opts)

        vim.keymap.set('n', '<C-a>', '<cmd>CornelisInc<CR>', opts)
        vim.keymap.set('n', '<C-x>', '<cmd>CornelisDec<CR>', opts)
      end,
    })

    vim.api.nvim_create_autocmd('BufWritePost', {
      pattern = '*.agda',
      command = 'CornelisLoad',
    })

    vim.api.nvim_create_autocmd('QuitPre', {
      pattern = '*.agda',
      command = 'CornelisCloseInfoWindows',
    })
  end,
}
