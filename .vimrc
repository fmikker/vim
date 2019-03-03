" Ripped off chatarsis
set ruler
set number
set incsearch

set tabstop=4
set shiftwidth=4
set shiftround

set ignorecase
set smartcase

set smarttab
set hlsearch
set textwidth=0
set backspace=indent,eol,start

set history=1000
set undolevels=1000
set title

set nobackup
set noswapfile
set noerrorbells
set novisualbell
set formatoptions+=j " Delete comment character when joining lines

set foldmethod=indent

set nofoldenable    " disable folding

syntax on
filetype plugin indent on
"set autochdir
set autoindent
set smartcase

set guioptions=agitc
set guifont=Monospace\ 10
set t_Co=256

" use system clipboard
set clipboard=unnamed
if has('gui_running')
	" colorscheme solarized
	colorscheme jellybeans
else
	colorscheme delek
endif

set nocompatible              " be iMproved, required
"filetype off                  " required

" Disable swap files
set noswapfile

"set tabs 4 spaces wide
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" Automatic installation of the pluginmanager "Plug" https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Enable pluginmanager "Plug"
call plug#begin('~/.vim/plugged')
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

" Install vim-markdown 
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" Install NERDTree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Enable NERDTree with CTRL-N
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p
map <C-n> :NERDTreeToggle<CR>

" Install vim-yaml
"Plug 'stephpy/vim-yaml'
" Install the plugin "ansible-vim
Plug 'pearofducks/ansible-vim', { 'do': 'cd ./UltiSnips; ./generate.py' }

call plug#end()

" Ansible: Unintendend after newline on or off
let g:ansible_unindent_after_newline = 1 

" Load all syntaxes for Jinja2 templates
let g:ansible_extra_syntaxes = "sh.vim ruby.vim"

" Hilight key=value in hosts files
let g:ansible_attribute_highlight = "ob"

" Disable folding for vim-markdown
let g:vim_markdown_folding_disabled = 1

" Highlight of the "name:"-key in ansible playbooks
let g:ansible_name_highlight = 'd'

" Hilight additional keywords in playbooks, such as "register" "always_run"
" "become" and "become_user" and so on.
let g:ansible_extra_keywords_highlight = 1
