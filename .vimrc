execute pathogen#infect()

set nocompatible
set hidden 
set belloff=all

set statusline=%(%F%m%r%h%w\ [%Y]\ %{&encoding}\ %)%=%(%l,%v\ %LL\ %p%%%)
set laststatus=2

let mapleader=','

nmap <c-j> <c-w>j
nmap <c-k> <c-w>k
nmap <c-l> <c-w>l
nmap <c-h> <c-w>h

"Allow j and k with autocomplete"
inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))


nmap <LEADER>v :vsplit<CR>
nmap <LEADER>s :split<CR>

nnoremap <F5> :buffers<CR>:buffer<Space>

nnoremap <LEADER>1 :1b<CR>
nnoremap <LEADER>2 :2b<CR>
nnoremap <LEADER>3 :3b<CR>
nnoremap <LEADER>4 :4b<CR>
nnoremap <LEADER>5 :5b<CR>
nnoremap <LEADER>6 :6b<CR>
nnoremap <LEADER>7 :7b<CR>
nnoremap <LEADER>8 :8b<CR>
nnoremap <LEADER>9 :9b<CR>
nnoremap <LEADER>0 :10b<CR>

"This unsets the last search pattern register by hitting return"
nnoremap <CR> :noh<CR><CR>

"+ and - to resize splited windows"
map - <C-W>-
map = <C-W>+

nmap <F7> :!cat %:p <bar> xclip -sel clip <bar> echo Filed was copied <CR>

"tab config"
set ts=4
setlocal expandtab
setlocal softtabstop=4

" Enable filetype plugins "
filetype plugin on

" Disable preview code when using omni complete"
set completeopt=menu

" Allow modelines"
set modelines=1

"------------ Mappings --------------"

"+ and - to resize splited windows"
map - <C-W>-
map = <C-W>+

" Make tab in v mode work like I think it should (keep highlighting):
vmap <tab> >gv
vmap <s-tab> <gv

nmap <F7> :!cat %:p <bar> xclip -sel clip <bar> echo Filed was copied <CR>

"--------------- Setting last updated ---------------"
" Expand "<!-- DATE -->{-}00:00:00" to current timestamp in English
" Used in my resume!

:au BufWritePre *.html exe "norm mz"|exe '%s/\(<!-- DATE -->\).\{-\}\d\d:\d\d:\d\d/\1'.strftime("%b %d, %Y %X")."/e"|norm `z
:au BufWritePre *.html exe "norm mz"|exe '%s/\(data-lastupdate datetime=\"\)\d\d\d\d-\d\d-\d\d/\1'.strftime("%Y-%m-%d")."/e"|norm `z


set smartindent
filetype indent on

if strlen(glob("~/.vim/plugin/detectindent.vim"))
  autocmd BufReadPost * :DetectIndent
end
autocmd BufNewFile * set expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd BufNewFile *.py set expandtab shiftwidth=4 tabstop=4 softtabstop=4
let g:detectindent_preferred_expandtab = 1
let g:detectindent_preferred_indent = 2


set nu
set hlsearch
set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start
                    " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set ai
set si
set wrap
set lbr
set tw=100
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set expandtab
set smartcase     " ignore case if search pattern is all lowercase
                    "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                    "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.o,*.~,*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

let g:ctrlp_custom_ignore = 'build/'

filetype plugin indent on

set autoread
set ruler
set magic
set showmatch

syntax enable

set encoding=utf8
set noswapfile

colorscheme default
set background=dark

if has("gui_running")
    set guioptions-=T
    set guioptions+=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

if strlen(glob("~/.vim/plugin/detectindent.vim"))
  autocmd BufReadPost * :DetectIndent
end
autocmd BufNewFile * set expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd BufNewFile *.py set expandtab shiftwidth=4 tabstop=4 softtabstop=4
let g:detectindent_preferred_expandtab = 1
let g:detectindent_preferred_indent = 2

let g:netrw_liststyle=3

let mapleader=" "
map <leader>k :Texplore<cr>

" Nerdtree
map <C-n> :NERDTreeToggle<CR>

let vim_markdown_preview_github=1
set tags=./tags;,tags;
