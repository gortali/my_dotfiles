set nocompatible

set mouse=
set noswapfile
set cursorline
set confirm
set hidden "do not close buff when changing
set backspace=indent,eol,start
set ruler "ruler on bottom right
set showcmd "show command on bottom right
set number "line number
set relativenumber "relative line number
set nowrap	
set colorcolumn=80
set visualbell 

set showmatch "show matching parenthesis
set hlsearch "highlight searching pattern
set incsearch
set ignorecase
set smartcase "ignore case if pattern is lowercase

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

set splitright
set splitbelow

"workaround to close terminal splits with :wqa
command Z w | qa
cabbrev wqa Z

let g:python3_host_prog = '/usr/bin/python3'

"
au BufRead,BufNewFile *.gp set filetype=gnuplot
autocmd BufRead,BufNewFile *.py let python_highlight_all=1
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

nnoremap <S-Down> <C-d>
nnoremap <S-Up> <C-u>

call plug#begin()
    Plug 'dense-analysis/ale'
    Plug 'preservim/nerdtree'
    Plug 'farmergreg/vim-lastplace'
    Plug 'github/copilot.vim'
call plug#end()

"autocmd VimEnter * NERDTree
nmap <F6> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "left"
let NERDTreeShowHidden=1

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

"imap <silent> <C-w> <Plug>(copilot-next)
"imap <silent> <C-q> <Plug>(copilot-previous)
"imap <silent> <C-e> <Plug>(copilot-dismiss)

let g:repl_filetype_commands = {
  \ 'python': 'ipython',
  \ }

"nnoremap <F5> <Cmd>ReplToggle<CR>
"nmap     <space>c <Plug>ReplSendCell
"nmap     <space>l <Plug>ReplSendLine
"xmap     <space>v  <Plug>ReplSendVisual
