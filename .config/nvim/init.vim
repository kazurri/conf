" vim
" install:
"   curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
"   sh ./installer.sh ~/.cache/dein

if 0 | endif
if &compatible
	set nocompatible
endif
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
if dein#load_state('~/.cache/dein')
	call dein#begin('~/.cache/dein')
	call dein#add('Shougo/dein.vim')
	call dein#add('Shougo/neosnippet.vim')
	call dein#add('Shougo/neosnippet-snippets')
	call dein#add('Shougo/deol.nvim', { 'rev': 'a1b5108fd' })
	call dein#add('joshdick/onedark.vim')
	call dein#add('itchyny/lightline.vim')
	call dein#add('edkolev/tmuxline.vim')
	call dein#add('scrooloose/nerdtree')
	call dein#add('Yggdroot/indentLine')
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
set shiftwidth=2
set tabstop=2

" Mappings
map Y y$
vmap <LeftRelease> "*ygv
nnoremap <C-L> :nohl<CR><C-L>
nnoremap <C-c> :<C-u>set cursorline!<CR>

" Color
colorscheme onedark
highlight Normal ctermbg=NONE

" lightline
let g:lightline = {'colorscheme':'one'}

" tmuxline
" usage:
"   Tmuxline
"   TmuxlineSnapshot ~/.tmuxline.conf
let g:tmuxline_preset = {
	\ 'a'    : '#S',
	\ 'b'    : '#W',
	\ 'c'    : '#T',
	\ 'win'  : '#I #W',
	\ 'cwin' : '#I #W',
	\ 'x'    : ['#{cpu_icon}#{cpu_percentage}','#{battery_icon}#{battery_percentage}','#{weather}'],
	\ 'y'    : '%R',
	\ 'z'    : '#H',
	\ }
let g:tmuxline_powerline_separators = 0
let g:tmuxline_theme = 'lightline'

" NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
