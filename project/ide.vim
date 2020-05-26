let s:_loc=expand("<sfile>:p")
call _SetupIDEProject(s:_loc)

let g:project.vim.dispatch.opts = "-compiler=maven"
call _PerformProjectSettings()

" cd
exec printf("cd %s", project.loc.Droot)


