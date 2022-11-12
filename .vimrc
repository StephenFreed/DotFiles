"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" colorscheme elflord
colorscheme habamax
set termguicolors
set background=dark
highlight Folded guibg=#569CD6 guifg=black
highlight FoldColumn guifg=#569CD6 guifg=black

syntax on
set hidden
set noshowmode
set conceallevel=0
" set shell=/bin/zsh
set updatetime=300
set timeoutlen=500
set cmdheight=2
set fileencoding=utf-8
set encoding=utf-8
set shortmess+=c
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Cursor "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set mouse=a
let &t_SI = "\e[6 q" " insert mode cursor
let &t_EI = "\e[2 q" " everything else cursor
set paste
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" History "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set noswapfile
set nobackup
set nowritebackup
set undodir=~/.vim/undodir
set undofile
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Searching "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ignorecase
set smartcase
set incsearch
set nohlsearch
set iskeyword+=-
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Lines "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set smartindent
set cindent
set cino=
set expandtab
set tabstop=2 
set softtabstop=0
set shiftwidth=2
" set relativenumber
set noerrorbells
set nu
set nowrap
set signcolumn=yes
set colorcolumn=80
highlight ColorColumn ctermbg=236  " go up and down by 2 to change(232)
  
" Line Folding
set foldcolumn=2
" zf to fold 
" zo to open on line
" zc to reclose on line
" zr to restore all
" zm to minimize all
" zd to delete one fold
" zE to erase all folds

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remaps "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" sets leader key to space
let mapleader = " "
let maplocalleader = " "

" write source %
nnoremap <leader>ws :w<CR> :silent! source %<CR>l

" bring up commands file
nnoremap <leader>c :sp ~/.commands.cfg<CR>
   
" bring up commands file
nnoremap <leader>i :sp ~/.vimrc<CR>

" word spelling
nnoremap <leader>z z=

" set spelling
nnoremap <leader>sc :set spell<CR>
" set nospell
nnoremap <leader>sco :set nospell<CR>

" line spaces
autocmd VimEnter * nnoremap <leader>O O<Esc>
autocmd VimEnter * nnoremap <leader>o o<Esc>
autocmd VimEnter * nnoremap <leader>sb i<space><Esc>
autocmd VimEnter * nnoremap <leader>sa a<space><Esc>

" moving lines
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" moving letters
nnoremap L xp
nnoremap H xhhp

"keep visual mode after indent
vnoremap > >gv
vnoremap < <gv

" window splits
set splitbelow splitright
nnoremap <leader>vs :vertical split<CR>
nnoremap <leader>sp :split<CR>
tnoremap <Esc> <C-\><C-n> " allows normal mode in terminal to switch windows
nnoremap <leader>wb :windo set scrollbind<CR>
nnoremap <leader>wnb :windo set noscrollbind<CR>

" make adjusting split sizes more friendly
nnoremap <silent> <C-l> :vertical resize -3<CR>
nnoremap <silent> <C-h> :vertical resize +3<CR>
nnoremap <silent> <C-j> :resize -3<CR>
nnoremap <silent> <C-k> :resize +3<CR>

" move cursor to other windows and window stuff
nnoremap <leader>wh <C-w>h
nnoremap <leader>wj <C-w>j
nnoremap <leader>wk <C-w>k
nnoremap <leader>wl <C-w>l
nnoremap <leader>wr <C-w>r " rotate current window
nnoremap  <leader>wo <C-w>o " closes all other windows

" tabs
nnoremap  <leader>tab :tabnew<CR>
nnoremap  <leader>tn :tabNext<CR>
nnoremap  <leader>tm :tabmove<CR>
nnoremap  <leader>tf :tabfirst<CR>
nnoremap  <leader>tl :tablast<CR>

" buffers
" :ls to see buffers
" :b1 to select by number
nnoremap  <leader>bn :bNext<CR>
nnoremap  <leader>bp :bprevious<CR>
nnoremap  <leader>bf :bfirst<CR>
nnoremap  <leader>bl :blast<CR>
nnoremap  <leader>bd :bdelete<CR>

" netrw
nnoremap  <leader>e :Explore<CR>
let g:netrw_liststyle = 3

" marks
" m<a>
" '<a>
" :marks

" macro
" q<m>
" commands
" @q
" @@


