
"enable pathogen plugins
execute pathogen#infect()

"syntax highlighting
syntax on

"allow searching through subfolders. enhances tab-completion
"set path+=**

"display all matching files when using tab completion
set wildmenu
set guitablabel=%N/\ %t\ %M
filetype on
filetype plugin on

"4 space tabs
set softtabstop=4

"automatically insert spaces when pressing tab
set expandtab

"does what it says on the tin
set autoindent

"line numbers
set number

"set file browser to tree-mode
let g:netrw_liststyle = 3

"remove huge useless banner from file browser
let g:netrw_banner = 0

"open files in a new tab
let g:netrw_browse_split = 3

"other ways to get to command mode
inoremap kk <Esc>
inoremap vv <Esc>
inoremap vk <Esc>
inoremap kv <Esc>

"stop pretending to be vi
set nocompatible

"soft word-wrap (no linebreaks)
set wrap linebreak nolist

"add extra text to indicate wrapped lines
set showbreak=>>>>>>>>

"wait 250 ms between keys of a sequence, instead of 1000
set timeoutlen=250

"snippet commands
nnoremap ,html :read ~/.vim/snippets/boilerplate.html<CR>3jf>a


