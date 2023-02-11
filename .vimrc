set nocompatible

set hidden "do not close buff when changing
set backspace=indent,eol,start
set ruler "ruler on bottom right
set showcmd "show command on bottom right
set number "line number
set nowrap	
set colorcolumn=80
set visualbell 

set showmatch "show matching parenthesis
set hlsearch "highlight searching pattern

set smartcase
set incsearch

syntax on
filetype indent on
set autoindent
set expandtab
set shiftwidth=4
"set textwidth=79
set smartindent
set smarttab
set tabstop=4
set softtabstop=4

set undolevels=1000

set wildmenu
set wildmode=full

"au BufRead,BufNewFile *.gp set filetype=gnuplot
"autocmd BufRead,BufNewFile *.py let python_highlight_all=1
autocmd FileType bash map <buffer> <F5> :w<CR>:exec shellescape(@%, 1)<CR>
autocmd FileType python map <buffer> <F5> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType tex map <buffer> <F5> :w<CR>:exec '!pdflatex' shellescape(@%, 1)<CR>
autocmd FileType gnuplot map <buffer> <F5> :w<CR>:exec '!gnuplot -persist' shellescape(@%, 1)<CR>

let g:tex_flavor='latex'

"split navigations
nnoremap <C-Down> <C-W><C-J>
nnoremap <C-Up> <C-W><C-K>
nnoremap <C-Right> <C-W><C-L>
nnoremap <C-Left> <C-W><C-H>

"half up or down
nnoremap <S-Up> <C-u>
nnoremap <S-Down> <C-d>

"save undo trees in files
set undofile
set undodir=/data/storage8/gortali/.vim/undo

"number of undo saved
set undolevels=10000 

"autocmd VimEnter * NERDTree
nmap <F6> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"

"" for folding 
"set foldmethod=indent
"set foldlevel=99
"augroup remember_folds
"  autocmd!
"  autocmd BufWinLeave * mkview
"  autocmd BufWinEnter * silent! loadview
"augroup END
filetype plugin indent on " required
autocmd Filetype * AnyFoldActivate               " activate for all filetypes
"set foldlevel=0  " close all folds
set foldlevel=99 " Open all folds
nnoremap <space> za 


let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 1
let g:ale_linters={'python': ['pylint'],}
let g:ale_python_pylint_options = '--errors-only'
"let g:ale_fixers = {
"            \   '*': ['remove_trailing_lines', 'trim_whitespace'],
"            \   'python': ['black'],
"            \}
"let g:ale_completion_enabled = 1
"set omnifunc=ale#completion#OmniFunc
let g:ale_enabled = 1

nmap <F7> :ALEToggle<CR>
