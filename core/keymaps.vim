nnoremap <space>so :so %<cr>
nnoremap <leader>q :q!<cr>
nnoremap  <leader><leader> :wq<cr>
nnoremap <leader>w :w <cr>

nnoremap <C-Q> :q!<cr>
nnoremap <C-S> :w<cr>
nnoremap <C-j> <cmd>split <bar> term<CR>
nnoremap <C-k> <cmd>vsplit <bar> term<CR>
nnoremap <C-z> u 
nnoremap <C-x> <C-R> 

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <C-F> <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

nnoremap <silent><leader>ca :Lspsaga code_action<CR>
nnoremap <silent><space>ca :Lspsaga code_action<CR>
vnoremap <silent><space>ca :<C-U>Lspsaga range_code_action<CR>

" rename 
nnoremap <silent>gr :Lspsaga rename<CR>

" --------------------------------------------
nnoremap <space>tt <cmd>TroubleToggle<cr>
nnoremap <space>wd <cmd>TroubleToggle lsp_workspace_diagnostics<cr>
nnoremap <space>dd <cmd>TroubleToggle lsp_document_diagnostics<cr>
nnoremap <space>qf <cmd>TroubleToggle quickfix<cr>
nnoremap <space>ll <cmd>TroubleToggle loclist<cr>
nnoremap gR <cmd>TroubleToggle lsp_references<cr>

" --------------------------------------------
" --------------------------------------------
nnoremap <C-B> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>
" --------------------------------------------
