Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

function! TreeSitterSetup()
lua << OEF
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "javascript", "lua", "rust", "css" },
  sync_install = false,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true
  }
}

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

OEF
endfunction

