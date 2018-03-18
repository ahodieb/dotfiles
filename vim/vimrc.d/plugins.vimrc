" Install plugins [using https://github.com/junegunn/vim-plug]
execute pathogen#infect()
Helptags
call plug#begin()
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdcommenter'
Plug 'airblade/vim-gitgutter'
Plug 'godlygeek/tabular'
Plug 'altercation/vim-colors-solarized'
Plug 'ervandew/supertab'
call plug#end()
