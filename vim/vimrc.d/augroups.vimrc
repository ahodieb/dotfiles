augroup reload_vimrc_on_save " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
    autocmd BufWritePost *.vimrc source $MYVIMRC
augroup END " }

augroup enable_spell_checking " {
    autocmd FileType gitcommit setlocal spell spelllang=en_us 	 
    autocmd FileType markdown setlocal spell    
    autocmd BufRead,BufNewFile *.md setlocal spell    
    autocmd BufRead,BufNewFile *.txt setlocal spell    
augrou END "}

