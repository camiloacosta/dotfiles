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
              ["<C-d>"] = actions.delete_buffer,
              ["<CR>"] = actions.select_default,
              ["t"] = actions.select_tab,
              ["s"] = actions.select_vertical,
              ["S"] = actions.select_horizontal,
              ["<ESC>"] = "close",
              ["<C-h>"] = "which_key"
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
