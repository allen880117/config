# my-vimrc

```
" Interface
syntax on " Enable syntax highlight

set autoindent " Auto align indent
set ruler " Show current (r, c)
set bg=dark " Set background mode
set showcmd " Show partial commands in the last line of the screen

set number " Show row number
hi  LineNr cterm=none ctermbg=Black ctermfg=Blue  

set cursorline " Highlight the line cursor at
hi  Cursorline cterm=none ctermbg=DarkBlue ctermfg=White

" Key Mapping
" ctrl+z and ctrl+y
inoremap <C-Z> <C-O>u
inoremap <C-Y> <C-O><C-R>

" Misc
filetype indent on " Indent according to file type (.c, .cpp, ...)

```
