" open NERDTree by default
autocmd VimEnter * NERDTree
" set focus to document
autocmd VimEnter * wincmd p


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
set showmatch
set foldenable
set foldlevelstart=10
set foldnestmax=10


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
call plug#end()


colorscheme night-owl 


if executable('rg')
  let g:rg_derive_root='true'
endif

" disallow git directory and gitignore definitions from autocomplete
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
