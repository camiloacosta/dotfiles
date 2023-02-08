return {
  -- starter
  {
    "echasnovski/mini.starter",
    version = "*",
    config = function ()
      local starter = require"mini.starter"
      starter.setup {
        items = {
          starter.sections.sessions(5, true),
          starter.sections.recent_files(10, true, true),
          starter.sections.builtin_actions(),
        },
      }
    end
  },
  -- status line
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        theme = "catppuccin",
      }
    }
  },
  -- Tabby
  {
    "nanozuki/tabby.nvim",
    opts = {}
  },
  -- File explorer
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    opts = {
      hide_root_node = true, -- hide the root node
      window = {
        width = 40,
      },
      filesystem = {
        follow_current_file = true
      },
      buffers = {
        window = {
          mappings = {
            ["<C-d>"] = "buffer_delete",
          }
        }
      }
    },
  },
  -- winbar
  {
    "utilyre/barbecue.nvim",
    version = "*",
    dependencies = {
      "neovim/nvim-lspconfig",
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons", -- optional dependency
    },
    opts = {},
  }
}

