let g:mapleader = ' '

" ---
" --- Leader Mappings
" ---
nmap     <leader>s        :w<CR>                              " Save file
nnoremap <leader>q        :confirm qa<CR>                     " Close current buffer
nnoremap <leader>         <Nop>
nnoremap <leader>w        <C-w>c                              " Close current buffer
nnoremap <leader><Bar>    :vsplit<CR>                         " Split vertically
vnoremap <leader>f        "*yq/p<CR>                          " Yank and search selection

" ---
" --- Other mappings
" ---
nnoremap <Esc>            :nohlsearch<CR>
nnoremap gf               <C-w>gf                            " Go to file on new tab
imap jj                   <Esc>
vnoremap u                <Nop>
vnoremap U                <Nop>
nmap <                    <<                                 " indent manually
nmap >                    >>
nmap zz                   za                                 " Toggles floding


" ---
" --- Plugins maps
" ---


" --- NvimTree
nnoremap <leader>b        :call NvimTreeOpenOrToggle()<CR>

" --- Telescope
nnoremap <leader><Tab><Tab> :Telescope buffers<CR>
nnoremap <leader>f        :Telescope current_buffer_fuzzy_find theme=dropdown sorting_strategy=ascending<CR>
nnoremap <leader>p        :Telescope git_files<CR>
nnoremap <leader><S-f>    :Telescope live_grep<CR>

" --- ToggleTerm
inoremap <C-\>           <Esc><Cmd>ToggleTerm dir=git_dir direction=float<CR>
nnoremap <C-\>           :ToggleTerm dir=git_dir direction=float<CR>
tnoremap <C-\>           <Cmd>ToggleTerm<CR>

" --- COC
" nmap <silent> gd         <Plug>(coc-definition)
" inoremap <silent><expr>  <c-space> coc#refresh()

" --- LSP Config
nmap <silent>gd         :lua vim.lsp.buf.definition()<cr>
nmap <silent>gD         :lua vim.lsp.buf.declaration()<cr>
nmap <silent>K          :lua vim.lsp.buf.hover()<cr>
nmap <silent><F2>       :lua vim.lsp.buf.rename()<cr>
" inoremap <silent><expr> <C-Space> <cmd>lua vim.lsp.buf.complete()<cr>




" --- Trouble
nnoremap <leader>xx      <Cmd>TroubleToggle loclist<CR>

