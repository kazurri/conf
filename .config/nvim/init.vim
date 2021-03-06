" environment
let s:dein_cache_dir = $XDG_CACHE_HOME.'/dein'
let s:dein_config_dir = $XDG_CONFIG_HOME.'/nvim'
let s:dein_repo_dir = s:dein_cache_dir.'/repos/github.com/Shougo/dein.vim'
let s:toml_base = s:dein_config_dir.'/rc/base.toml'
let s:toml_lazy = s:dein_config_dir.'/rc/lazy.toml'

" augroup
augroup MyAutoCmd
  autocmd!
augroup END

" dein
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim '.s:dein_repo_dir
  endif
  execute 'set runtimepath^='.s:dein_repo_dir
endif

if dein#load_state(s:dein_cache_dir)
  call dein#begin(s:dein_cache_dir)
  call dein#load_toml(s:toml_base, {'lazy': 0})
  call dein#load_toml(s:toml_lazy, {'lazy': 1})
  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

filetype plugin indent on
syntax enable

" options
set list
set number
set cursorline
set hidden
set showtabline=2
set mouse=a
set visualbell
set t_vb=
set clipboard+=unnamedplus
set noswapfile
" tab options
set shiftwidth=2
set softtabstop=2
set expandtab
" search options
set whichwrap=b,s,<,>,[,]
set wrapscan
set ignorecase
set smartcase

" mappings
let g:mapleader = "\<Space>"
nnoremap <leader>f :Files<CR>
nnoremap <leader>g :GFiles<CR>
nnoremap <leader>G :GFiles?<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>r :Rg<CR>
nnoremap <leader>R :RG<CR>
nnoremap <leader>h :History<CR>
nnoremap <C-f> :Defx<CR>
nnoremap <C-w> :bd<CR>
nnoremap <C-q> :q<CR>
vmap <LeftRelease> "*ygv
