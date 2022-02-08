set number relativenumber
set nowrap	
set showmatch

"set mouse=a
"set colorcolumn=80

set visualbell 
set t_vb=

set hlsearch
set smartcase
set incsearch

filetype indent on
set autoindent
set noexpandtab
set shiftwidth=4
"set textwidth=79
"set smartindent
"set smarttab
set tabstop=4
set softtabstop=4

set undolevels=1000
set backspace=indent,eol,start

set wildmenu
set wildmode=full

autocmd FileType bash map <buffer> <F5> :w<CR>:exec shellescape(@%, 1)<CR>
autocmd FileType python map <buffer> <F5> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType tex map <buffer> <F5> :w<CR>:exec '!pdflatex' shellescape(@%, 1)<CR>
autocmd FileType gnuplot map <buffer> <F5> :w<CR>:exec '!gnuplot -persist' shellescape(@%, 1)<CR>

"split navigations
nnoremap <C-Down> <C-W><C-J>
nnoremap <C-Up> <C-W><C-K>
nnoremap <C-Right> <C-W><C-L>
nnoremap <C-Left> <C-W><C-H>

syntax on
autocmd BufRead,BufNewFile *.py let python_highlight_all=1

" for folding 
nnoremap <space> za 

set foldmethod=indent
set foldlevel=99

augroup remember_folds
  autocmd!
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent! loadview
augroup END

au BufRead,BufNewFile *.gp set filetype=gnuplot

let g:tex_flavor='latex'

