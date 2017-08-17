set number " Enable line numbers 
set cursorline " highlight current line

" Color theme
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" Status bar
set laststatus=2 "Required to correctly display the status bar 
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }
