set nocompatible
let mapleader=","

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

filetype plugin indent on
" colorscheme ir_black
colorscheme digerati
" colorscheme vividchalk 
syntax on

" mehr statusline: http://dailyvim.tumblr.com/post/1048170831/the-status-line
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
  execute ":NERDTreeToggle"
endfunction
command -nargs=0 OpenNERDTree :call OpenNERDTree()

nmap <ESC>t :OpenNERDTree<CR>

" Shortcut to rapidly toggle `set list`
" Unsichtbare Zeichen anzeigen
nmap <leader>l :set list!<CR>
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:¿\ ,eol:¬

function! s:Terminal()
  execute 'ConqueTermSplit bash --login'
endfunction
command! Terminal call s:Terminal()

nmap <leader>t :TlistToggle<CR>

" füge eine zeile mit datum als trenner ein
" nach http://0x7c0.wordpress.com/2009/06/18/vim-abbreviations/
iabbrev dts ---------------------------------------------------<CR><C-R>=strftime("%d %b %Y, %h:%M%")<CR> 

