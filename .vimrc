"        _
" __   _(_)_ __ ___  _ __ ___
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
"   \_/ |_|_| |_| |_|_|  \___|

map <C-z> <Esc> u i
nmap <C-z> u
map <C-b> :NERDTreeToggle <Enter>
imap <C-_> <Esc>0i//
imap <C-f> <Esc>:%s/
map <C-n> xxxj
"imap <C-i> <Esc>:ALEFix<Enter>i
call plug#begin('~/.vim/plugged')
	Plug 'scrooloose/nerdtree'
    Plug 'ryanoasis/vim-devicons'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
	Plug 'mxw/vim-jsx'
    Plug 'mhinz/vim-startify'
    Plug 'dense-analysis/ale'
    Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
	Plug 'MaxMEllon/vim-jsx-pretty'
	Plug 'prettier/vim-prettier', { 'do': 'yarn add', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
	Plug 'pangloss/vim-javascript'
	Plug 'rust-lang/rust.vim'
    Plug 'ayu-theme/ayu-vim'
call plug#end()

syntax on
let ayucolor="dark"
colorscheme ayu
hi Normal guibg=NONE ctermbg=NONE " transparent bg
set backupcopy=yes
set noswapfile
set encoding=UTF-8
set number
set ttimeoutlen=100
set incsearch
set backspace=indent,eol,start
let b:ale_linters = {'javascript': ['eslint'],'jsx': ['eslint'],'javascript.jsx': ['eslint'],'cpp':['ccls']}
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier'],
\ 'jsx': ['prettier'],
\ 'javascript.jsx': ['[prettier'],
\   'rust':['rustfmt'],
\   'html':['prettier'],
\   'css':['prettier'],
\ 'cpp':['ccls']
\}
autocmd BufWrite *.js ALEFix
autocmd BufWrite *.rs ALEFix
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
 if (has("termguicolors"))
    set termguicolors
  endif
endif
