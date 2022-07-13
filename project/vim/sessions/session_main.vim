let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/eclipsebased/git/thirdparty
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
edit releng/org.jcryptool.thirdparty.m2bundle.p2/pom.xml
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
wincmd =
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 66 - ((12 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
66
normal! 033|
wincmd w
argglobal
if bufexists("bin/publish-p2-m2bundle") | buffer bin/publish-p2-m2bundle | else | edit bin/publish-p2-m2bundle | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 6 - ((5 * winheight(0) + 8) / 17)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 0
wincmd w
argglobal
terminal ++curwin ++cols=102 ++rows=14 
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 7) / 14)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
wincmd =
tabnext 1
badd +38 project/ide.vim
badd +66 releng/org.jcryptool.thirdparty.m2bundle.p2/pom.xml
badd +5 releng/org.jcryptool.thirdparty.m2bundle.p2/target/repository/plugins/com.diffplug.durian.core_1.2.0.jar
badd +1 zipfile:/home/snuc/eclipsebased/git/thirdparty/releng/org.jcryptool.thirdparty.m2bundle.p2/target/repository/plugins/com.diffplug.durian.core_1.2.0.jar::META-INF/MANIFEST.MF
badd +5 releng/org.jcryptool.thirdparty.m2bundle.p2/target/repository/plugins/com.diffplug.durian_3.4.0.jar
badd +1 zipfile:/home/snuc/eclipsebased/git/thirdparty/releng/org.jcryptool.thirdparty.m2bundle.p2/target/repository/plugins/com.diffplug.durian_3.4.0.jar::META-INF/MANIFEST.MF
badd +14 zipfile:/home/snuc/eclipsebased/git/thirdparty/releng/org.jcryptool.thirdparty.m2bundle.p2/target/repository/plugins/org.jsr-305_3.0.2.jar::META-INF/MANIFEST.MF
badd +6 bin/publish-p2-m2bundle
badd +53 ~/eclipsebased/git/thirdparty/bin/publish-p2
badd +6 ~/eclipsebased/git/thirdparty/bin/publish-p2-jre
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOS
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
nohlsearch
let g:this_session = v:this_session
let g:this_obsession = v:this_session
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
