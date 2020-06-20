"        _
" __   _(_)_ __ ___  _ __ ___
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
"   \_/ |_|_| |_| |_|_|  \___|

let mapleader = " "

if (has("nvim")) "file management
    "if not in git repo
    map <S-b> :w<CR>:Files<CR>
    map <C-b> :w<CR>:GFiles<CR>
endif
map <C-n> :NERDTreeToggle <Enter>

imap <C-f> <Esc>:%s/
vmap <C-c> <plug>NERDCommenterToggle
nmap <C-c> <plug>NERDCommenterToggle
nnoremap <leader>r :Rg<CR>
nmap <C-m> <Plug>MarkdownPreviewToggle
nmap <Leader>i :ImportJSWord

call plug#begin('~/.vim/plugged')
	Plug 'scrooloose/nerdtree'
    Plug 'ryanoasis/vim-devicons'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'mxw/vim-jsx'
    Plug 'mhinz/vim-startify'
    Plug 'dense-analysis/ale'
	Plug 'prettier/vim-prettier', { 'do': 'yarn add', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
	Plug 'pangloss/vim-javascript'
	Plug 'rust-lang/rust.vim'
    Plug 'ayu-theme/ayu-vim'
    Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
    Plug 'preservim/nerdcommenter'
    Plug 'ChristianChiarulli/codi.vim'
    Plug 'Galooshi/vim-import-js'
    if (has("nvim"))
        Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
        Plug 'junegunn/fzf.vim'
        Plug 'airblade/vim-rooter'
        Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
    endif
call plug#end()

syntax on
let ayucolor="dark"
colorscheme ayu

hi Normal guibg=NONE ctermbg=NONE " transparent bg

"" FZF CONFIGURATION
if(has("nvim"))
let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }

let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
let $FZF_DEFAULT_COMMAND="rg --files --hidden"
" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }
endif

if (has("nvim"))
    set nohlsearch
endif
set backupcopy=yes
set noswapfile
set encoding=utf-8
set number
set ttimeoutlen=100
set incsearch
set backspace=indent,eol,start
let g:jsx_ext_required = 0
let b:ale_linters = {'javascript': ['eslint'],
            \ 'jsx': ['eslint'],
            \'javascript.jsx': ['eslint'],
            \'cpp':['ccls'],
            \ 'ts': ['eslint'],
        \ 'typescript': ['eslint'],
            \ 'scss':['prettier']}
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier'],
\ 'jsx': ['prettier'],
\ 'ts': ['prettier'],
\ 'typescript': ['prettier'],
\ 'javascript.jsx': ['[prettier'],
\   'rust':['rustfmt'],
\   'html':['prettier'],
\   'css':['prettier'],
\ 'scss':['prettier'],
\ 'cpp':['ccls']
\}
autocmd BufWrite *.js ALEFix
autocmd BufWrite *.ts ALEFix
autocmd BufWrite *.jsx ALEFix
autocmd BufWrite *.tsx ALEFix
autocmd BufWrite *.css ALEFix
autocmd BufWrite *.scss ALEFix
autocmd BufWrite *.rs ALEFix
let g:ale_sign_error = 'XX'
let g:ale_sign_warning = '!!'
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
