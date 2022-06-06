Plug 'nvim-telescope/telescope.nvim'

function! TelescopeSetup()
lua << EOF
local telescope = require('telescope')
telescope.setup {
  defaults = {
    scroll_strategy = 'limit',

    mappings = {
      i = {
        ['<C-h>'] = 'which_key',
        ['<C-d>'] = require('telescope.actions').delete_buffer,
        ['<CR>'] = require('telescope.actions').select_tab,
      }
    }
  },
}
EOF
endfunction

