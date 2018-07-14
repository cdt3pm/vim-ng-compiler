if exists("current_compiler")
  finish
endif
let current_compiler = "ng"

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet makeprg=ng\ build\ --no-progress\ 2>&1\ \\\|\ sed\ -r\ \"s/\\x1B\\[([0-9]{1,2}(;[0-9]{1,2})?)?[mGK]//g\"
" ng build --no-progress 2>&1 | sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g" > ~/output.txt

CompilerSet errorformat=ERROR\ in\ %f(%l\\,%c):\ %m,
			\%f(%l\\,%c):\ %m,
			\%-G%.%#

