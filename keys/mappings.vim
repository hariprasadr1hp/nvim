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

" x-term-edits
" xsel commands
nnoremap <leader>avv "+p
vnoremap <leader>acc "+y
vnoremap <leader>axx "+d

vnoremap <leader>acq "qy
vnoremap <leader>acw "wy
vnoremap <leader>ace "ey
vnoremap <leader>acr "ry
vnoremap <leader>act "ty
vnoremap <leader>acy "yy
vnoremap <leader>acu "uy
vnoremap <leader>aci "iy
vnoremap <leader>aco "oy
vnoremap <leader>acp "py
vnoremap <leader>aca "ay
vnoremap <leader>acs "sy
vnoremap <leader>acd "dy
vnoremap <leader>acf "fy
vnoremap <leader>acg "gy
vnoremap <leader>ach "hy
vnoremap <leader>acj "jy
vnoremap <leader>ack "ky
vnoremap <leader>acl "ly

vnoremap <leader>acQ "Qy
vnoremap <leader>acW "Wy
vnoremap <leader>acE "Ey
vnoremap <leader>acR "Ry
vnoremap <leader>acT "Ty
vnoremap <leader>acY "Yy
vnoremap <leader>acU "Uy
vnoremap <leader>acI "Iy
vnoremap <leader>acO "Oy
vnoremap <leader>acP "Py
vnoremap <leader>acA "Ay
vnoremap <leader>acS "Sy
vnoremap <leader>acD "Dy
vnoremap <leader>acF "Fy
vnoremap <leader>acG "Gy
vnoremap <leader>acH "Hy
vnoremap <leader>acJ "Jy
vnoremap <leader>acK "Ky
vnoremap <leader>acL "Ly

vnoremap <leader>axq "qd
vnoremap <leader>axw "wd
vnoremap <leader>axe "ed
vnoremap <leader>axr "rd
vnoremap <leader>axt "td
vnoremap <leader>axy "yd
vnoremap <leader>axu "ud
vnoremap <leader>axi "id
vnoremap <leader>axo "od
vnoremap <leader>axp "pd
vnoremap <leader>axa "ad
vnoremap <leader>axs "sd
vnoremap <leader>axd "dd
vnoremap <leader>axf "fd
vnoremap <leader>axg "gd
vnoremap <leader>axh "hd
vnoremap <leader>axj "jd
vnoremap <leader>axk "kd
vnoremap <leader>axl "ld

vnoremap <leader>axQ "Qd
vnoremap <leader>axW "Wd
vnoremap <leader>axE "Ed
vnoremap <leader>axR "Rd
vnoremap <leader>axT "Td
vnoremap <leader>axY "Yd
vnoremap <leader>axU "Ud
vnoremap <leader>axI "Id
vnoremap <leader>axO "Od
vnoremap <leader>axP "Pd
vnoremap <leader>axA "Ad
vnoremap <leader>axS "Sd
vnoremap <leader>axD "Dd
vnoremap <leader>axF "Fd
vnoremap <leader>axG "Gd
vnoremap <leader>axH "Hd
vnoremap <leader>axJ "Jd
vnoremap <leader>axK "Kd
vnoremap <leader>axL "Ld

nnoremap <leader>avq "qp
nnoremap <leader>avw "wp
nnoremap <leader>ave "ep
nnoremap <leader>avr "rp
nnoremap <leader>avt "tp
nnoremap <leader>avy "yp
nnoremap <leader>avu "up
nnoremap <leader>avi "ip
nnoremap <leader>avo "op
nnoremap <leader>avp "pp
nnoremap <leader>ava "ap
nnoremap <leader>avs "sp
nnoremap <leader>avd "dp
nnoremap <leader>avf "fp
nnoremap <leader>avg "gp
nnoremap <leader>avh "hp
nnoremap <leader>avj "jp
nnoremap <leader>avk "kp
nnoremap <leader>avl "lp

nnoremap <leader>avQ "Qp
nnoremap <leader>avW "Wp
nnoremap <leader>avE "Ep
nnoremap <leader>avR "Rp
nnoremap <leader>avT "Tp
nnoremap <leader>avY "Yp
nnoremap <leader>avU "Up
nnoremap <leader>avI "Ip
nnoremap <leader>avO "Op
nnoremap <leader>avP "Pp
nnoremap <leader>avA "Ap
nnoremap <leader>avS "Sp
nnoremap <leader>avD "Dp
nnoremap <leader>avF "Fp
nnoremap <leader>avG "Gp
nnoremap <leader>avH "Hp
nnoremap <leader>avJ "Jp
nnoremap <leader>avK "Kp
nnoremap <leader>avL "Lp



" insert stuff
nnoremap <Space>ic :r!<right>

" Explore
nnoremap <Space>. :Explore<CR>
