:set linespace=3
:set encoding=utf-8

" Bsp. for conditionals depending on used platform
" http://github.com/coderifous/dotfiles/blob/master/vim/gvimrc
if has("gui_macvim")
  set fuoptions=maxvert,maxhorz " fullscreen options (MacVim only), resized window when changed to fullscreen
	set transparency=0
	set gfn=Anonymous\ Pro:h14
	set columns=154
	set lines=44
	" PeepOpen auf CommandT:
	map <D-t> <Plug>PeepOpen
"  set guifont=Monaco:h12
"  set guioptions-=T  " remove toolbar
"  set guicursor=a:blinkon0
  " Unmap Apple+T and Shift+Apple+T
"  macmenu &File.Open\ Tab\.\.\. key=<nop>
  " FuzzyFinder
"  nnoremap <D-T> :FuzzyFinderTextMate<CR>
  " NerdTree
"  nnoremap <D-e> :NERDTreeToggle<CR>
  " Tab navigation like FF and TM
"  nnoremap <D-M-right> :tabnext<CR>
"  nnoremap <D-M-left> :tabprev<CR>
elseif has("gui_gtk2")
  set guifont=Inconsolata\ 11
	"set guifont=Anonymous\ Pro\ 11
	set columns=115
	set lines=32
"  set guioptions-=T  " remove toolbar
elseif has("x11")
elseif has("gui_win32")
end

