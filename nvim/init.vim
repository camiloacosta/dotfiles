let nvim_dir = "~/.config/nvim"


set number
set relativenumber
set autoindent

set tabstop=2                                     " Tabs per column
set shiftwidth=2                                  " Indent levels
set expandtab                                     " Expands tabs to spaces
set shiftround
set nowrap
set scrolloff=16
set sidescrolloff=32

set mouse=a                                       " Interactive mouse with the terminal
set cursorline

set colorcolumn=120

set title                                         " Set window title with file name
set hidden                                        " Don't close buffers, but hides them
set list listchars=tab:»·,trail:·,nbsp:·
set splitright
set splitbelow

set ignorecase                                    " Ignores case on search
set smartcase                                     " Includes case when there is any on query
set clipboard=unnamed
set fileencoding=utf-8
set updatetime=3000
set foldmethod=syntax
set foldcolumn=1
set foldlevelstart=99
let javascript_fold=1

set fillchars+=diff:╱
" filetype indent plugin on
syntax on


" Install vim-plug if not present.
if empty(glob(nvim_dir . '/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif


" --- 
" --- Key Bindings
" ---

source ~/.config/nvim/key-bindings.vim


" ---
" --- Plugins 
" ---

call plug#begin('~/.config/nvim/plugged')

source ~/.config/nvim/plugins/ale.vim
source ~/.config/nvim/plugins/auto-pairs.vim
source ~/.config/nvim/plugins/bufferline.vim
source ~/.config/nvim/plugins/coc-nvim.vim
source ~/.config/nvim/plugins/diffview-nvim.vim
source ~/.config/nvim/plugins/editorconfig-vim.vim
source ~/.config/nvim/plugins/gitsigns.vim
source ~/.config/nvim/plugins/lualine.vim
source ~/.config/nvim/plugins/nvim-tree.vim
source ~/.config/nvim/plugins/nvim-treesitter.vim
source ~/.config/nvim/plugins/plenary-nvim.vim
source ~/.config/nvim/plugins/startify.vim
source ~/.config/nvim/plugins/telescope-nvim.vim
source ~/.config/nvim/plugins/toggleterm.vim
source ~/.config/nvim/plugins/tokionight.vim
source ~/.config/nvim/plugins/vim-commentary.vim
source ~/.config/nvim/plugins/vim-devicons.vim
source ~/.config/nvim/plugins/vim-expand-region.vim
source ~/.config/nvim/plugins/vim-pasta.vim
source ~/.config/nvim/plugins/vim-rooter.vim
source ~/.config/nvim/plugins/vim-submode.vim
source ~/.config/nvim/plugins/vim-subversive.vim
source ~/.config/nvim/plugins/trouble.vim
source ~/.config/nvim/plugins/vim-wakatime.vim

call plug#end()


" ---
" --- Auto Command
" ---


" ---
" --- Plugins setup
" ---

call BufferLineSetup()
call DiffviewSetup()
call GitSignsSetup()
call LualineSetup()
call NvimTreeSetup()
call SubmodeSetup()
call TelescopeSetup()
call ToggleTermSetup()
call TokioNightSetup()
call TreeSitterSetup()
call TroubleSetup()
call VimRooterSetup()

