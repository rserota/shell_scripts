

"allow searching through subfolders. enhances tab-completion
"set path+=**

"might improve go-to-file functionality?
"set path=.,src,node_modules

"improve go-to-file functionality by guessing file extensions
set suffixesadd=.js,.jsx

"display all matching files when using tab completion
set wildmenu
set wildmode=longest,list

set guitablabel=%N/\ %t\ %M
filetype on
filetype plugin on

"4 space tabs
set tabstop=4

"4 space tabs
set softtabstop=4

"when indenting, use 4-space indentations
set shiftwidth=4

"automatically insert spaces when pressing tab.
"set expandtab

"keep the cursor in the middle(ish) of the screen
set scrolloff=7

"does what it says on the tin
set autoindent

"line numbers
set number

set bufhidden=delete

"enable the mouse in (V)isual mode and (I)nsert mode, without affecting
"behavior in normal mode.
set mouse=vi

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
nnoremap <SPACE> <Nop>
let mapleader = " "

"split the current line (left or right of the cursor)
nnoremap s a<CR><Esc>
nnoremap S i<CR><Esc>

"leader+s to save
nnoremap <leader>s :w<CR>
"leader+o to open a file
nnoremap <leader>o :call feedkeys(":e \<Tab>", 'tn')<CR>

"Buffer management
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>1 :b1<CR>
nnoremap <leader>2 :b2<CR>
nnoremap <leader>3 :b3<CR>
nnoremap <leader>4 :b4<CR>
nnoremap <leader>5 :b5<CR>
nnoremap <leader>6 :b6<CR>
nnoremap <leader>7 :b7<CR>
nnoremap <leader>8 :b8<CR>
nnoremap <leader>9 :b9<CR>
nnoremap <leader>bn :bn<CR>
nnoremap <leader>bp :bp<CR>

"Move between splits
nnoremap <leader>l <C-W><C-l>
nnoremap <leader>h <C-W><C-h>



"snippet commands
nnoremap ,html :read ~/.vim/snippets/boilerplate.html<CR>3jf>a


"allow unsaved changes in hidden buffers
set hidden

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
let NERDTreeQuitOnOpen = 1 " close nerdtree after opening a file
let NERDTreeMinimalUI = 1
" autocmd vimenter * NERDTree " open nerdtree when vim starts

" Git in VimNERDTreeMinimalUI
Plug 'tpope/vim-fugitive'


" Surround text in quotes or braces or whatever
Plug 'tpope/vim-surround'

" git diffs in the gutter
Plug 'airblade/vim-gitgutter'

" add comments with <leader>c
Plug 'preservim/nerdcommenter'

" Syntax highlighting
Plug 'dense-analysis/ale'

" eslint is the ONLY js linter (dont automatically use jshint too)
let g:ale_linters = {
\   'javascript': ['eslint'],
\}
let g:ale_fixers = {
\   'javascript': ['eslint'],
\}

" simple status bar
Plug 'vim-airline/vim-airline'
let g:airline#extensions#tabline#enabled = 1 " enable tabline
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#buffer_nr_show = 1

set noshowmode " disable the default status bar


Plug 'altercation/vim-colors-solarized'
syntax enable
set background=light
colorscheme solarized

set list 
set listchars=tab:·\ 
" Initialize plugin system
call plug#end()



