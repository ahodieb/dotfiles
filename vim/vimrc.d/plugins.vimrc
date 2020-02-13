" Install plugins [using https://github.com/junegunn/vim-plug]
execute pathogen#infect()
Helptags
call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdcommenter'
Plug 'godlygeek/tabular'
Plug 'altercation/vim-colors-solarized'
Plug 'ervandew/supertab'
Plug 'scrooloose/nerdtree'
Plug 'editorconfig/editorconfig-vim'
Plug 'plasticboy/vim-markdown'

call plug#end()
