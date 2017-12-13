" Start on instaling Vundle
" end after of success install in vim need to run command: ':PluginInstall' 
set nocompatible
filetype off 
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=$GOROOT/misc/vim

call vundle#rc()

filetype plugin indent on     " обязательно!

" =============================================================================
" Plugins
" =============================================================================
Bundle 'tpope/vim-fugitive'
Bundle 'lokaltog/vim-easymotion'
" Airline and settings
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 1

" autocomplete
Plugin 'Shougo/neocomplete'
Bundle 'Shougo/neosnippet-snippets'
Plugin 'Shougo/neosnippet.vim'
Plugin 'Shougo/deoplete.nvim'
let g:neocomplete#enable_at_startup = 1

"--- Vundle --- git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
Plugin 'VundleVim/Vundle.vim'

" ---- NerdTree ----
Plugin 'scrooloose/nerdtree'
let NERDTreeIgnore=['\~$', '\.pyc$', '\.pyo$', '\.class$', 'pip-log\.txt$','\.o$']
map <F3> :NERDTreeToggle<CR>
map <F4> :NERDTreeFocus<CR>

"---- Command-t ----
Plugin 'wincent/command-t'
map <F2> :CommandT<CR>

" ---- Python ----
Plugin 'klen/python-mode'
Plugin 'davidhalter/jedi-vim'
let g:pymode_lint_on_write = 0
let g:pymode_rope = 0
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_lookup_project = 0
let g:pymode_doc = 0
let g:pymode_doc_key = 'K'

" ---- Javascript ----
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
let g:jsx_ext_required = 0 " highlighting jsx syntax for .js files too
Plugin 'prettier/vim-prettier'

"---- GO ----
Plugin 'fatih/vim-go'
" deoplete.nvim source for Go. Asynchronous Go completion for Neovim.
Plugin 'zchee/deoplete-go'

"---- Git ----
Plugin 'airblade/vim-gitgutter'

"---- Ident Guides ----
Plugin 'nathanaelkane/vim-indent-guides'

set backspace=indent,eol,start
set mousemodel=popup
syntax on
set hlsearch
set autoindent noexpandtab tabstop=4 shiftwidth=4
set number
set noswapfile
set nobackup
set laststatus=2
" tabs
set expandtab " spaces instead of tabs 
set tabstop=4 " ширина табуляции
set softtabstop=4 " ширина таба при использовании всесто него пробелов
" switching between buffers panels
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>
map <C-J> :bnext<CR>
map <C-K> :bprev<CR>
set guioptions=
