-- load modules
require('settings')
require('keybindings')
require('plugins')
require('mappings')
require('functions')
require('temp')


-- vimscript
vim.cmd('source ~/.config/nvim/vimscript/settings.vim')
vim.cmd('source ~/.config/nvim/vimscript/mappings.vim')
vim.cmd('source ~/.config/nvim/vimscript/functions.vim')
vim.cmd('source ~/.config/nvim/vimscript/temp.vim')

-- plugins-vimscript
vim.cmd('source ~/.config/nvim/vimscript/plug-config/which-key.vim')
vim.cmd('source ~/.config/nvim/vimscript/plug-config/codi.vim')

-- plugins-lua
require('hp-onedark')
require('hp-floaterm')
require('hp-quickscope')
require('hp-nvimtree')
require('hp-comment')
require('hp-galaxyline')
require('hp-emmet')
require('hp-telescope')
require('hp-nvimpeekup')
-- require('hp-treesitter')


-- lsp
require('hp-lsp')
-- require('hp-lsp.bash-ls')
-- require('hp-lsp.clangd')
-- require('hp-lsp.python-ls')
-- require('hp-lsp.vim-ls')
require('hp-lsp.virtual_text')






