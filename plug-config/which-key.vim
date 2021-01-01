" which-key settings

" Setting space as the leader ley
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

" By default timeoutlen is 1000 ms
set timeoutlen=500

" Minimal configuration with <Space> and <, >as 'leader' and 'local leader'
let g:mapleader = "\<Space>"
let g:maplocalleader = ','
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

call which_key#register('<Space>', "g:which_key_map")

nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>


" Define prefix dictionary
let g:which_key_map =  {}


" 'a' for action
let g:which_key_map.a = {
      \ 'name' : '+action',
      \ 'h' : [':nohlsearch'    , 'nohlsearch'],
      \ '?' : ['Buffers'        , 'fzf-buffer'],
      \ '/' : ['gc'             , 'comment-line'],
      \ }


" 'b' for buffer
let g:which_key_map.b = {
      \ 'name' : '+buffer',
      \ '1' : ['b1'            , 'buffer 1'],
      \ '2' : ['b2'            , 'buffer 2'],
      \ 'B' : ['Buffers'       , 'fzf-buffer'],
      \ 'f' : ['bfirst'        , 'first-buffer'],
      \ 'k' : ['bd'            , 'kill-buffer'],
      \ 'l' : ['blast'         , 'last-buffer'],
      \ 'n' : ['bnext'         , 'next-buffer'],
      \ 'p' : ['bprevious'     , 'previous-buffer'],
      \ 't' : ['<C-^>'         , 'toggle-buffer'],
      \ '?' : ['Buffers'       , 'fzf-buffer'],
      \ ']' : ['bnext'         , 'next-buffer'],
      \ '[' : ['bprevious'     , 'previous-buffer'],
      \ }


" 'e' for edit
let g:which_key_map.e = {
      \ 'name' : '+edit',
      \ 'e' : [':edit $HOME/.config/nvim/init.vim'              , 'init.vim'],
      \ 'c' : [':edit $HOME/.config/nvim/plug-config/coc.vim'   , 'coc.vim'],
      \ 'k' : [':edit $HOME/.config/nvim/keys/mappings.vim'     , 'mappings.vim'],
      \ 'p' : [':edit $HOME/.config/nvim/vim-plug/plugins.vim'  , 'plugins.vim'],
      \ 's' : [':edit $HOME/.config/nvim/general/settings.vim'  , 'settings.vim'],
      \ 't' : [':edit $HOME/.config/nvim/general/temp.vim'      , 'temp.vim'],
      \ 'w' : [':edit $HOME/.config/nvim/plug-config/which-key.vim'   , 'which-key.vim'],
      \ }


" 'f' for file
let g:which_key_map.f = {
      \ 'name' : '+file',
      \ 's' : [':update'            , 'update-file'],
      \ 'z' : ['Goyo'               , 'zen-mode'],
      \ }


" 'g' for git
let g:which_key_map.g = {
      \ 'name' : '+git',
      \ 'g' : [':G'             , 'status-interactive'],
      \ 'c' : [':Git commit'    , 'commit'],
      \ 'i' : [':Git init'      , 'init'],
      \ 'l' : [':Git log'       , 'log'],
      \ 'm' : [':GV'            , 'magit-like'],
      \ 'P' : [':Git push'      , 'Push'],
      \ 'p' : [':Git pull'      , 'pull'],
      \ 'q' : ['gq'             , 'quit'],
      \ 's' : [':Git status'    , 'status'],
      \ }


" 'i' for insert
let g:which_key_map.i = {
      \ 'name' : '+insert',
      \ }


" 'l' for lsp
let g:which_key_map.l = {
      \ 'name' : '+lsp',
      \ 'g' : {
        \ 'name': '+goto',
        \ 'd' : ['gd'     , 'definition'],
        \ },
      \ }


" 'o' for open
let g:which_key_map.o = {
      \ 'name' : '+open',
      \ 'r' : ['Ranger'             , 'ranger'],
      \ 't' : ['FloatermToggle'     , 'terminal'],
      \ }


" 'q' for quit
let g:which_key_map.q = {
      \ 'name' : '+quit',
      \ 'q' : [':q'         , 'quit, unmodified'],
      \ 'a' : [':qa'        , 'quit-all, unmodified'],
      \ 'r' : [':source $HOME/.config/nvim/init.vim' , 'reload'],
      \ 'u' : [':update'    , 'update-file'],
      \ 'w' : [':wq'        , 'save and quit'],
      \ '!' : [':q!'        , 'quit without saving'],
      \ }


" 'r' for reload
let g:which_key_map.r = {
      \ 'name' : '+reload',
      \ 'r' : [':source $HOME/.config/nvim/init.vim'               , 'init.vim'],
      \ }

" 's' for search
let g:which_key_map.s = {
      \ 'name' : '+search',
      \ 's' : ['/'                  , 'search'],
      \ 'h' : [':set hls!'          , 'hlsearch'],
      \ }

nnoremap <Space>sc :CocSearch <right>


" 't' for toggle
let g:which_key_map.t = {
      \ 'name' : '+toggle',
      \ 'b' : ['<C-^>'              , 'buffer'],
      \ 'h' : [':set hls!'          , 'hlsearch'],
      \ 't' : [':terminal.Toggle'   , 'terminal'],
      \ }


" 'w' for window
let g:which_key_map['w'] = {
      \ 'name' : '+windows',
      \ 'b' : ['<C-^>'          , 'buffer'],
      \ 'c' : ['<C-W>c'         , 'delete-window'],
      \ 'h' : ['<C-W>h'         , 'window-left'],
      \ 'j' : ['<C-W>j'         , 'window-below'],
      \ 'k' : ['<C-W>k'         , 'window-up'],
      \ 'l' : ['<C-W>l'         , 'window-right'],
      \ 'H' : ['<C-W>5<'        , 'expand-window-left'],
      \ 'J' : [':resize +5'     , 'expand-window-below'],
      \ 'K' : [':resize -5'     , 'expand-window-up'],
      \ 'L' : ['<C-W>5>'        , 'expand-window-right'],
      \ 's' : ['<C-W>s'         , 'split-window-below'],
      \ 'v' : ['<C-W>v'         , 'split-window-right'],
      \ 'w' : ['<C-W>w'         , 'other-window'],
      \ '-' : ['<C-W>s'         , 'split-window-below'],
      \ '|' : ['<C-W>v'         , 'split-window-right'],
      \ '=' : ['<C-W>='         , 'balance-window'],
      \ '2' : ['<C-W>v'         , 'layout-double-columns'],
      \ '?' : ['Windows'        , 'fzf-window'],
      \ }


" 'z' for fzf
let g:which_key_map['z'] = {
      \ 'name' : '+fzf',
      \ 'b' : ['Buffers'        , 'Buffers'],
      \ 'C' : ['Colors'         , 'Colors'],
      \ 'c' : ['Commits'        , 'Commits'],
      \ 'f' : ['Files'          , 'Files'],
      \ 'v' : ['Commands'       , 'vim-commands'],
      \ 'w' : ['Windows'        , 'Windows'],
      \ }


