set nocompatible               " be improved, required
filetype off                   " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()            " required

Plugin 'VundleVim/Vundle.vim'  " required

" ===================
" my plugins here
" ===================
Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'chriskempson/base16-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'vim-syntastic/syntastic'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tomtom/tcomment_vim'
Plugin 'airblade/vim-gitgutter'
" ===================
" end of plugins
" ===================

" ===================
" colorschemes
" ===================
Plugin 'drewtempelmeyer/palenight.vim'
Plugin 'jcherven/jummidark.vim'

call vundle#end()               " required

" ===================
" my settings
" ===================
filetype plugin indent on       " required
" set cursor to block when in insert mode
set guicursor=n-v-c-sm:block,i-ci-ve:block,r-cr-o:hor20
" Enable syntax highlighting
syntax on
" Make tabs as wide as four spaces
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4
" Enable line numbers
set number
" Show the cursor position
set ruler
" Enable mouse in all modes
set mouse=a
" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed
" Enhance command-line completion
set wildmenu
" Show “invisible” characters
set listchars=tab:▸\ ,trail:·,eol:¬,nbsp:_
" Don’t create backups when editing files in certain directories
set backupskip=/tmp/*,/private/tmp/*
" Highlight searches
set hlsearch
" Don’t show the intro message when starting Vim
set shortmess=atI
" turn on line wrapping
set wrap
" code folding setting
set foldmethod=syntax " fold based on indent
set foldlevelstart=99
set foldnestmax=10 " deepest fold is 10 levels
set nofoldenable " don't fold by defa
" set line numbers to be relative
set number relativenumber
" Map leader
let mapleader=","
" close nerdtree if its the last thing left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Map nerd tree
map <C-b> :NERDTreeToggle<CR>

" Open nerd tree if directory is opened with vim
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

highlight SyntasticWarning NONE
highlight SyntasticError NONE


let g:airline_powerline_fonts = 1
" let g:airline_theme='bubblegum'

let g:airline_theme='minimalist'
let g:lightline= {'colorscheme' : 'jummidark'}
set background=dark

colorscheme jummidark

if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

