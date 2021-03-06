Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

function! TokioNightSetup()
  let g:tokyonight_style = "storm"
  let g:tokyonight_italic_functions = 1
  let g:tokyonight_sidebars = [ "qf", "vista_kind", "terminal", "packer" ]
  colorscheme tokyonight
endfunction
