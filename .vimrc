syntax on
set mouse=a
set hidden
set showmode

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Cursor "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let &t_SI = "\e[6 q" " Insert Mode Cursor
let &t_EI = "\e[2 q" " Everything Else Cursor
" set guicursor= " cursor always block mode

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" History "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Searching "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ignorecase
set smartcase
set incsearch

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Lines "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set relativenumber
set noerrorbells
set nu
set nowrap
set signcolumn=yes
set colorcolumn=80
highlight ColorColumn ctermbg=8 guibg=lightgrey

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remaps "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = " "
nnoremap <leader>o o<Esc>
nnoremap <leader>O O<Esc>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Window Stuff "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set splitbelow splitright
set fillchars+=vert:\ " removes splice | 
nnoremap <leader>oo <C-w>o
nnoremap <leader>vs :vertical split<CR>
nnoremap <leader>t :vertical terminal<CR>
nnoremap <leader>tt :let $VIM_DIR=expand('%:p:h')<CR>:vertical terminal<CR>cd $VIM_DIR<CR>
nnoremap <leader>qq <C-w>q
nnoremap <leader>nn <C-w><C-w>
nnoremap <leader>rr <C-w>r " rotate buffers
nnoremap <leader>ff :vertical split<CR> :Explore<CR><C-w>r :vertical resize 45<CR>

" Make adjusting split sizes more friendly
noremap <silent> <C-h> :vertical resize -3<CR>
nnoremap <silent> <C-l> :vertical resize +3<CR>
nnoremap <silent> <C-j> :resize -3<CR>
nnoremap <silent> <C-k> :resize +3<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pluggins "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" call plug#begin()

" call plug#end()

# test
