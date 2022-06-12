Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }

function! BufferLineSetup()
lua << EOF
vim.opt.termguicolors = true

local colors = {
  tab = "#1a1b26",
  tab_text = "#6183bb",
  tab_active = "#24283B",
  background = "#1f2335",
  modified_mark = "#f7768e"
}

require("bufferline").setup {
  options = {
    mode = 'tabs',
    always_show_bufferline = false,
    indicator_icon = ' ',
    separator_style = 'slant',
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        highlight = "Directory",
        text_align = "left"
      }
    }
  },
  highlights = {  
    background = {
      guibg = colors.tab,
      guifg = colors.tab_text
    },  
    modified = {
      guibg = colors.tab,
      guifg = colors.modified_mark
    },  
    close_button = {
      guibg = colors.tab,
      guifg = colors.tab_text
    }, 
    modified_selected = {
      guibg = colors.tab_active,
      guifg = colors.modified_mark
    }, 
    separator = {
      guibg = colors.tab,
      guifg = colors.background
    }, 
    separator_selected = {
      guibg = colors.tab_active,
      guifg = colors.background
    },
  }
}
EOF
endfunction

