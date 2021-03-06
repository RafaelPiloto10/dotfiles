" Make Vim more useful
set nocompatible

filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/ctrlp.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'chriskempson/base16-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'vim-syntastic/syntastic'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Bundle 'edkolev/tmuxline.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tomtom/tcomment_vim'
Plugin 'airblade/vim-gitgutter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let g:airline_powerline_fonts = 1
let g:airline_theme='bubblegum'

" $(echo $USER) - shows the current username
" %a --> Day of week (Mon)
" %A --> Day of week Expanded (Monday)"
" %b --> Month (Jan)
" %d --> Day (31)
" %Y --> Year (2017)"
" %D --> Month/Day/Year (12/31/2017)
" %v --> Day-Month-Year (31-Dec-2017)"
" %r --> Hour:Min:Sec AM/PM (12:30:27 PM)
" %T --> 24 Hour:Min:Sec (16:30:27)
" %X --> Hour:Min:Sec (12:30:27)
" %R --> 24 Hour:Min (16:30)
" %H --> 24 Hour (16)
" %l --> Hour (12)
" %M --> Mins (30)
" %S --> Seconds (09)
" %p --> AM/PM (AM)
"D (?)
"F (Current window flag)
"H (hostname)
"h (hostname without domain name)
"I (window index)
"P (?)
"S (session name)
"T (pane title)
"W (currnet task like vim if editing a file in vim or zsh if running zsh)

" \'a'
" \'b'
" \'c'
" \'win'
" \'cwin'
" \'y'
" \'z'

let g:tmuxline_preset = {
      \'a'    : '#H', 
      \'b'    : ['#S', '#I', '#W', '#F'],
      \'c'    : '',
      \'y'    : ['%a', '%D'],
      \'z'    : ['%r', '#(cat /sys/class/power_supply/BAT0/capacity)%']}

filetype on

" Enable syntax highlighting
syntax on
" Make tabs as wide as four spaces
set tabstop=4
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
set wrap " turn on line wrapping

" code folding setting
set foldmethod=syntax " fold based on indent
set foldlevelstart=99
set foldnestmax=10 " deepest fold is 10 levels
set nofoldenable " don't fold by defa

set number relativenumber

" Map leader
let mapleader=","

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

colorscheme base16-default-dark

" close nerdtree if its the last thing left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Map nerd tree
map <C-b> :NERDTreeToggle<CR>

" Open nerd tree if directory is opened with vim
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

let g:syntastic_python_python_exec = '/usr/local/bin/python3.8'

highlight SyntasticWarning NONE
highlight SyntasticError NONE
