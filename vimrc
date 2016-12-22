" neobundle
if 0 | endif
if &compatible
	set nocompatible
endif
set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'tomasr/molokai'
NeoBundleCheck
call neobundle#end()

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
"#set mouse=a
set cmdheight=2
set number
set notimeout ttimeout ttimeoutlen=200
set pastetoggle=<F11>
" Indentation options
set shiftwidth=4
set tabstop=4
" Mappings
map Y y$
nnoremap <C-L> :nohl<CR><C-L>

" color
colorscheme molokai
highlight Normal ctermbg=none
