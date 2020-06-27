" autocmd VimEnter * NERDTree
" autocmd VimEnter * wincmd p

let NERDTreeShowHidden=1

set number
set tabstop=2
set expandtab
set shiftwidth=2
set softtabstop=2
set cursorline
set incsearch
set hlsearch
set noswapfile
set nowrap
set smartindent
set noerrorbells
set undodir=~/.vim/undodir
set undofile
set colorcolumn=80
set textwidth=80
set showmatch
set foldenable
set foldlevelstart=10
set foldnestmax=10
set relativenumber

" VimWiki prerequisites
set nocompatible
filetype plugin on
syntax on
" end VimWiki prerequisites


call plug#begin('~/.vim/plugged')
Plug 'ycm-core/YouCompleteMe'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'flazz/vim-colorschemes'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'haishanh/night-owl.vim'
Plug 'vim-airline/vim-airline'
Plug 'kien/ctrlp.vim'
Plug 'alvan/vim-closetag'
Plug 'evanleck/vim-svelte'
Plug 'preservim/nerdcommenter'
Plug 'vimwiki/vimwiki'
Plug 'jiangmiao/auto-pairs'
call plug#end()

colorscheme night-owl 

if executable('rg')
  let g:rg_derive_root='true'
endif

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" ctrl+c and ctrl+v to copy/paste to/from system keyboard
vnoremap <C-c> "*y :let @+=@*<CR>
map <C-v> "+p


" Toggle NerdTREE with the F4 key
nnoremap <F4> :NERDTreeToggle<CR>

" List Buffers and Select 
nnoremap <F5> :buffers<CR>:buffer<Space>
