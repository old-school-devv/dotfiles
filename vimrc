set nocompatible

call pathogen#runtime_append_all_bundles()

filetype plugin indent on
" colorscheme ir_black
colorscheme digerati
syntax on

set columns=120
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%03l,%03v][%p%%]\ [LEN=%L]
set laststatus=2
set number
set grepprg=ack
set tags=./tags
set backspace=indent,eol,start

" Fuzzy finder: ignore stuff that can't be opened, and generated files
let g:fuzzy_ignore = "*.png;*.PNG;*.JPG;*.jpg;*.GIF;*.gif;vendor/**;coverage/**;tmp/**;rdoc/**"

