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
 
" =============================================================================

Bundle 'tpope/vim-fugitive'
Bundle 'lokaltog/vim-easymotion'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" autocomplete
Plugin 'Shougo/neocomplete'
Plugin 'Shougo/neosnippet.vim'
Plugin 'Shougo/deoplete.nvim'
Plugin 'zchee/deoplete-go'
let g:neocomplete#enable_at_startup = 1

" ---- Filesystem ----
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
" ---- Python ----
Plugin 'klen/python-mode'
Plugin 'davidhalter/jedi-vim'
"---- GO ----
Plugin 'fatih/vim-go'

set backspace=indent,eol,start
aunmenu Help.
aunmenu Window.
let no_buffers_menu=1
set mousemodel=popup

set ruler
set completeopt-=preview
set gcr=a:blinkon0
if has("gui_running")
	  set cursorline
  endif
  set ttyfast

" NerdTree настройки
" показать NERDTree на F3
map <F3> :NERDTreeToggle<CR>
" "игноррируемые файлы с расширениями
let NERDTreeIgnore=['\~$', '\.pyc$', '\.pyo$', '\.class$', 'pip-log\.txt$','\.o$']

" CTRL-s - сохранить файл
noremap <silent> <C-S> :update<CR>
vnoremap <silent> <C-S> <C-C>:update<CR>
inoremap <silent> <C-S> <C-O>:update<CR>

syntax on
set hlsearch
set autoindent noexpandtab tabstop=4 shiftwidth=4
set number
set laststatus=2
" tabs
set expandtab " spaces instead of tabs 
set tabstop=4 " ширина табуляции
set softtabstop=4 " ширина таба при использовании всесто него пробелов
