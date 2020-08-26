" environment
let s:dein_cache_dir = $XDG_CACHE_HOME.'/dein'
let s:dein_rc_dir = $XDG_CONFIG_HOME.'/nvim/rc'
let s:dein_repo_dir = s:dein_cache_dir.'/repos/github.com/Shougo/dein.vim'

" augroup
augroup MyAutoCmd
  autocmd!
augroup END

" dein
if &compatible
  set nocompatible
endif

if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim '.s:dein_repo_dir
  endif
  execute 'set runtimepath^='.s:dein_repo_dir
endif

if dein#load_state(s:dein_cache_dir)
  call dein#begin(s:dein_cache_dir)

  let s:base = s:dein_rc_dir . '/base.toml'
  let s:lazy = s:dein_rc_dir . '/lazy.toml'

  call dein#load_toml(s:base, {'lazy': 0})
  call dein#load_toml(s:lazy, {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

filetype plugin indent on
syntax enable

" options
" http://vim.wikia.com/wiki/Example_vimrc
" Must have options
set hidden
set hlsearch
" Usability options
set ignorecase
set smartcase
set visualbell
set t_vb=
set mouse=a
set number
set pastetoggle=<F11>
" Indentation options
set expandtab
set shiftwidth=2

" Mappings
vmap <LeftRelease> "*ygv
nnoremap <C-L> :nohl<CR><C-L>
nnoremap <C-c> :<C-u>set cursorline!<CR>
