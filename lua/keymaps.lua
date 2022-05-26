vim.keymap.set("n", "<C-p>", ":NERDTreeFocus<CR>", { desc = "NerdTree focus" })
vim.keymap.set("n", "<C-n>", ":NERDTreeToggle<CR>", { desc = "NerdTree toggle" })

vim.keymap.set("n", "<C-b>", "<ESC>", { desc = "Go to beginning" })
vim.keymap.set("n", "<C-e>", "<End>", { desc = "Go to end" })

vim.keymap.set("n", "<A-h>", "<C-w>h", { desc = "Move to left windows" })
vim.keymap.set("n", "<A-j>", "<C-w>j", { desc = "Move to bottom windows" })
vim.keymap.set("n", "<A-k>", "<C-w>k", { desc = "Move to top windows" })
vim.keymap.set("n", "<A-l>", "<C-w>l", { desc = "Move to right windows" })
vim.keymap.set("n", "<A-Left>", "<C-w>h", { desc = "Move to left windows" })
vim.keymap.set("n", "<A-Down>", "<C-w>j", { desc = "Move to bottom windows" })
vim.keymap.set("n", "<A-Up>", "<C-w>k", { desc = "Move to top windows" })
vim.keymap.set("n", "<A-Right>", "<C-w>l", { desc = "Move to right windows" })

vim.keymap.set("n", "<C-c>", "<cmd> %y+ <CR>", { desc = "Copy all" })
vim.keymap.set("n", "<C-s>", "<cmd> w <CR>", { desc = "Save" })
vim.keymap.set("n", "<C-w>", ":b#|bd# <CR>", { desc = "Close current buffer" })

vim.keymap.set("n", "<Leader>s", ":vsplit<CR>", { desc = "Create new window to right" })

vim.keymap.set("n", "<Tab>", ":bn<CR>", { desc = "Go to next buffer" })
vim.keymap.set("n", "<S-Tab>", ":bp<CR>", { desc = "Go to previous buffer" })

vim.keymap.set("n", "<Leader>t", function()
	vim.cmd("split term://zsh | resize 10")
end, { desc = "Open terminal in new tab" })
vim.keymap.set("n", "<Leader>wk", function()
	vim.cmd ("WhichKey")
end, { desc = "Show all keybindings" })

vim.keymap.set("n", "<Leader>fr", ":CocCommand flutter.run<CR>", { desc = "Run flutter project" })
vim.keymap.set("n", "<Leader>fd", ":CocCommand flutter.devices<CR>", { desc = "Show all availiable flutter devices" })
vim.keymap.set("n", "<Leader>fb", ":below new output:///flutter-dev<CR>", { desc = "Show debug window" })
vim.keymap.set("n", "<Leader>fe", ":CocCommand flutter.emulators<CR>", { desc = "Show all availiable flutter emulators" })

vim.keymap.set("n", "<Leader>a", "<Plug>(coc-codeaction-selected)", { desc = "Show Coc code action" })
vim.keymap.set("x", "<Leader>a", "<Plug>(coc-codeaction-selected)", { desc = "Show Coc code action" })
vim.keymap.set("n", "<Leader>f", "<Plug>(coc-format-selected)", { desc = "Format selected code" })
vim.keymap.set("x", "<Leader>f", "<Plug>(coc-format-selected)", { desc = "Format selected code" })
vim.keymap.set("n", "<Leader>d", "<Plug>(coc-definition)", { desc = "Goto definition" })
vim.keymap.set("n", "<Leader>ds", "gv :vsp<CR><Plug>(coc-definition)<C-W>L", { desc = "Show definition in a splitted window" })

vim.keymap.set("n", "<Leader>p", ":Telescope project<CR>", { desc = "Show all projects" })
