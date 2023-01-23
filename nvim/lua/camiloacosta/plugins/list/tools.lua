return {
  -- telescope
  {
    "nvim-telescope/telescope.nvim", 
    tag = "0.1.0",
    dependencies = { 
      "nvim-lua/plenary.nvim",
      {"nvim-telescope/telescope-fzf-native.nvim", build = "make" }
    },
    config = function()
      local actions = require"telescope.actions"
      require"telescope".setup {
        defaults = {
          scroll_strategy = 'limit',
          mappings = {
            i = {
              ["<CR>"] = actions.select_default,
              ["<ESC>"] = "close",
              ["<C-d>"] = actions.delete_buffer,
              ["<C-t>"] = actions.select_tab,
              ["<C-s>"] = actions.select_vertical,
              ["<C-h>"] = actions.select_horizontal,
              ["<C-?>"] = "which_key"
            }
          }
        },
        extensions = {
          fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true
          }
        }
      }
      require"telescope".load_extension"fzf"
    end
  },
}
