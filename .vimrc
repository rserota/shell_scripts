

"syntax highlighting
syntax on

"allow searching through subfolders. enhances tab-completion
"set path+=**

"display all matching files when using tab completion
set wildmenu
set wildmode=longest:full,full

set guitablabel=%N/\ %t\ %M
filetype on
filetype plugin on

"4 space tabs
set softtabstop=4

"when indenting, use 4-space indentations
set shiftwidth=4

"automatically insert spaces when pressing tab
"set expandtab

"does what it says on the tin
set autoindent

"line numbers
set number

set bufhidden=delete

"set file browser to tree-mode
"let g:netrw_liststyle = 3

"remove huge useless banner from file browser
"let g:netrw_banner = 0

"open files in a new tab
"let g:netrw_browse_split = 3

"keybindings. mostly other ways to get to normal mode
inoremap kk <Esc>
inoremap vv <Esc>
inoremap vk <Esc>
inoremap kv <Esc>
inoremap tfw <Esc>
inoremap nuy <Esc>
let mapleader = " "
nmap <leader>t :NERDTreeToggle<CR>

"snippet commands
nnoremap ,html :read ~/.vim/snippets/boilerplate.html<CR>3jf>a


"stop pretending to be vi
set nocompatible

"soft word-wrap (no linebreaks)
set wrap linebreak nolist

"add extra text to indicate wrapped lines
set showbreak=...


"wait 333 ms between keys of a sequence, instead of 1000
set timeoutlen=333

"open new split panes on the right or bottom, instead of top or left
set splitbelow
set splitright

set dir=~/.vim

"plugin stuff
" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')


" File browser with On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Git in Vim
Plug 'tpope/vim-fugitive'


" Surround text in quotes or braces or whatever
Plug 'tpope/vim-surround'

" git diffs in the gutter
Plug 'airblade/vim-gitgutter'

" add comments with c
Plug 'preservim/nerdcommenter'

" Syntax highlighting
Plug 'dense-analysis/ale'


" Initialize plugin system
call plug#end()

