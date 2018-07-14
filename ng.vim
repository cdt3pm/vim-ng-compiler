if exists("current_compiler")
  finish
endif
let current_compiler = "ng"

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet makeprg=ng\ build

CompilerSet errorformat=ERROR\ in\ %f(%l\\,%c):\ %m,%f(%l\\,%c):\ %m,%-G%.%#

