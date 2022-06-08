let g:mapleader = ' '

" ---
" --- Leader Mappings
" ---
nmap     <leader>s        :w<CR>                              " Save file
nnoremap <leader>q        :confirm qa<CR>                     " Close current buffer
nnoremap <leader>         <Nop>
nnoremap <leader>w        <C-w>c                              " Close current buffer
nnoremap <leader><Bar>    :vsplit<CR>                         " Split vertically
nnoremap <leader>b        :call NvimTreeOpenOrToggle()<CR>
nnoremap <leader>p        :Telescope git_files<CR>
nnoremap <leader><S-f>    :Telescope live_grep<CR>

" ---
" --- Other mappings
" ---
nnoremap <Esc>            :nohlsearch<CR>
nnoremap gf               <C-w>gf                            " Go to file on new tab
inoremap jj               <Esc>
vnoremap u                <Nop>
vnoremap U                <Nop>
nnoremap <                <<                                 " indent manually
nnoremap >                >>

" ---
" --- Plugins maps
" ---

" --- ToggleTerm
inoremap <C-\> <Esc><Cmd>ToggleTerm dir=git_dir direction=float<CR>
nnoremap <C-\> :ToggleTerm dir=git_dir direction=float<CR>
tnoremap <C-\> <Cmd>ToggleTerm<CR>

" --- COC
nmap <silent> gd <Plug>(coc-definition)
inoremap <silent><expr> <c-space> coc#refresh()
