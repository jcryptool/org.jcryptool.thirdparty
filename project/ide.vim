let s:_loc=expand("<sfile>:p")
call _SetupIDEProject(s:_loc)

let g:project.vim.dispatch.opts = "-compiler=maven"
call _PerformProjectSettings()

" cd
exec printf("cd %s", project.loc.Droot)

command! ProjToManifest sp releng/org.jcryptool.thirdparty.libraries.p2/target/repository/plugins/ | call _convertTargetToRequire()
command! ProjToProjectreq sp releng/org.jcryptool.thirdparty.libraries.p2/target/repository/plugins/ | call _makeAdditionalPluginstartreqs()
nmap <F11>mf :ProjToManifest<CR>
nmap <F11>rec :ProjToProjectreq<CR>

fun! _toBundleIds() abort
    normal "zyae,j,n"zpggdd
    %s@.*/@@
    %g@\.source_@d
    %s@_[0-9.]*.*jar@@
    %g/sun.misc/d
    %g/errorprone/d
    %g/org.jsr/d

    %g/^\s*$/d
endf

fun! _convertTargetToRequire() abort
    call _toBundleIds()
    %g/jakarta.activation/d
    %g/m2bundle.durian-swt$/d
    %g/j2objc/d
    %normal I 
    %normal A,
    normal G$dl
    normal Go
endfun

fun! _makeAdditionalPluginstartreqs() abort
    call _toBundleIds()
    let @x=      '   <plugin id="'
    let @y=      '" download-size="0" install-size="0" version="0.0.0" unpack="false"/>'
    %normal ixAy
endfun
