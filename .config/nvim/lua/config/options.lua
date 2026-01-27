--vim.opt.expandtab = true -- Convert tabs to spaces
vim.opt.shiftwidth = 4 -- Amount to indent with << and >>
vim.opt.tabstop = 4 -- How many spaces are shown per Tab
vim.opt.softtabstop = 4 -- How many spaces are applied when pressing Tab

vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.autoindent = true -- Keep identation from previous line

-- Always show relative line number
vim.opt.number = true
vim.opt.relativenumber = true

-- Clipboard for copy-paste same as system
vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end)

-- Delete history
vim.o.undofile = true

-- Dont show the mode since mini statusline has it already
vim.opt.showmode = false-- Smart Searching for me
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default for lsp on the left
vim.opt.signcolumn = "yes"


-- Configure how new splits should be opened
vim.o.splitright = true
vim.o.splitbelow = true

-- Decrease update time
vim.o.updatetime = 250

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
--
--  Notice listchars is set using `vim.opt` instead of `vim.o`.
--  It is very similar to `vim.o` but offers an interface for conveniently interacting with tables.
--   See `:help lua-options`
--   and `:help lua-options-guide`
vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }


-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})
