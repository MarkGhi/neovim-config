local Plug = vim.fn['plug#']

vim.call('plug#begin')
    -- Appearance
    Plug 'vim-airline/vim-airline'                      -- Fancy bottom statusbar
    Plug 'vim-airline/vim-airline-themes'               -- Statusbar themes
    Plug 'ryanoasis/vim-devicons'                       -- Icons for the interface
    Plug 'morhetz/gruvbox'                              -- Custom theme
    
    -- Utilities
    Plug 'sheerun/vim-polyglot'                         -- Syntax highlighting for several programming languages
    Plug 'jiangmiao/auto-pairs'                         -- Automatically closes parentheses, square brackets and braces when typing.
    Plug 'ap/vim-css-color'                             -- Show colors directly in the code
    Plug 'preservim/nerdtree'                           -- Sidebar for project file navigation

    -- Completion / linters / formatters
    Plug ('neoclide/coc.nvim', {branch= 'release'})     -- Auto completition
    Plug 'plasticboy/vim-markdown'                      -- .md syntax support

    -- Git
    Plug 'airblade/vim-gitgutter'                       -- Shows git changes in open files

vim.call('plug#end')

--Options
vim.opt.background='dark'                               -- Apply the color set for dark colors (not only the background as it might look)
vim.opt.clipboard='unnamedplus'                         -- Enable clipboard between Neovim and other applications
vim.opt.completeopt='noinsert,menuone,noselect'         -- Modifies the auto-complete menu to behave more like an IDE
vim.opt.hidden = true                                   -- Hide unused buffer
vim.opt.inccommand='split'                              -- Show replacements in a split screen, before applying to the file.
vim.opt.mouse='a'                                       -- Enable mouse use
vim.opt.splitbelow=true                                 -- Screen will always split below right the current screen
vim.opt.splitright=true                                 
vim.opt.title=true                                      -- Show the file title
vim.opt.ttimeoutlen=0                                   -- Time in millisecond to run commands
vim.opt.wildmenu=true                                   -- Advanced menu for auto-completition

-- Airline setup
vim.g['airline_theme'] = 'bubblegum'                    -- Set Airline theme
vim.g['airline_powerline_fonts'] = 1                    -- Set powerline mode
vim.g['airline#extensions#tabline#enabled'] = 1         -- Enable Airline also for the tab bar

-- NerdTree setup 
vim.g['NERDTreeShowHidden'] = 1                         -- Set NerdTree to show also hidden file


--vim.keymap.set('t', '<Esc> <C-\><C-n>', ':NERDTreeFocus<CR>')
vim.keymap.set('n', '<C-p>', ':NERDTreeFocus<CR>')
vim.keymap.set('n', '<C-b>', ':NERDTreeToggle<CR>')
vim.keymap.set('n', '<C-f>', ':NERDTreeFind<CR>')

-- Last line tell to open by default NerdTree and focus on editor
vim.cmd[[
  syntax enable
  colorscheme gruvbox
  autocmd VimEnter * NERDTree | wincmd p
]]

--vim.opt. t_Co=256 #Enable 256 colors on the terminal (don't really know what it means, so off for now)
