set nocompatible
filetype off 
call plug#begin()
filetype plugin indent on     " обязательно!

" =============================================================================
" Plugins
" =============================================================================

Plug 'tpope/vim-fugitive'
Plug 'lokaltog/vim-easymotion'
" Airline and settings
Plug 'vim-airline/vim-airline'
let g:airline#extensions#tabline#enabled = 1
let g:airline_section_y = ''
let g:airline_section_z = '%3l/%L:%3v'

" Deoplete
Plug 'Shougo/deoplete.nvim'
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1 
let g:deoplete#auto_completion_start_length = 0
let g:deoplete#file#enable_buffer_path = 1
" profile
let g:deoplete#enable_profile = 1

" ALE is alternative to Syntastic
Plug 'w0rp/ale'
let g:airline#extensions#ale#enabled = 1
let g:ale_fixers = {
            \'python': ['black'],
            \'javascript': ['prettier', 'eslint'],
            \'typescript': ['prettier', 'tslint'],
            \'go': ['gofmt'],
            \}
" let g:ale_fix_on_save = 1
map <C-A-L> :ALEFix<CR>
" ---- ignore files ----
set wildignore=*.swp,*.bak,*.pyc,*.class,*.jar,*.gif,*.png,*.jpg,*.jpeg

" Prettier
Plug 'prettier/vim-prettier', {'do': 'yarn install'}
let g:prettier#exec_cmd_async = 1
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

" ---- NerdTree ----
Plug 'scrooloose/nerdtree'
let NERDTreeIgnore=['\~$', '\.pyc$', '\.pyo$', '\.class$', 'pip-log\.txt$','\.o$']
map <F3> :NERDTreeToggle<CR>
map <F4> :NERDTreeFind<CR>
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

"---- Ctrlp ----
Plug 'kien/ctrlp.vim'
let g:ctrlp_custom_ignore = 'uploads\|node_modules\|DS_Store\|git'
map <c-b> :CtrlPBuffer<CR>
" easytags

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

" Buffkill - closing of buffers without closing window
Plug 'qpkorr/vim-bufkill'
map <C-q> :BD<CR>

" Wakatime
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

function Py2()
    let g:pymode_python = 'python3'
    let g:deoplete#sources#jedi#python_path = 'python3'
endfunction

" ---- Javascript ----
" Plug 'othree/yajs.vim'
Plug 'mxw/vim-jsx'
let g:jsx_ext_required = 0 " highlighting jsx syntax for .js files too
" prettier
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue'] }
" vue
Plug 'posva/vim-vue'
" ternj
Plug 'ternjs/tern_for_vim', { 'do': 'npm install && npm install -g tern' }
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }

" ---- Typescript ----
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript'

"---- GO ----
Plug 'fatih/vim-go'
Plug 'zchee/deoplete-go'

"---- Theme ----
Plug 'rakr/vim-one'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'Yggdroot/indentLine'

" Close Vim-Plug
call plug#end()

let mapleader=","
syntax on
set hidden
set number
set backspace=indent,eol,start
set mousemodel=popup
set hlsearch
set autoindent noexpandtab tabstop=4 shiftwidth=4
set laststatus=2
" ---- Swap ----
set noswapfile
set nobackup
" ---- Tabs ----
set expandtab " spaces instead of tabs 
set tabstop=4 " ширина табуляции
set softtabstop=4 " ширина таба при использовании всесто него пробелов
" ---- Buffers ----
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
" ---- Theme ----
if (empty($TMUX))
  if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif
let g:airline_theme='one'
" set background=dark
set background=light
colorscheme one
let g:one_allow_italics = 1
" Virtualenv
" Function to activate a virtualenv in the embedded interpreter for
" omnicomplete and other things like that.
function LoadVirtualEnv(path)
    let activate_this = a:path . '/bin/activate_this.py'
    if getftype(a:path) == "dir" && filereadable(activate_this)
        python << EOF
import vim
activate_this = vim.eval('l:activate_this')
execfile(activate_this, dict(__file__=activate_this))
EOF
    endif
endfunction

" Load up a 'stable' virtualenv if one exists in ~/.virtualenv
let defaultvirtualenv = "/.pyenv"

" Only attempt to load this virtualenv if the defaultvirtualenv
" actually exists, and we aren't running with a virtualenv active.
if has("python")
    if empty($VIRTUAL_ENV) && getftype(defaultvirtualenv) == "dir"
        call LoadVirtualEnv(defaultvirtualenv)
    endif
endif
