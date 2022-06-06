let nvim_dir = "~/.config/nvim"


set number
set relativenumber
set autoindent

set tabstop=2                                     " columnas por tab 
set shiftwidth=2                                  " niveles de indentación
set expandtab                                     " expande los tabs a espacios
set shiftround
set nowrap
set scrolloff=8
set sidescrolloff=16

set mouse=a                                       " mouse interactivo con la terminal
set cursorline

set colorcolumn=120
highlight ColorColumn ctermbg=24

set title                                         " definie el titulo de la ventana con el nombre del archivo
set hidden                                        " no cierra los archivos, pero los oculta
set list listchars=tab:»·,trail:·,nbsp:·
set splitright
" set splitbelow

set ignorecase                                    " ignora las mayusculas en la búsqueda
set smartcase                                     " incluye las mayusculas en las búsquedas cuando está en el query
set clipboard=unnamed

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

source ~/.config/nvim/plugins/coc-nvim.vim
source ~/.config/nvim/plugins/nvim-tree.vim
source ~/.config/nvim/plugins/startify.vim
source ~/.config/nvim/plugins/plenary-nvim.vim
source ~/.config/nvim/plugins/telescope-nvim.vim
source ~/.config/nvim/plugins/toggleterm.vim
source ~/.config/nvim/plugins/vim-airline.vim
source ~/.config/nvim/plugins/vim-devicons.vim
source ~/.config/nvim/plugins/vim-submode.vim
source ~/.config/nvim/plugins/vim-wakatime.vim

Plug 'rafi/awesome-vim-colorschemes'

call plug#end()
filetype plugin indent on



" ---
" --- Plugins setup
" --- 

call NvimTreeSetup()
call SubmodeSetup()
call TelescopeSetup()

