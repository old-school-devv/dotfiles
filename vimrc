set nocompatible
let mapleader=","

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

filetype plugin indent on
" colorscheme ir_black
" colorscheme digerati
" colorscheme jellybeans-rg 
colorscheme vividchalk
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
	
" Shortcut minibufexplorer
nmap <leader>b :MiniBufExplorer<CR>

function! s:Terminal()
  execute 'ConqueTermSplit bash --login'
endfunction
command! Terminal call s:Terminal()

" Liste mit den Funktionen
nmap <leader>f :TlistToggle<CR>

" split horizontal von der aktuellen datei
nmap <leader>w <C-w>v<C-w>l

" split vertikal
nmap <leader>v :vsplit<CR>

" split horizontal
nmap <leader>h :split<CR>

" Ack mit Leader a
nmap <leader>a :Ack 

" Todo/Task-List Plugin
nmap <leader>o <Plug>TaskList

" Registers
" http://dailyvim.tumblr.com/post/6756136441/copying-and-moving
nmap <leader>r :registers<CR>

" wg. rubycomplete
" http://blog.hasno.info/vim-7-ruby-omni-completion
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

" http://dailyvim.tumblr.com/post/1262764095/additional-ruby-syntax-highlighting
au BufRead,BufNewFile {Capfile,Gemfile,Rakefile,Thorfile,config.ru,.caprc,.irbrc,irb_tempfile*} set ft=ruby

" füge eine zeile mit datum als trenner ein
" nach http://0x7c0.wordpress.com/2009/06/18/vim-abbreviations/
iabbrev dts ---------------------------------------------------<CR><C-R>=strftime("[%d.%m.%Y, %H:%M]")<CR><CR>
iabbrev dtm ---<CR><CR>## <C-R>=strftime("%d.%m.%Y, %H:%M")<CR><CR><CR>

" 256 farben im terminal
set t_Co=256

" do not ask silly questions regarding sessions
:let g:session_autoload = 'no'
:let g:session_autosave = 'no'

