" pathogen
runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()

set nocompatible
set background=dark

"if has("win32")
"  set guifont=ProFontWindows:h9
"else
set guifont=ProFont\ 8

" solarized
let g:solarized_contrast="high"
color solarized
