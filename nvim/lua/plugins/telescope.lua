return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local builtin = require("telescope.builtin")
      vim.keymap.set('n', '<D-p>', builtin.find_files, {})
      vim.keymap.set('n', '<leader>p', builtin.find_files, {})
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    end
  },
  {
    'nvim-telescope/telescope-ui-select.nvim',
    config = function()
      -- require("telescope").setup {
      --   extensions = {
      --     ["ui-select"] = {
      --       require("telescope.themes").get_dropdown {
      --       }
      --     }
      --   }
      -- }
      --
      require("telescope").load_extension("ui-select")
    end
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").load_extension "file_browser"
      vim.keymap.set("n", "<leader>fb", ":Telescope file_browser<CR>")
      -- vim.keymap.set("n", "<leader>fb", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")
    end
  },
  {
    "xiyaowong/telescope-emoji.nvim",
    config = function()
      require('telescope').load_extension('emoji')
      vim.keymap.set("n", "<leader>jj", ":Telescope emoji<CR>")
    end
  },
}
