" Basic setup
set number
syntax enable
set autoindent
filetype on
set number
set relativenumber

" Solarized color scheme
colorscheme solarized
set background=dark


" Key Bindings
imap <C-Return> <CR><CR><C-o>k<Tab>
set cindent
set mouse=a
set shiftwidth=4
set tabstop=4
set softtabstop=4
map <C-n> :NERDTreeToggle<CR>


" Plugins
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'cespare/vim-toml'
call plug#end()
