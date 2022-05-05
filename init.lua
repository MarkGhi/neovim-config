local Plug = vim.fn['plug#']

vim.call('plug#begin')
    -- Appearance
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'ryanoasis/vim-devicons'

    -- Utilities
    Plug 'sheerun/vim-polyglot'
    Plug 'jiangmiao/auto-pairs'
    Plug 'ap/vim-css-color'
    Plug 'preservim/nerdtree'

    -- Completion / linters / formatters
    Plug ('neoclide/coc.nvim', {branch= 'release'})
    Plug 'plasticboy/vim-markdown'

    -- Git
    Plug 'airblade/vim-gitgutter'

    -- Theming
    Plug 'morhetz/gruvbox'

vim.call('plug#end')

--Options
vim.opt.background='dark'
vim.opt.clipboard='unnamedplus'
vim.opt.completeopt='noinsert,menuone,noselect'
vim.opt.hidden = true
vim.opt.inccommand='split'
vim.opt.mouse='a'
vim.opt.splitbelow=true
vim.opt.splitright=true
vim.opt.title=true
vim.opt.ttimeoutlen=0
vim.opt.wildmenu=true

vim.cmd[[
  syntax enable
  colorscheme gruvbox
]]

-- Airline setup

vim.g['airline_theme'] = 'bubblegum'
vim.g['airline_powerline_fonts'] = 1 
vim.g['airline#extensions#tabline#enabled'] = 1


-- NerdTree setup 

vim['NERDTreeShowHidden'] = 1

vim.keymap.set('n', '<C-p>', ':NERDTreeFocus<CR>')
vim.keymap.set('n', '<C-n>', ':NERDTreeToggle<CR>')
vim.keymap.set('n', '<C-f>', ':NERDTreeFind<CR>')


--vim.api.nvim_create_autocmd('autocmd VimEnter * NERDTree | wincmd p', {callback = function() end})

vim.cmd[[
  autocmd VimEnter * NERDTree | wincmd p
]]
--autocmd VimEnter * NERDTree | wincmd p --Open by default NerdTree and focus on editor

--vim.opt. t_Co=256 #Enable 256 colors on the terminal (don't really know what it means, so off for now)
