" '''''''''''''''''''''''
" Enable Syntax Highlight
" '''''''''''''''''''''''
if has("syntax")
	syntax on 
endif

" '''''''''''''''''''''''''
" About Theme and Interface
" '''''''''''''''''''''''''
set autoindent " Auto align indent
set ruler      " Show current (r, c)
set bg=dark    " Set background mode
set showcmd    " Show partial commands in the last line of the screen
set number     " Show row number
hi  LineNr cterm=none ctermbg=Black ctermfg=Blue  
set cursorline " Highlight the line cursor at
" hi  Cursorline cterm=none ctermbg=DarkBlue ctermfg=White
set hlsearch

" '''''''''''
" Key Mapping
" '''''''''''
" visual block mode remap to a command (normal mode <S-v> is OK)
command! VisualBlock normal! <C-v>
" copy / paste / cut (to / from register 'r')
vnoremap <C-c> "ry
map      <C-v> "rgP
vnoremap <C-x> "rx
" undo / redo
inoremap <C-z> <C-o>u
inoremap <C-y> <C-o><C-r>
nnoremap <C-z> u
nnoremap <C-y> <C-r>
vnoremap <C-z> <Esc>uv
vnoremap <C-y> <Esc><C-r>v
" search
inoremap <C-f> <Esc>/ 
nnoremap <C-f> /
vnoremap <C-f> <Esc>/

" ''''
" Misc
" ''''
filetype indent on " Indent according to file type (.c, .cpp, ...)
" jump to the last position when repoening a file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" ''''''
" Plugin
" ''''''
" NERDtree
packadd! nerdtree
" autocmd VimEnter * NERDTree
map <F5> :NERDTreeToggle<CR>

