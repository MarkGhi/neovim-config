local Plug = vim.fn["plug#"]

-- Plug plugin management
vim.call("plug#begin")
-- Appearance
Plug("vim-airline/vim-airline") -- Fancy bottom statusbar
Plug("vim-airline/vim-airline-themes") -- Statusbar themes
Plug("ryanoasis/vim-devicons") -- Icons for the interface
Plug("morhetz/gruvbox") -- Custom theme

-- Utilities
Plug("sheerun/vim-polyglot") -- Syntax highlighting for several programming languages
Plug("jiangmiao/auto-pairs") -- Automatically closes parentheses, square brackets and braces when typing.
Plug("ap/vim-css-color") -- Show colors directly in the code
Plug("preservim/nerdtree") -- Sidebar for project file navigation

-- Completion / linters / formatters
Plug("neoclide/coc.nvim", { branch = "release" }) -- Auto completition
Plug("plasticboy/vim-markdown") -- .md syntax support

-- Git
Plug("airblade/vim-gitgutter") -- Shows git changes in open files
Plug("tpope/vim-fugitive") -- Git integration

vim.call("plug#end")

-- Packer plugin management
require("packer").startup(function()
	use({
		"goolord/alpha-nvim", -- Startup screen
		requires = { "kyazdani42/nvim-web-devicons" },
		config = function()
			local alpha = require("alpha")
			local dashboard = require("alpha.themes.dashboard")

			-- Set header
			dashboard.section.header.val = {
				"                                                     ",
				"  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
				"  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
				"  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
				"  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
				"  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
				"  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
				"                                                     ",
			}

			-- Set menu
			dashboard.section.buttons.val = {
				dashboard.button("e", "  > New file", ":ene <BAR> startinsert <CR>"),
				dashboard.button("f", "  > Find file", ":cd $HOME/Documents | Telescope find_files<CR>"),
				dashboard.button("r", "  > Recent", ":Telescope project<CR>"),
				dashboard.button("s", "  > Settings", ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
				dashboard.button("q", "  > Quit NVIM", ":qa<CR>"),
			}

			table.insert(dashboard.config.layout, { type = "padding", val = 1 })
			table.insert(dashboard.config.layout, {
				type = "text",
				val = require("alpha.fortune")(),
				opts = {
					position = "center",
					hl = "AlphaQuote",
				},
			})

			-- Send config to alpha
			alpha.setup(dashboard.opts)
		end,
	})
	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use({
		"nvim-telescope/telescope-project.nvim",
		config = function()
			require("telescope").load_extension("project")
		end,
	})
end)
