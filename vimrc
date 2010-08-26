set nocompatible
let mapleader=","

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

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

" http://stackoverflow.com/questions/1447334/how-do-you-add-nerdtree-to-your-vimrc/1447618#1447618
function OpenNERDTree()
  execute ":NERDTree"
endfunction
command -nargs=0 OpenNERDTree :call OpenNERDTree()

nmap <ESC>t :OpenNERDTree<CR>

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:¿\ ,eol:¬

function! s:Terminal()
  execute 'ConqueTermSplit bash --login'
endfunction
command! Terminal call s:Terminal()

