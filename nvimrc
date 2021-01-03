set nocompatible
filetype off 
call plug#begin()
filetype plugin indent on     " обязательно!

" =============================================================================
" Plugins
" =============================================================================

" ---- VimWiki ----
Plug 'vimwiki/vimwiki'
let wiki = {}
let wiki.automatic_nested_syntaxes = 0
let g:vimwiki_list = [{
    \'path': '~/vimwiki/',
    \'syntax': 'markdown', 'ext': '.md'
    \}]
let g:vimwiki_global_ext = 0

" ---- Easymotion ----
Plug 'lokaltog/vim-easymotion'

" ---- Tablular ----
Plug 'godlygeek/tabular'

" ---- NerdTree ----
Plug 'scrooloose/nerdtree'
let NERDTreeIgnore=['\~$', '\.pyc$', '\.pyo$', '\.class$', 'pip-log\.txt$','\.o$']
map <F3> :NERDTreeToggle<CR>
map <F4> :NERDTreeFind<CR>
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

"---- Nerd commenter ----
Plug 'scrooloose/nerdcommenter'

" ---- Surround ----
Plug 'machakann/vim-sandwich'

"---- FZF ----
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
map <c-p> :FZF<CR>
map <c-b> :Buffers<CR>
map <c-t> :Tags<CR>
let g:fzf_tags_command = 'ctags -R --exclude=.git --exclude=node_modules --exclude=test'

" ---- EMMET ----
Plug 'mattn/emmet-vim'

" ---- Lightline ----
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
let g:lightline = {}
let g:lightline.tabline = {'left': [['buffers']], 'right': [['close']]}
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type   = {'buffers': 'tabsel'}
let g:lightline = {
    \ 'colorscheme': 'wombat',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'cocstatus', 'currentfunction', 'readonly', 'filename', 'modified' ] ]
    \ },
    \ 'component_function': {
    \   'cocstatus': 'coc#status',
    \   'currentfunction': 'CocCurrentFunction'
    \ },
    \}

" ---- Deoplete ----
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"let g:deoplete#enable_at_startup = 1

" --- COC ----
Plug 'neoclide/coc.nvim', {'branch': 'release'}
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> K :call <SID>show_documentation()<CR>

" ---- vim-polyglot ----
Plug 'sheerun/vim-polyglot'

" ---- ALE ----
 Plug 'w0rp/ale'
 let g:ale_linters = {
     \'go': ['gofmt', 'golangci-lint', 'golint'],
     \'javascript': ['eslint'],
     \'typescript': ['eslint'],
     \'python': ['flake8', 'pyright'],
     \}
 let g:ale_fixers = {
     \'css': ['prettier'],
     \'go': ['gofmt'],
     \'html': ['prettier'],
     \'javascript': ['prettier'],
     \'javascriptreact': ['prettier'],
     \'json': ['prettier'],
     \'json5': ['prettier'],
     \'markdown': ['prettier'],
     \'md': ['prettier'],
     \'python': ['black'],
     \'ts': ['prettier'],
     \'typescript': ['prettier', 'tslint'],
     \'typescriptreact': ['prettier', 'tslint'],
     \'vimwiki': ['prettier'],
     \'vue': ['prettier'],
     \'yaml': ['prettier'],
     \}
 let g:ale_fix_on_save = 0
 let g:ale_set_highlights = 0
 let g:ale_completion_enabled = 0
 map <C-A-L> :ALEFix<CR>

"---- Git ----
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'Xuyuanp/nerdtree-git-plugin'

"---- Buffkill ----
Plug 'qpkorr/vim-bufkill'
map <C-q> :BD<CR>

" ---- Markdown ----
" settings for vim-markdown (provided by vim-polyglot)
let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_folding_style_pythonic = 1
let g:vim_markdown_fenced_languages = ['js=javascript']
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

" ---- Javascript ----
" Plug 'carlitux/deoplete-ternjs'

" ---- GO ----
let g:ale_go_golangci_lint_options = '--fast'

" ---- Themes ----
Plug 'sonph/onehalf'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'altercation/vim-colors-solarized', { 'as': 'solarized' }
let g:solarized_termcolors=256
Plug 'muellan/am-colors'
Plug 'liuchengxu/space-vim-theme'
Plug 'morhetz/gruvbox'
let g:gruvbox_italic=1

" ---- Font ----
set guifont=JetBrains\ Mono:h13
if has("gui_running")
    call MacSetFont("Fira Code", 12)
    call MacSetFontShouldAntialias(1)
endif

" ---- indentLine ----
Plug 'Yggdroot/indentLine'
let g:vim_json_syntax_conceal = 0
let g:WebDevIconsUnicodeDecorateFolderNodes = 1

" Close Vim-Plug
call plug#end()

let mapleader=","
set number
set autoindent noexpandtab tabstop=4 shiftwidth=4
set backspace=indent,eol,start
set wildignore=*.swp,*.bak,*.pyc,*.class,*.jar,*.gif,*.png,*.jpg,*.jpeg
set clipboard=unnamedplus
" -
set hidden
set hlsearch
set nocursorcolumn
set nocursorline
set norelativenumber
" swap etc
set history=1000
set undolevels=1000
set noswapfile
set nobackup
" #
set termguicolors

" ---- Hotkeys ----
nmap <C-l> <C-w><Right>
nmap <C-h> <C-w><Left>
nmap <C-K> :bnext<CR>
nmap <C-J> :bprev<CR>
nmap <F9> qq
nmap <F10> q
nmap <F12> @q

" ---- Mouse ----
set mouse=a
" ---- Folding ----
set foldmethod=indent
set foldlevelstart=128

" ---- Functions TABS ----
function! TabWidth4()
    set expandtab " spaces instead of tabs 
    set tabstop=4 " ширина табуляции
    set softtabstop=4 " ширина таба при использовании всесто него пробелов
    set shiftwidth=4 " ширина таба при использовании всесто него пробелов
endfunction

function! TabWidth2()
    set expandtab " spaces instead of tabs 
    set tabstop=2 " ширина табуляции
    set softtabstop=2 " ширина таба при использовании всесто него пробелов
    set shiftwidth=2 " ширина таба при использовании всесто него пробелов
endfunction
call TabWidth4()

" ---- Functions THEMES ----
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

function! ThAmpresent()
    colorscheme ampresent
    let g:airline_theme='gruvbox'
    set background=light
endfunction

function! ThSpaceL()
    colorscheme space_vim_theme
    set background=light
endfunction

function! ThSpaceD()
    colorscheme space_vim_theme
    set background=dark
endfunction

call ThAmpresent()

" ---- Functions ALE ----
function! ALEShowListEnable()
    let g:ale_open_list = 1
    let g:ale_keep_list_window_open = 0
endfunction

function! ALEShowListDisable()
    let g:ale_open_list = 0
    let g:ale_keep_list_window_open = 0
endfunction
call ALEShowListDisable()

" ---- YAML correct indentation ----

if exists("b:did_indent")
  finish
endif
let b:did_indent = 1

setlocal autoindent sw=2 et
setlocal indentexpr=GetYamlIndent()
setlocal indentkeys=o,O,*<Return>,!^F

function! GetYamlIndent()
  let lnum = v:lnum - 1
  if lnum == 0
    return 0
  endif
  let line = substitute(getline(lnum),'\s\+$','','')
  let indent = indent(lnum)
  let increase = indent + &sw
  if line =~ ':$'
    return increase
  else
    return indent
  endif
endfunction

