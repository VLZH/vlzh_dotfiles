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

" ---- Syntastic ----
Plugin 'vim-syntastic/syntastic'
let g:syntastic_python_python_exec = 'python3'

" ---- CTRLP ----
" Plugin 'kien/ctrlp.vim'
" map <F2> :CtrlP<CR>
" map <F1> :CtrlPBuffer<CR>
" let g:ctrlp_extensions = ['tag']

" ---- EasyTags ----
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'

"--- Vundle --- git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
Plugin 'VundleVim/Vundle.vim'

" ---- ignore files ----
set wildignore=*.swp,*.bak,*.pyc,*.class,*.jar,*.gif,*.png,*.jpg,*.jpeg

" ---- NerdTree ----
Plugin 'scrooloose/nerdtree'
let NERDTreeIgnore=['\~$', '\.pyc$', '\.pyo$', '\.class$', 'pip-log\.txt$','\.o$']
map <F3> :NERDTreeToggle<CR>
map <F4> :NERDTreeFocus<CR>
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

"---- Command-t ----
Plugin 'wincent/command-t'
map <F2> :CommandT<CR>

"---- Multiple cursour ----
Plugin 'terryma/vim-multiple-cursors'

" ---- Python ----
Plugin 'klen/python-mode'
Plugin 'davidhalter/jedi-vim'
let g:pymode_python = 'python3'
let g:pymode_lint_on_write = 0
let g:pymode_rope = 0
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_lookup_project = 0
let g:pymode_doc = 0
let g:pymode_doc_key = 'K'
let pymode_folding = 0

" ---- Javascript ----
"Plugin 'pangloss/vim-javascript'
Plugin 'othree/yajs.vim'
Plugin 'mxw/vim-jsx'
Plugin 'ternjs/tern_for_vim'
let g:jsx_ext_required = 0 " highlighting jsx syntax for .js files too
Plugin 'prettier/vim-prettier'
" vue
Plugin 'posva/vim-vue'

Bundle 'reasonml-editor/vim-reason-plus'

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

" ---- Buffers ----
" switching between buffers panels
"map <C-k> <C-w><Up>
"map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>
map <C-K> :bnext<CR>
map <C-J> :bprev<CR>
set hidden

set guioptions=
" enable mouse support
set mouse=a
