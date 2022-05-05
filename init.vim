call plug#begin()
    " Appearance
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'ryanoasis/vim-devicons'

    " Utilities
    Plug 'sheerun/vim-polyglot'
    Plug 'jiangmiao/auto-pairs'
    Plug 'ap/vim-css-color'
    Plug 'preservim/nerdtree'

    " Completion / linters / formatters
    Plug 'neoclide/coc.nvim',  {'branch': 'release'}
    Plug 'plasticboy/vim-markdown'

    " Git
    Plug 'airblade/vim-gitgutter'

    " Theming
    Plug 'morhetz/gruvbox'

call plug#end()

" Options
set background=dark
set clipboard=unnamedplus
set completeopt=noinsert,menuone,noselect
set hidden
set inccommand=split
set mouse=a
set splitbelow splitright
set title
set ttimeoutlen=0
set wildmenu

colorscheme gruvbox 

" Airline setup

let g:airline_theme='bubblegum'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" NerdTree setup

let NERDTreeShowHidden=1 

nnoremap <C-p> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

autocmd VimEnter * NERDTree | wincmd p "Open by default NerdTree and focus on editor

"set t_Co=256 #Enable 256 colors on the terminal (don't really know what it means, so off for now)
