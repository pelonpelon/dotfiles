" Enabled later, after Pathogen
filetype off

" Change mapleader
let mapleader=","

" Local dirs
set backupdir=~/.vim-backups
set directory=~/.vim-backups
set undodir=~/.vim-backups

set nocompatible

execute pathogen#infect()

" Emulate bundles, allow plugins to live independantly. Easier to manage.
filetype plugin indent on

