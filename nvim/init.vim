set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin()
" prettify vim
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nightsense/seabird'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'

" additional functionality
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'ervandew/supertab'

" python plugins
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'tmhedberg/SimpylFold' " No-BS Python code folding for Vim

" code linting
Plug 'w0rp/ale'

" powershell plugins
Plug 'pprovost/vim-ps1'

" ansible plugins
Plug 'pearofducks/ansible-vim'

call plug#end()

" enable deoplete (prereq for jedi-vim)
call deoplete#enable()


" enable ansible for yml files
au BufNewFile,BufRead *.yml set filetype=ansible


" map leader to comma
let mapleader = ","

" show line number on cursor
set number

" disable line wrapping
set nowrap

" Configure colorscheme
set termguicolors
colorscheme stormpetrel

" enter again to stop highlighting searches
nnoremap <CR> :nohlsearch<CR><CR>

" enable syntax highlighting
syntax on

" configure airline
set laststatus=2
set ttimeoutlen=50
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'seagull'

" configure NERDTree
let NERDTreeShowHidden = 1
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" configure vsplit to be more natural
set splitright
set splitbelow

" split navigations shortcuts
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Disable jedi preview window
autocmd FileType python setlocal completeopt-=preview

" Configure Supertab to cyle down a list instead of starting at the bottom
let g:SuperTabDefaultCompletionType = "<c-n>"

" Configure vim-multiple-cursors to exit back to normal mode from insert when
" esc is pressed
let g:multi_cursor_exit_from_insert_mode=0

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

set encoding=utf8

