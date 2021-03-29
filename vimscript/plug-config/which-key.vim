" which-key settings

" Setting space as the leader ley
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

" By default timeoutlen is 1000 ms
set timeoutlen=500

" Minimal configuration with <Space> and <,> as 'leader' and 'local leader'
let g:mapleader = "\<Space>"
let g:maplocalleader = ','
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

call which_key#register('<Space>', "g:which_key_map")

nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>


" Define prefix dictionary
let g:which_key_map =  {}


nnoremap <silent> <leader><leader> :Telescope find_files<CR>


" 'a' for action
let g:which_key_map.a = {
    \ 'name' : '+action',
    \ 'a' : {
        \ 'name': '+activate',
        \ 'c' : ['Codi'                 , 'activate-codi'],
    \ },
    \ 'd' : {
        \ 'name': '+deactivate',
        \ 'c' : ['Codi!'                , 'deactivate-codi'],
    \ },
    \ 'x' : {
        \ 'name': '+cut',
    \ },
    \ 'c' : {
        \ 'name': '+copy',
    \ },
    \ 'v' : {
        \ 'name': '+paste',
    \ },
    \ 'h' : [':nohlsearch'    , 'nohlsearch'],
    \ }




" 'b' for buffer
let g:which_key_map.b = {
      \ 'name' : '+buffer',
      \ '1' : ['b1'            , 'buffer 1'],
      \ '2' : ['b2'            , 'buffer 2'],
      \ 'B' : [':Telescope buffers'       , 'fzf-buffer'],
      \ 'd' : ['bd'            , 'kill-buffer'],
      \ 'f' : ['bfirst'        , 'first-buffer'],
      \ 'k' : ['bd'            , 'kill-buffer'],
      \ 'l' : ['blast'         , 'last-buffer'],
      \ 'n' : ['bnext'         , 'next-buffer'],
      \ 'p' : ['bprevious'     , 'previous-buffer'],
      \ 't' : ['<C-^>'         , 'toggle-buffer'],
      \ '?' : [':Telescope buffers'       , 'fzf-buffer'],
      \ ']' : ['bnext'         , 'next-buffer'],
      \ '[' : ['bprevious'     , 'previous-buffer'],
      \ }


" 'e' for edit
let g:which_key_map.e = {
      \ 'name' : '+edit',
      \ 'e' : [':vs $HOME/.config/nvim/init.lua'            , 'init.lua'],
      \ 'f' : [':vs $HOME/.config/nvim/lua/functions.lua'   , 'functions.lua'],
      \ 'k' : [':vs $HOME/.config/nvim/lua/keybindings.lua' , 'keybindings.lua'],
      \ 'm' : [':vs $HOME/.config/nvim/lua/mappings.lua'    , 'mappings.lua'],
      \ 'p' : [':vs $HOME/.config/nvim/lua/plugins.lua'		, 'plugins.lua'],
      \ 's' : [':vs $HOME/.config/nvim/lua/settings.lua'	, 'settings.lua'],
      \ 't' : [':vs $HOME/.config/nvim/lua/temp.lua'      , 'temp.lua'],
      \ 'w' : [':vs $HOME/.config/nvim/vimscript/plug-config/which-key.vim'   , 'which-key.vim'],
      \ }


" 'f' for file
let g:which_key_map.f = {
      \ 'name' : '+file',
      \ 'f' : [':Sex!'						, 'Explore'],
      \ 'P' : [':vs $HOME/.config/nvim/'	, 'Browse Config'],
      \ 's' : [':update'					, 'update-file'],
      \ 'z' : ['Goyo'						, 'zen-mode'],
      \ }


" 'g' for git
let g:which_key_map['g'] = {
      \ 'name' : '+git',
      \ 'b' : [':Telescope git_branches'	, 'branches'],
      \ 'c' : [':Telescope git_commits'		, 'commits'],
      \ 'f' : [':Telescope git_files'		, 'files'],
      \ 'g' : [':Telescope git_status'		, 'status'],
      \ 's' : [':Telescope git_status'		, 'status'],
      \ }

" 'h' for help
let g:which_key_map.h = {
      \ 'name' : '+help',
      \ 'l' : [':help :lua '				, ':lua'],
      \ 't' : [':Telescope colorscheme'		, 'Colors'],
      \ }


