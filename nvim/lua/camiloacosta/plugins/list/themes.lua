local function setup_theme(name)
  return function (_, c)
    require(name).setup(c)
  end
end

return {
  -- catppuccin
  {
    "catppuccin/nvim",
    priority = 1000,
    opts = {
      flavour = "macchiato",
      dim_inactive = {
        enabled = true,
        shade = "dark",
        percentage = 0.10,
      },
    },
    config = setup_theme("catppuccin")
  },
  -- github
  {
    "projekt0n/github-nvim-theme",
    tag = "v0.0.7",
    opts = {
      theme_style = "dimmed",
      function_style = "italic",
      sidebars = {"qf", "vista_kind", "terminal", "packer"},
    },
    config = setup_theme("github-theme")
  },
  -- one dark
  {
    "navarasu/onedark.nvim",
    priority = 1000,
    opt = {
      lualine = {
        transparent = true
      },
      code_style = {
        comments = "italic",
        keywords = "none",
        functions = "none",
        strings = "none",
        variables = "none"
      },
      diagnostics = {
        darker = true, -- darker colors for diagnostic
        undercurl = true,   -- use undercurl instead of underline for diagnostics
        background = true,    -- use background color for virtual text
      },
    },
    config = setup_theme("onedark")
  },
  -- rose pine
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    opts = {
      dark_variant = "main",
    },
    config = setup_theme("rose-pine")
  },
  -- tokyonight
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    opts = {
      style = "storm"
    },
    config = setup_theme("tokyonight")
  }
}

