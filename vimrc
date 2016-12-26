" neobundle
" mkdir ~/.vim/bundle
" git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle
if 0 | endif
if &compatible
	set nocompatible
endif
set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'tomasr/molokai'
NeoBundle 'ConradIrwin/vim-bracketed-paste'
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

" Unite
nnoremap [unite] <Nop>
nmap <Space> [unite]
let g:unite_enable_start_insert=1
let g:unite_source_file_mru_limit=50
let g:unite_source_file_mru_filename_format=''
nnoremap <silent> [unite]f :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nnoremap <silent> [unite]b :<C-u>Unite buffer<CR>
nnoremap <silent> [unite]r :<C-u>Unite -buffer-name=register register<CR>
nnoremap <silent> [unite]m :<C-u>Unite file_mru<CR>
nnoremap <silent> [unite]l :<C-u>Unite bookmark<CR>
nnoremap <silent> [unite]a :<C-u>UniteBookmarkAdd<CR>

" color
colorscheme molokai
highlight Normal ctermbg=none
set cursorline

" mapping
nnoremap <C-c> :<C-u>set cursorline!<CR>