" 'i' for insert
let g:which_key_map.i = {
      \ 'name' : '+insert',
      \ }




" l is for lsp
let g:which_key_map.l = {
      \ 'name' : '+lsp' ,
      \ 'a' : [':Lspsaga code_action'                , 'code action'],
      \ 'A' : [':Lspsaga range_code_action'          , 'selected action'],
      \ 'd' : [':Telescope lsp_document_diagnostics' , 'document diagnostics'],
      \ 'D' : [':Telescope lsp_workspace_diagnostics', 'workspace diagnostics'],
      \ 'f' : [':LspFormatting'                      , 'format'],
      \ 'I' : [':LspInfo'                            , 'lsp info'],
      \ 'v' : [':LspVirtualTextToggle'               , 'lsp toggle virtual text'],
      \ 'l' : [':Lspsaga lsp_finder'                 , 'lsp finder'],
      \ 'L' : [':Lspsaga show_line_diagnostics'      , 'line_diagnostics'],
      \ 'o' : [':Vista!!'                            , 'outline'],
      \ 'p' : [':Lspsaga preview_definition'         , 'preview definition'],
      \ 'q' : [':Telescope quickfix'                 , 'quickfix'],
      \ 'r' : [':Lspsaga rename'                     , 'rename'],
      \ 'T' : [':LspTypeDefinition'                  , 'type defintion'],
      \ 'x' : [':cclose'                             , 'close quickfix'],
      \ 's' : [':Telescope lsp_document_symbols'     , 'document symbols'],
      \ 'S' : [':Telescope lsp_workspace_symbols'    , 'workspace symbols'],
      \ }
      " \ 'H' : [':Lspsaga signature_help'             , 'signature_help'],


" 'o' for open
let g:which_key_map.o = {
      \ 'name' : '+open',
      \ 'e' : ['NvimTreeToggle'     , 'explorer'],
      \ 'r' : ['RnvimrToggle'       , 'ranger'],
      \ 't' : ['FloatermToggle'     , 'terminal'],
      \ }


" 'q' for quit
let g:which_key_map.q = {
      \ 'name' : '+quit',
      \ 'q' : [':q'         , 'quit, unmodified'],
      \ 'a' : [':qa'        , 'quit-all, unmodified'],
      \ 'r' : [':luafile $HOME/.config/nvim/init.lua' , 'reload'],
      \ 'u' : [':update'    , 'update-file'],
      \ 'w' : [':wq'        , 'save and quit'],
      \ '!' : [':q!'        , 'quit without saving'],
      \ }


" 'r' for reload
let g:which_key_map.r = {
      \ 'name' : '+reload',
      \ 'r' : [':luafile $HOME/.config/nvim/init.lua' , 'reload'],
      \ }

" 's' for search



" 't' for toggle
let g:which_key_map.t = {
      \ 'name' : '+toggle',
      \ 'b' : ['<C-^>'              , 'buffer'],
      \ 'e' : ['NvimTreeToggle'     , 'explorer'],
      \ 'h' : [':set hls!'          , 'hlsearch'],
      \ 's' : [':set spell!'        , 'spell-check'],
      \ 't' : ['FloatermToggle'     , 'terminal'],
      \ 'z' : ['Goyo'               , 'zen-mode'],
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
      \ }


" 'z' for Telescope
let g:which_key_map['z'] = {
      \ 'name' : '+Telescope',
      \ 'b' : [':Telescope buffers'			, 'buffers'],
      \ 'C' : [':Telescope colorscheme'		, 'colors'],
      \ 'c' : [':Telescope git_commits'		, 'commits'],
      \ 'f' : [':Telescope find_files'		, 'files'],
      \ 'h' : [':Telescope command_history'	, 'command-history'],
      \ 'l' : [':Telescope Lines'			, 'lines'],
      \ 'm' : [':Telescope marks'			, 'marks'],
      \ 'r' : [':Telescope registers'		, 'registers'],
      \ 't' : [':Telescope tags'			, 'tags'],
      \ 'v' : [':Telescope commands'		, 'vim-commands'],
      \ 'w' : [':Telescope file_browser'	, 'file_browser'],
      \ 'z' : [':Telescope live_grep'		, 'live_grep'],
      \ 'Z' : [':Telescope grep_string'		, 'grep_string'],
      \ }


