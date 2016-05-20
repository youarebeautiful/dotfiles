call plug#begin('~/.vim/plugged')

Plug 'junegunn/seoul256.vim'
Plug 'tpope/vim-salve'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fireplace'
Plug 'https://github.com/kien/rainbow_parentheses.vim'
Plug 'https://github.com/vim-scripts/paredit.vim'
Plug 'https://github.com/guns/vim-clojure-highlight'
Plug 'https://github.com/guns/vim-clojure-static'
Plug 'tpope/vim-surround'

call plug#end()

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

colo seoul256


syntax enable
filetype plugin indent on
set tabstop=2
set softtabstop=2
set expandtab
set number


inoremap jk <esc>
nnoremap j gj
nnoremap k gk

nnoremap $ <Nop>
nnoremap ^ <Nop>
nnoremap B ^
nnoremap E $
