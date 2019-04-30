call plug#begin()
" prettify vim
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'

" additional functionality
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'scrooloose/nerdtree'
Plug 'ervandew/supertab'

" language plugins
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'zchee/deoplete-go'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'pearofducks/ansible-vim'
Plug 'w0rp/ale'
call plug#end()

" deoplete enable
silent! call deoplete#enable()

" ftplugins
au BufNewFile,BufRead *.yml set filetype=yaml.ansible

" bindings
let mapleader = ","
nnoremap <CR> :nohlsearch<CR><CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <Space> za
nnoremap <leader>l :ls<CR>:b<space>
nnoremap <LeftMouse> ma<LeftMouse>`a

" global settings
syntax on                      " enable syntax highlighting
set nocompatible               " be improved
set number                     " show line numbers
set nowrap                     " disable line wrapping
set backspace=indent,eol,start " configure backspace to work correctly in insert mode
set clipboard+=unnamedplus     " use system clipboard
set mouse=a                    " enable mousewheel scrolling
set termguicolors
set laststatus=2
set ttimeoutlen=50
set splitright
set splitbelow
set hidden
set nobackup
set nowritebackup
set noswapfile
set encoding=utf8
set expandtab
set tabstop=2
set shiftwidth=2
filetype off

" airline and colorscheme settings
silent! colorscheme vim-monokai-tasty
let g:vim_monokai_tasty_italic = 1
let g:airline_theme='monokai_tasty'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" NERDTree
let NERDTreeShowHidden = 1
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nmap <leader>ne :NERDTree<cr>

" supertab settings
let g:SuperTabDefaultCompletionType = "<c-n>"
