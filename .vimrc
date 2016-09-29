" http://vim.wikia.com/wiki/Example_vimrc
" Features
set nocompatible
filetype indent plugin on
syntax on
" Must have options
set hidden
set wildmenu
set showcmd
set hlsearch
" Usability options
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set nostartofline
set ruler
set laststatus=2
set confirm
set visualbell
set t_vb=
set mouse=a
set cmdheight=2
set number
set notimeout ttimeout ttimeoutlen=200
set pastetoggle=<F11>
" Indentation options
set shiftwidth=2
set tabstop=2
" Mappings
map Y y$
nnoremap <C-L> :nohl<CR><C-L>

" color
set t_Co=256
set background=dark
let g:molokai_original=1
let g:rehash256=1
" https://github.com/tomasr/molokai
colorscheme molokai

" powerline
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
set laststatus=2
set showtabline=2
set noshowmode
