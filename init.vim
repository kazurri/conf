" dein.vim
" curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
" sh ./installer.sh ~/.config/dein
if 0 | endif
if &compatible
	set nocompatible
endif
set runtimepath+=~/.config/dein/repos/github.com/Shougo/dein.vim
if dein#load_state('~/.config/dein')
	call dein#begin('~/.config/dein')
	call dein#add('Shougo/dein.vim')
	call dein#add('Shougo/neosnippet.vim')
	call dein#add('Shougo/neosnippet-snippets')
	call dein#add('Shougo/deol.nvim', { 'rev': 'a1b5108fd' })
	call dein#add('itchyny/lightline.vim')
	call dein#add('tomasr/molokai')
	call dein#add('scrooloose/nerdtree')
	call dein#add('nathanaelkane/vim-indent-guides')
	call dein#end()
	call dein#save_state()
endif
if dein#check_install()
	call dein#install()
endif

" http://vim.wikia.com/wiki/Example_vimrc
" Features
set nocompatible
filetype plugin indent on
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
set shiftwidth=4
set tabstop=4

" Mappings
map Y y$
nnoremap <C-L> :nohl<CR><C-L>
nnoremap <C-c> :<C-u>set cursorline!<CR>

" Color
colorscheme molokai
highlight Normal ctermbg=NONE

" The NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>

" Indent Guides
let g:indent_guides_enable_on_vim_startup = 1
