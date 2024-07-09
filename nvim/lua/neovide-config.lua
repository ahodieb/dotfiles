if vim.g.neovide then
  vim.g.neovide_remember_window_size = true 
  
  vim.g.neovide_padding_top = 10
  vim.g.neovide_padding_bottom = 5
  vim.g.neovide_padding_right = 5
  vim.g.neovide_padding_left = 15

  vim.g.neovide_cursor_animation_length = 0.13
  vim.g.neovide_cursor_animate_in_insert_mode = true

  vim.g.neovide_detach_on_quit = 'always_quit'

  vim.keymap.set('n', '<D-s>', ':w<CR>') -- Save
  vim.keymap.set('v', '<D-c>', '"+y') -- Copy
  vim.keymap.set('n', '<D-v>', '"+P') -- Paste normal mode
  vim.keymap.set('v', '<D-v>', '"+P') -- Paste visual mode
  vim.keymap.set('c', '<D-v>', '<C-R>+') -- Paste command mode
  vim.keymap.set('i', '<D-v>', '<ESC>l"+Pli') -- Paste insert mode
end

