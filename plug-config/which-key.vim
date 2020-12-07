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


" 'b' for buffer
let g:which_key_map.b = {
      \ 'name' : '+buffer'     ,
      \ '1' : ['b1'            , 'buffer 1'],
      \ '2' : ['b2'            , 'buffer 2'],
      \ 'd' : ['bd'            , 'delete-buffer'],
      \ 'f' : ['bfirst'        , 'first-buffer'],
      \ 'h' : ['Startify'      , 'home-buffer'],
      \ 'l' : ['blast'         , 'last-buffer'],
      \ 'n' : ['bnext'         , 'next-buffer'],
      \ 'p' : ['bprevious'     , 'previous-buffer'],
      \ 't' : ['<C-^>'         , 'toggle-buffer'],
      \ '?' : ['Buffers'       , 'fzf-buffer'],
      \ }


" 'e' for edit
let g:which_key_map.e = {
      \ 'name' : '+edit' ,
      \ 'e' : [':edit $HOME/.config/nvim/init.vim'               , 'init.vim'],
      \ 'p' : [':edit $HOME/.config/nvim/vim-plug/plugins.vim'   , 'plugins.vim'],
      \ 'w' : [':edit $HOME/.config/nvim/plug-config/which-key.vim'   , 'which-key.vim'],
      \ }


" 'f' for file
let g:which_key_map.f = {
      \ 'name' : '+file' ,
      \ 's' : [':update'               , 'update-file'],
      \ }


" 'l' for lsp
let g:which_key_map.l = {
      \ 'name' : '+lsp',
      \ 'f' : ['spacevim#lang#util#Format()'          , 'formatting'],
      \ 'r' : ['spacevim#lang#util#FindReferences()'  , 'references'],
      \ 'R' : ['spacevim#lang#util#Rename()'          , 'rename'],
      \ 's' : ['spacevim#lang#util#DocumentSymbol()'  , 'document-symbol'],
      \ 'S' : ['spacevim#lang#util#WorkspaceSymbol()' , 'workspace-symbol'],
      \ 'g' : {
        \ 'name': '+goto',
        \ 'd' : ['spacevim#lang#util#Definition()'     , 'definition'],
        \ 't' : ['spacevim#lang#util#TypeDefinition()' , 'type-definition'],
        \ 'i' : ['spacevim#lang#util#Implementation()' , 'implementation'],
        \ },
      \ }


" 'o' for open
let g:which_key_map.o = {
      \ 'name' : '+open',
      \ 'q' : 'open-quickfix',
      \ 'l' : 'open-locationlist',
      \ 'r' : ['Ranger'             , 'ranger'],
      \ 't' : ['FloatermToggle'     , 'terminal'],
      \ }


" 'q' for quit
let g:which_key_map.q = {
      \ 'name' : '+quit',
      \ 'q' : [':q'     , 'quit unmodified'],
      \ 'w' : [':wq'    , 'save and quit'],
      \ '!' : [':q!'    , 'quit without saving'],
      \ }


" 'r' for reload
let g:which_key_map.r = {
      \ 'name' : '+reload',
      \ 'r' : [':source $HOME/.config/nvim/init.vim'               , 'init.vim'],
      \ }

" 's' for search
let g:which_key_map.s = {
      \ 'name' : '+search',
      \ 's' : ['/'                          , 'search'],
      \ 'h' : [':set hls!' , 'hlsearch'],
      \ }


" 't' for toggle
let g:which_key_map.t = {
      \ 'name' : '+toggle',
      \ 'b' : ['<C-^>'             , 'buffer'],
      \ 'h' : [':set hls!' , 'hlsearch'],
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

