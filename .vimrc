set number 
set nowrap	
set showmatch	" matching parenthesis

set colorcolumn=80
set textwidth=79

" deactivate bell
set visualbell 
set t_vb=

set hlsearch
set smartcase
set incsearch

set undolevels=1000
set backspace=indent,eol,start

set wildmenu
set wildmode=full

syntax on

autocmd FileType bash map <buffer> <F5> :w<CR>:exec shellescape(@%, 1)<CR>
autocmd FileType python map <buffer> <F5> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType tex map <buffer> <F5> :w<CR>:exec '!pdflatex' shellescape(@%, 1)<CR>
autocmd FileType gnuplot map <buffer> <F5> :w<CR>:exec '!gnuplot -persist' shellescape(@%, 1)<CR>

autocmd BufRead,BufNewFile *.py let python_highlight_all=1
au BufRead,BufNewFile *.gp set filetype=gnuplot

" for folding 
nnoremap <space> za 
set foldmethod=indent
set foldlevel=99
augroup remember_folds
  autocmd!
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent! loadview
augroup END

let g:tex_flavor='latex'

" filetype indent on
" set autoindent
set shiftwidth=4
set tabstop=4
set expandtab

