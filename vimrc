set nocompatible
let mapleader=","

filetype plugin indent on
" colorscheme vividchalk
colorscheme onedark
syntax on

" mehr statusline: http://dailyvim.tumblr.com/post/1048170831/the-status-line
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%03l,%03v][%p%%]\ [LEN=%L]
set laststatus=2
set number
set grepprg=ack
set tags=./tags
set backspace=indent,eol,start
set hidden

" nix swp
set nobackup
set nowritebackup
set noswapfile

" Tab-Stops wie n vimcast tidying whitespace
set tabstop=2
set noexpandtab

" Fuzzy finder: ignore stuff that can't be opened, and generated files
"let g:fuzzy_ignore = "*.png;*.PNG;*.JPG;*.jpg;*.GIF;*.gif;vendor/**;coverage/**;tmp/**;rdoc/**"

" Shortcut to rapidly toggle `set list`
" Unsichtbare Zeichen anzeigen
nmap <leader>l :set list!<CR>
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:¿\ ,eol:¬
	
" split horizontal von der aktuellen datei
nmap <leader>w <C-w>v<C-w>l

" split vertikal
nmap <leader>v :vsplit<CR>

" split horizontal
nmap <leader>h :split<CR>

" Ack mit Leader a
"nmap <leader>a :Ack 

" Registers
" http://dailyvim.tumblr.com/post/6756136441/copying-and-moving
nmap <leader>r :registers<CR>

" 256 farben im terminal
set t_Co=256

" wg. https://thehackernews.com/2019/06/linux-vim-vulnerability.html
set nomodeline

