set nocompatible
filetype plugin indent on
syntax on
set autoindent                  " copy indent from current line
set backspace=indent,eol,start  " intuitive backspacing in insert mode
set cmdheight=2                 " never prompt for enter or command
set cursorline                  " underline cursor line
set encoding=utf-8 nobomb       " use utf-8 wo bom
set gdefault                    " use g flag to search/replace
set hidden                      " switch buffers without saving
set history=1000                " history
set hlsearch                    " highlight searches
set ignorecase                  " ignore case when searching
set incsearch                   " dymanic pattern highlighting
set laststatus=2                " always show status line
set noeol                       " no newline at eof
set noerrorbells                " disable error bells
set nostartofline               " do not reset cursor to line start when moving
set number                      " enable line numbers
set relativenumber              " use line numbers relative to cursor
set paste                       " always use paste mode
set scrolloff=5                 " scroll 5 lines before horizontal window border
set shortmess=atI               " mute intro message
set showcmd                     " show partial command as it is typed
set showmatch                   " show matching brackets
set showmode                    " show current mode
set softtabstop=2               " make tabs as wide as two spaces
set tabstop=2                   " make tabs as wide as two spaces
set shiftwidth=2                " set > tab to 2 spaces
set expandtab                   " use spaces instead of tabs
set tabpagemax=15               " maximum 15 tabs
set ttyfast                     " optimize for fast terminal connections
set wildmenu                    " enchance cli completion
set directory=~/.vim/swaps      " centralized swaps
set backupdir=~/.vim/backups    " centralized backups
set undodir=~/.vim/undo         " centralized undo history
set viminfo=%100,'100,/100,h,\"500,:100,n~/.viminfo
