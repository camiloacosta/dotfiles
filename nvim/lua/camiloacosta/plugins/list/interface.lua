return {
  {
    "folke/tokyonight.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme tokyonight]])
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        theme = "dracula",
      }
    }
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    opts = {
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
    config = function (_, c)
      local icons = require"camiloacosta.utils.icons"
      vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
      vim.fn.sign_define("DiagnosticSignError", {text =icons.danger .. " ", texthl = "DiagnosticSignError"})
      vim.fn.sign_define("DiagnosticSignWarn", {text = icons.warning .. " ", texthl = "DiagnosticSignWarn"})
      vim.fn.sign_define("DiagnosticSignInfo", {text = icons.info .. " ", texthl = "DiagnosticSignInfo"})
      vim.fn.sign_define("DiagnosticSignHint", {text = icons.hint .. " ", texthl = "DiagnosticSignHint"})
      require"neo-tree".setup(c)
    end
  }
}

