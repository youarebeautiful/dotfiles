" space is the leader now
let mapleader = "\<Space>"

call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'kien/ctrlp.vim'
Plug 'davidhalter/jedi-vim'
Plug 'klen/python-mode'
Plug 'sjl/gundo.vim'
Plug 'rking/ag.vim'
Plug 'ervandew/supertab'
Plug 'https://github.com/kien/rainbow_parentheses.vim'

call plug#end()

colorscheme badwolf     " awesome colorscheme
syntax on               " enable syntax processing
set encoding=utf-8      " utf-8 coding
set number              " show line numbers
set ruler               " ruler
set tabstop=4           " number of visual spaces per TAB
set softtabstop=4       " number of spaces in tab while editing
set expandtab           " tabs are spaces
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to
set autoindent          " auto indentation
set shiftwidth=4        " tab is 4 spaces
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=indent   " fold based on indent level


let python_highlight_all = 1
filetype plugin indent on

" jk is escape
inoremap jk <esc>

" turn off search highlight
nnoremap <leader>, :noglsearch<CR>a

" space open/closes folds
" nnoremap <space> za

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

"move to beginning/end of line
nnoremap B ^
nnoremap E $

" highlight last inserted text
nnoremap gV `[v`]

" toggle gundo
nnoremap <leader>u :GundoToggle<CR>

" save session
nnoremap <leader>s :mksession<CR>

" open ag.vim
nnoremap <leader>a :Ag

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

" move backups to /tmp
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" rainbow parens always on
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Python-mode kek
" Deactivate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 0

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0

" more Python

" use <leader>l to toggle display of whitespace
nmap <leader>l :set list!<CR>

" automatically change window's cwd to file's dir
set autochdir

" more subtle popup colors 
if has ('gui_running')
    highlight Pmenu guibg=#cccccc gui=bold    
endif
