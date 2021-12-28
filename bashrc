"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Cursor "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set mouse=a

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Searching "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set ignorecase
set smartcase
set incsearch

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Lines "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nu
set relativenumber
set nowrap
set noerrorbells

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remaps "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader = " "
nnoremap <leader>o o<Esc>
nnoremap <leader>O O<Esc>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Window Stuff "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>oo <C-w>o
nnoremap <leader>vs :vs<CR>
nnoremap <leader>tt :let $VIM_DIR=expand('%:p:h')<CR>:vertical terminal<CR>cd $VIM_DIR<CR>
nnoremap <leader>nn <C-w><C-w>
nnoremap <leader>rr <C-w>r " rotate buffers

" Make adjusting split sizes more friendly
noremap <silent> <C-h> :vertical resize -3<CR>
nnoremap <silent> <C-l> :vertical resize +3<CR>
nnoremap <silent> <C-j> :resize -3<CR>
nnoremap <silent> <C-k> :resize +3<CR>

