:set gfn=Anonymous\ Pro:h14
:set columns=154
:set lines=44
:set linespace=3
:set transparency=0
:set encoding=utf-8

" Bsp. for conditionals depending on used platform
" http://github.com/coderifous/dotfiles/blob/master/vim/gvimrc
if has("gui_macvim")
  set fuoptions=maxvert,maxhorz " fullscreen options (MacVim only), resized window when changed to fullscreen
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
"  set guifont=Monaco
"  set guioptions-=T  " remove toolbar
elseif has("x11")
elseif has("gui_win32")
end

