return {
  -- { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" },
  -- "nvim-treesitter/playground",
  {
    "williamboman/mason.nvim",
    config = {
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
        }
      },
      max_concurrent_installers = 4,
    }
  },
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  {
    "hrsh7th/nvim-cmp",
    config = function()
      local cmp = require"cmp"
      cmp.setup{
        snippet = {
          expand = function(args)
            require"luasnip".lsp_expand(args.body)
          end
        },

        mapping = cmp.mapping.preset.insert({
          ["<C-space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        }),

        sources = cmp.config.sources({
          { name = "nvim_lua" },
          { name = "nvim_lsp" },
          { name = "path" },
          { name = "luasnip" },
          { name = "buffer", keyword_length = 5 },
        }),

        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },

        experimental = {
          ghost_text = true,
        },
      }
    end
  },
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-nvim-lua",
  "hrsh7th/cmp-cmdline",
  "L3MON4D3/LuaSnip",
  "saadparwaiz1/cmp_luasnip",
}
