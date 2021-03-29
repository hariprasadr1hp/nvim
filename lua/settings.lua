-- my settings
-- gui
vim.cmd('set noerrorbells')

-- colors
vim.cmd('syntax on') -- move to next line with theses keys
vim.cmd('set colorcolumn=9999') -- fix indentline for now
vim.o.termguicolors = true -- set term giu colors most terminals support this
vim.o.t_Co = "256" -- Support 256 colors
vim.cmd("highlight Colorcolumn ctermbg=0 guibg=lightgrey")

--search
vim.cmd('set hlsearch')
vim.cmd('set incsearch')
vim.cmd('set smartcase')

-- indentation
vim.cmd('set tabstop=4') -- Insert 4 spaces for a tab
vim.cmd('set softtabstop=4')
vim.cmd('set shiftwidth=4') -- Change the number of space characters inserted for indentation
vim.bo.expandtab = true -- Converts tabs to spaces
vim.bo.smartindent = true -- Makes indenting smart

-- relative numbering
vim.cmd("set number relativenumber")

-- wrap
vim.wo.wrap = false -- Display long lines as just one line

-- mouse
vim.o.mouse = "a" -- Enabling mouse

-- backup
vim.o.backup = false -- recommended by coc
vim.o.writebackup = false -- recommended by coc
vim.cmd("set undodir=~/.config/nvim/undodir")
vim.cmd("set undofile")

-- windows
vim.o.splitbelow = true -- Horizontal splits will automatically be below
vim.o.splitright = true -- Vertical splits will automatically be to the right

-- miscellaneous
vim.wo.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time
vim.o.updatetime = 300 -- Faster completion
vim.o.timeoutlen = 100 -- By default timeout length is 1000 ms
vim.cmd('set shortmess+=c') -- Don't pass messages to |ins-completion-menu|.
vim.o.hidden = true -- Required to keep multiple buffers open multiple buffers
vim.o.conceallevel = 0 -- So that I can see `` in markdown files
--vim.cmd('set iskeyword+=-') -- treat dash separated words as a word text object"
--vim.o.clipboard = "unnamedplus" -- Copy paste between vim and everything else


-- coding
vim.g.python3_host_prog = '~/anaconda3/bin/python3.8'


