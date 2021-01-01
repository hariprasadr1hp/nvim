"#######################################################################
" my settings

syntax on
set noerrorbells

" relative line numbering
:set relativenumber
:set number
:set number relativenumber

" indentation
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

" search
set incsearch
set hlsearch
set smartcase

" mouse
set mouse=a

" autocompletion
" noremap! { {}<left>
" noremap! [ []<left>
" noremap! ( ()<left>
" noremap! ' ''<left>

" misc
set nowrap
set noswapfile

" backup
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set colorcolumn=80
highlight Colorcolumn ctermbg=0 guibg=lightgrey


" setting environment
let g:python3_host_prog = '~/anaconda3/bin/python3.8'

"#######################################################################

"#######################################################################

"#######################################################################

"#######################################################################






