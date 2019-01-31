set nocompatible
filetype off 
call plug#begin()
filetype plugin indent on     " обязательно!

" =============================================================================
" Plugins
" =============================================================================

Plug 'tpope/vim-fugitive'
Plug 'lokaltog/vim-easymotion'

" ---- Airline ----
Plug 'vim-airline/vim-airline'
let g:airline#extensions#tabline#enabled = 1
let g:airline_section_y = ''
let g:airline_section_z = '%3l/%L:%3v'

" ---- Deoplete ----
Plug 'Shougo/deoplete.nvim'
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1 
let g:deoplete#auto_completion_start_length = 0
let g:deoplete#file#enable_buffer_path = 1
" profile
let g:deoplete#enable_profile = 1

" ---- ALE ----
Plug 'w0rp/ale'
let g:airline#extensions#ale#enabled = 1
let g:ale_linters = {
    \'javascript': ['eslint'],
    \'python': ['flake8'],
\}
let g:ale_fixers = {
            \'python': ['black'],
            \'javascript': ['prettier'],
            \'typescript': ['prettier'],
            \'json': ['prettier'],
            \'go': ['gofmt'],
            \}
let g:ale_fix_on_save = 1
map <C-A-L> :ALEFix<CR>
" ---- ignore files ----
set wildignore=*.swp,*.bak,*.pyc,*.class,*.jar,*.gif,*.png,*.jpg,*.jpeg

" ---- NerdTree ----
Plug 'scrooloose/nerdtree'
let NERDTreeIgnore=['\~$', '\.pyc$', '\.pyo$', '\.class$', 'pip-log\.txt$','\.o$']
map <F3> :NERDTreeToggle<CR>
map <F4> :NERDTreeFind<CR>
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

"---- FZF ----
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
map <c-p> :FZF<CR>
map <c-b> :Buffers<CR>
map <c-t> :Tags<CR>

"---- Multiple cursour ----
Plug 'terryma/vim-multiple-cursors'
function! Multiple_cursors_before()
    let b:deoplete_disable_auto_complete = 1
endfunction

function! Multiple_cursors_after()
    let b:deoplete_disable_auto_complete = 0
endfunction

"---- Nerd commenter ----
Plug 'scrooloose/nerdcommenter'

"---- Git ----
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'

"---- Buffkill ----
Plug 'qpkorr/vim-bufkill'
map <C-q> :BD<CR>

"---- Wakatime ----
Plug 'wakatime/vim-wakatime'

" ---- Python ----
Plug 'klen/python-mode'
Plug 'zchee/deoplete-jedi'
Plug 'plytophogy/vim-virtualenv'
let g:deoplete#sources#jedi#python_path = 'python3'
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
" Plug 'othree/yajs.vim'
Plug 'mxw/vim-jsx'
let g:jsx_ext_required = 0 " highlighting jsx syntax for .js files too
" vue
Plug 'posva/vim-vue'
" ternj
Plug 'ternjs/tern_for_vim', { 'do': 'npm install && npm install -g tern' }
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }

" ---- Styled-components ----
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

" ---- Typescript ----
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript'

" ---- JSON ----
Plug 'elzr/vim-json'

" ---- JSON ----
Plug 'mattn/emmet-vim'

" ---- GO ----
Plug 'fatih/vim-go'
Plug 'zchee/deoplete-go'

" ---- Themes ----
Plug 'sonph/onehalf'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'altercation/vim-colors-solarized', { 'as': 'solarized' }
let g:solarized_termcolors=256
Plug 'morhetz/gruvbox'
set termguicolors
let g:gruvbox_italic=1

" ---- indentLine ----
Plug 'Yggdroot/indentLine'
let g:vim_json_syntax_conceal = 0

" Close Vim-Plug
call plug#end()

let mapleader=","
set hidden
set number
set backspace=indent,eol,start
set mousemodel=popup
set hlsearch
set autoindent noexpandtab tabstop=4 shiftwidth=4
set laststatus=2
" ---- Tabs ----
set expandtab " spaces instead of tabs 
set tabstop=4 " ширина табуляции
set softtabstop=4 " ширина таба при использовании всесто него пробелов
" ---- Hotkeys ----
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>
map <C-K> :bnext<CR>
map <C-J> :bprev<CR>
" ---- Mouse ----
set mouse=a
set clipboard=unnamedplus
" ---- Folding ----
set foldmethod=syntax
set foldlevelstart=128
set foldcolumn=0
" ---- Functions ----
function! ThDracula()
    colorscheme dracula
    let g:airline_theme='dracula'
    set background=dark
endfunction

function! ThGruvL()
    colorscheme gruvbox
    let g:airline_theme='gruvbox'
    set background=light
endfunction

function! ThGruvD()
    colorscheme gruvbox
    let g:airline_theme='gruvbox'
    set background=dark
endfunction

call ThGruvL()
