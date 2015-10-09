call plug#begin('~/.vim/plugged')
"Plug 'junegunn/seoul256.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-salve'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fireplace' ", { 'for': 'clojure' }
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

syntax on
filetype plugin indent on


syntax enable
set background=dark
colorscheme solarized

set number
