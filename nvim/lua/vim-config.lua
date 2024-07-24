vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")

vim.cmd("nmap <D-\\> gcc")
vim.cmd("imap <D-\\> <ESC>gcc")
vim.cmd("vmap <D-\\> gc")
vim.keymap.set('n', '<D-s>', ':wa<CR>')      -- Save
vim.keymap.set('i', '<D-s>', '<ESC>:wa<CR>') -- Save

-- vim.opt.spell = true
-- vim.opt.spelllang = { "en_us" }
