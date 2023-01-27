local icons = require"camiloacosta.utils.icons"

return {
  -- Tree sitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
      },
      --indent = {
      --  enable = true,
      --},
      --autotag = {
      --  enable = true,
      --},
      auto_install = true,
      ensure_installed = {
        "lua",
        "vim",
        "help",
        "javascript",
        "typescript",
      }
    },
    config = function (_, c)
      require"nvim-treesitter.configs".setup(c)
    end
  },
  -- LSP Servers installer
  {
    "williamboman/mason.nvim",
    config = {
      ui = {
        icons = {
          package_installed = icons.progress_check,
          package_pending = icons.progress_download,
          package_uninstalled = icons.progress_download
        }
      },
      max_concurrent_installers = 4,
    }
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function () end -- Prevent setup
  },

  -- LSP Servers
  {
    "neovim/nvim-lspconfig",
    config = function () end -- prevent setup before mason
  },

  -- Completer
  {
    "hrsh7th/nvim-cmp",
    dependencies = {"onsails/lspkind.nvim"},
    config = function()
      local cmp = require"cmp"
      local lspkind = require"lspkind"

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

        formatting = {
          format = lspkind.cmp_format({
            mode = "symbol",
            maxwidth = 50,
            ellipsis_char = "…"
          })
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
