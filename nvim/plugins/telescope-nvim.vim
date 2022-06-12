Plug 'nvim-telescope/telescope.nvim'

function! TelescopeSetup()
lua << EOF
local telescope = require('telescope')
local actions = require('telescope.actions')

telescope.setup {
  defaults = {
    scroll_strategy = 'limit',
    sorting_strategy = 'ascending',

    layout_config = {
      horizontal = {
        prompt_position = "top"
      }
    },

    mappings = {
      i = {
        ['<C-d>'] = actions.delete_buffer,
        ['<CR>'] = actions.select_tab,
        ['<Esc>'] = 'close',
        ['<C-h>'] = 'which_key',
      }
    }
  },
}
EOF
endfunction

