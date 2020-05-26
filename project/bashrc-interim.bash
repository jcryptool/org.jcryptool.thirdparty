_declare_dirvar() { local _dir="${BASH_SOURCE[0]}"; _dir="${_dir%/*}"; local varname="${1:-dir}"; local count="${2:-1}"; while [[ "$count" -gt 0 ]]; do _dir="${_dir%/*}"; let count-- || :; done; eval "$varname"'="$_dir"'; }
_declare_dirvar _projdefdir 0
_declare_dirvar _projbasedir 1

# TODO: replace the project name to get sane aliases and variables
_projname=jctthirdparty; _projname="${_projname//[^A-Za-z]/}"

_declare_dirvar project__${_projname}__Droot 1
eval 'alias '$_projname'_ide="${project__'$_projname'__Droot}/project/ide --name='$_projname'"'

