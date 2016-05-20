call plug#begin()

function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

Plug 'rust-lang/rust.vim'
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
Plug 'racer-rust/vim-racer'
Plug 'ervandew/supertab'

Plug 'reedes/vim-colors-pencil'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

syntax enable
set tabstop=4
set softtabstop=4
set expandtab
filetype indent on
set wildmenu
set lazyredraw
set showmatch

set incsearch
set hlsearch
nnoremap <leader><space> :nohlsearch<CR>

inoremap jk <esc>

" deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources = {}
let g:deoplete#sources.rust = ['buffer', 'racer']
let g:deoplete#enable_smart_case = 1

" vim-racer
set hidden
let g:racer_cmd = "/home/me/.cargo/bin/racer"
let $RUST_SRC_PATH = "/usr/local/src/rust/rustc-1.8.0/src/"

" rust-vim
let g:rustfmt_autosave = 1

" supertab
let g:SuperTabDefaultCompletionType = "<c-n>"

" airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'pencil'

" colors
colorscheme pencil
set background=light
let g:pencil_higher_contrast_ui = 1
let g:pencil_neutral_headings = 1
