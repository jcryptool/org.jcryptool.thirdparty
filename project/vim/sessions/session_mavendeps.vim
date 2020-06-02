let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd /media/shared/jct-devops/components/repocollection/mainline/thirdparty
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
tabnew
tabnew
tabrewind
edit bin/build-m2bundle-all
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
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
let s:l = 11 - ((10 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11
normal! 011|
lcd /media/shared/jct-devops/components/repocollection/mainline/thirdparty
wincmd w
argglobal
if bufexists("/media/shared/jct-devops/components/repocollection/mainline/thirdparty/releng/org.jcryptool.thirdparty.m2bundle.p2/pom.xml") | buffer /media/shared/jct-devops/components/repocollection/mainline/thirdparty/releng/org.jcryptool.thirdparty.m2bundle.p2/pom.xml | else | edit /media/shared/jct-devops/components/repocollection/mainline/thirdparty/releng/org.jcryptool.thirdparty.m2bundle.p2/pom.xml | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 56 - ((41 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
56
normal! 083|
lcd /media/shared/jct-devops/components/repocollection/mainline/thirdparty
wincmd w
wincmd =
tabnext
edit /media/shared/ubuntu18/home/simon/.vim/vimrc
set splitbelow splitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=0
setlocal fdn=20
setlocal fen
let s:l = 4 - ((3 * winheight(0) + 33) / 66)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
4
normal! 024|
tabnext
set splitbelow splitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
tabnext 1
badd +1 /media/shared/ubuntu18/home/simon/.vim/vimrc
badd +5 /media/shared/jct-devops/components/repocollection/mainline/thirdparty/bin/m2bundle-misc-list-jars
badd +1 /media/shared/jct-devops/components/repocollection/mainline/thirdparty/projects/org.jcryptool.thirdparty.m2bundle.misc/pom.xml
badd +3 /media/shared/jct-devops/components/repocollection/mainline/thirdparty/bin/publish-all
badd +2 /media/shared/jct-devops/components/repocollection/mainline/thirdparty/project/dispatches.bash
badd +6 /media/shared/jct-devops/components/repocollection/mainline/thirdparty/releng/org.jcryptool.thirdparty.m2bundle.p2/pom.xml
badd +6 /media/shared/jct-devops/components/repocollection/mainline/thirdparty/bin/publish-p2-m2bundle
badd +5 /media/shared/jct-devops/components/repocollection/mainline/thirdparty/releng/org.jcryptool.thirdparty.m2bundle.p2/target/repository/artifacts.jar
badd +1 /media/shared/jct-devops/components/repocollection/mainline/thirdparty/releng/org.jcryptool.thirdparty.m2bundle.p2/target/repository/category.xml
badd +5 /media/shared/jct-devops/components/repocollection/mainline/thirdparty/releng/org.jcryptool.thirdparty.m2bundle.p2/target/repository/content.jar
badd +41 zipfile:/media/shared/jct-devops/components/repocollection/mainline/thirdparty/releng/org.jcryptool.thirdparty.m2bundle.p2/target/repository/artifacts.jar::artifacts.xml
badd +1 /media/shared/jct-devops/components/repocollection/mainline/thirdparty/tmp_deps1.xml
badd +1 /media/shared/jct-devops/components/repocollection/mainline/thirdparty/projects/pom.xml
badd +75 /media/shared/jct-devops/components/repocollection/mainline/thirdparty/projects/org.jcryptool.thirdparty.m2bundle.swtrelated/pom_fatjar.xml
badd +14 /media/shared/jct-devops/components/repocollection/mainline/thirdparty/pom.xml
badd +9 /media/shared/jct-devops/components/repocollection/mainline/thirdparty/releng/org.jcryptool.thirdparty.configuration/pom.xml
badd +1 /media/shared/jct-devops/components/repocollection/mainline/thirdparty/projects/org.jcryptool.thirdparty.m2bundle.swtrelated.source/pom.xml
badd +1 zipfile:/media/shared/jct-devops/components/repocollection/mainline/thirdparty/projects/org.jcryptool.thirdparty.m2bundle.swtrelated/target/org.jcryptool.thirdparty.m2bundle.swtrelated-0.0.1.jar::META-INF/MANIFEST.MF
badd +6 /media/shared/jct-devops/components/repocollection/mainline/thirdparty/releng/org.jcryptool.thirdparty.m2bundle.p2/target/repository/plugins/org.jcryptool.thirdparty.m2bundle.swtrelated.source_0.0.1.jar
badd +0 zipfile:/media/shared/jct-devops/components/repocollection/mainline/thirdparty/releng/org.jcryptool.thirdparty.m2bundle.p2/target/repository/plugins/org.jcryptool.thirdparty.m2bundle.swtrelated.source_0.0.1.jar::durian-swt-3.3.1-sources.jar
badd +613 /media/shared/jct-devops/components/repocollection/mainline/thirdparty/releng/org.jcryptool.thirdparty.m2bundle.p2/target/repository/plugins/com.google.guava.source_29.0.0.jre.jar
badd +6 /media/shared/jct-devops/components/repocollection/mainline/thirdparty/releng/org.jcryptool.thirdparty.m2bundle.p2/target/repository/plugins/com.diffplug.durian.swt_3.3.1.jar
badd +7 /media/shared/jct-devops/components/repocollection/mainline/thirdparty/projects/org.jcryptool.thirdparty.m2bundle.swtrelated/pom.xml
badd +4 zipfile:/media/shared/jct-devops/components/repocollection/mainline/thirdparty/projects/org.jcryptool.thirdparty.m2bundle.swtrelated.source/target/org.jcryptool.thirdparty.m2bundle.swtrelated.source-0.0.1.jar::META-INF/maven/org.jcryptool.thirdparty/org.jcryptool.thirdparty.m2bundle.swtrelated.source/pom.xml
badd +12 /media/shared/jct-devops/components/repocollection/mainline/thirdparty/bin/build-m2bundle-all
badd +55 /media/shared/jct-devops/components/repocollection/mainline/thirdparty/projects/org.jcryptool.thirdparty.m2bundle.durian-swt/pom.xml
badd +29 zipfile:/media/shared/jct-devops/components/repocollection/mainline/thirdparty/releng/org.jcryptool.thirdparty.m2bundle.p2/target/repository/plugins/com.diffplug.durian.swt_3.3.1.jar::META-INF/MANIFEST.MF
badd +17 zipfile:/media/shared/jct-devops/components/repocollection/mainline/thirdparty/releng/org.jcryptool.thirdparty.m2bundle.p2/target/repository/plugins/org.jcryptool.thirdparty.m2bundle.durian-swt_0.0.1.jar::META-INF/maven/org.jcryptool.thirdparty/org.jcryptool.thirdparty.m2bundle.durian-swt/pom.xml
badd +0 zipfile:/media/shared/jct-devops/components/repocollection/mainline/thirdparty/releng/org.jcryptool.thirdparty.m2bundle.p2/target/repository/plugins/org.jcryptool.thirdparty.m2bundle.durian-swt_0.0.1.jar::META-INF/MANIFEST.MF
badd +35 zipfile:/media/shared/jct-devops/components/repocollection/mainline/thirdparty/projects/org.jcryptool.thirdparty.m2bundle.durian-swt/target/org.jcryptool.thirdparty.m2bundle.durian-swt-0.0.1.jar::META-INF/MANIFEST.MF
badd +0 zipfile:/media/shared/jct-devops/components/repocollection/mainline/thirdparty/projects/org.jcryptool.thirdparty.m2bundle.durian-swt/target/org.jcryptool.thirdparty.m2bundle.durian-swt-0.0.1.jar::durian-swt.os-3.3.1.jar
badd +8 /media/shared/jct-devops/components/repocollection/mainline/thirdparty/.git/info/exclude
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOS
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
nohlsearch
let g:this_session = v:this_session
let g:this_obsession = v:this_session
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
