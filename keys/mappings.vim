" Basic Key-bindings

" Better indenting
vnoremap < <gv
vnoremap > >gv

" alias for 'escape' to NORMAL from INSERT
inoremap klk <Esc>


" Move selected line / block of text in visual mode
" shift + k to move up
" shift + j to move down
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv
