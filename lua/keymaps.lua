vim.keymap.set("n", "<C-p>", ":NERDTreeFocus<CR>")
vim.keymap.set("n", "<C-n>", ":NERDTreeToggle<CR>")
vim.keymap.set("n", "<C-f>", ":NERDTreeFind<CR>")

-- Go to beginning or end
vim.keymap.set("n", "<C-b>", "<ESC>")
vim.keymap.set("n", "<C-e>", "<End>")

-- Set Alt+navigation keys to move between panels
vim.keymap.set("n", "<A-h>", "<C-w>h")
vim.keymap.set("n", "<A-j>", "<C-w>j")
vim.keymap.set("n", "<A-k>", "<C-w>k")
vim.keymap.set("n", "<A-l>", "<C-w>l")
vim.keymap.set("n", "<A-Left>", "<C-w>h")
vim.keymap.set("n", "<A-Down>", "<C-w>j")
vim.keymap.set("n", "<A-Up>", "<C-w>k")
vim.keymap.set("n", "<A-Right>", "<C-w>l")

vim.keymap.set("n", "<C-c>", "<cmd> %y+ <CR>") -- Copy all
vim.keymap.set("n", "<C-s>", "<cmd> w <CR>") -- Save
vim.keymap.set("n", "<C-w>", ":b#|bd# <CR>") -- Close buffer

vim.keymap.set("n", "<Leader>s", ":vsplit<CR>")

-- Navigate to next/previous buffer
vim.keymap.set("n", "<Tab>", ":bn<CR>")
vim.keymap.set("n", "<S-Tab>", ":bp<CR>")

vim.keymap.set("n", "<Leader>t", function() -- Set Ctrl+n shortcut to open terminal in a new panel
	vim.cmd("split term://zsh | resize 10")
end, { desc = "Open terminal in new tab" })

vim.keymap.set("n", "<Leader>fr", ":CocCommand flutter.run<CR>")
vim.keymap.set("n", "<Leader>fe", ":CocCommand flutter.devices<CR>")

vim.keymap.set("n", "<Leader>p", ":Telescope project<CR>")

vim.keymap.set("n", "<Leader>j", ":call CocActionAsync('jumpDefinition')<CR>")
