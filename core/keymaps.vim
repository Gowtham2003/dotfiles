nnoremap <leader>q :q!<cr>
nnoremap  <leader><leader> :wq<cr>
nnoremap <leader>w :w <cr>

nnoremap <C-S> :q!<cr>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

nnoremap <silent><leader>ca :Lspsaga code_action<CR>
vnoremap <silent><leader>ca :<C-U>Lspsaga range_code_action<CR>

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
