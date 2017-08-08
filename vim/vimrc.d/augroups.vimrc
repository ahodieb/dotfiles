augroup reload_vimrc_on_save " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
    autocmd BufWritePost *.vimrc source $MYVIMRC
augroup END " }
