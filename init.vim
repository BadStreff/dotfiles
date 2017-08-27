let g:python_host_prog = '/Users/afurbee/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = '/Users/afurbee/.pyenv/versions/neovim3/bin/python'

set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
Plug 'terryma/vim-multiple-cursors'
Plug 'nightsense/seabird'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'ervandew/supertab'
call plug#end()

" enable deoplete (prereq for jedi-vim)
call deoplete#enable()

" map leader to comma
let mapleader = ","

" show line number on cursor
set number

" Configure colorscheme
set termguicolors
colorscheme greygull

" Configure python settings
let python_highlight_all=1
syntax on

" configure airline
" sping_night theme needs installed along with the Meslo powerline font
set laststatus=2
set ttimeoutlen=50
set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h12
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'light'

" configure NERDTree
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * wincmd p
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" configure vsplit to be more natural
set splitright
set splitbelow

" split navigations shortcuts
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" fast buffer switching binds from vim-unimpaired
map [b :bprevious<CR>
map ]b :bnext<CR>

" bind <space> for folding/unfolding a line
nnoremap <Space> za

" bind for quickly switching between buffers
nnoremap <leader>l :ls<CR>:b<space>

" keep buffers open
set hidden

" configure backspace to work correctly in insert mode
set backspace=indent,eol,start

" enable mousewheel scrolling
set mouse=a

" I HAVE HAD ENOUGH OF THESE F*CKING SWAP FILES
set nobackup
set nowritebackup
set noswapfile
