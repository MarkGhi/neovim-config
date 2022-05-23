vim.keymap.set("n", "<C-p>", ":NERDTreeFocus<CR>")
vim.keymap.set("n", "<C-b>", ":NERDTreeToggle<CR>")
vim.keymap.set("n", "<C-f>", ":NERDTreeFind<CR>")

vim.keymap.set("n", "<A-h>", "<C-w>h") -- Set Alt+navigation keys to move between panels
vim.keymap.set("n", "<A-j>", "<C-w>j")
vim.keymap.set("n", "<A-k>", "<C-w>k")
vim.keymap.set("n", "<A-l>", "<C-w>l")
vim.keymap.set("n", "<A-Left>", "<C-w>h")
vim.keymap.set("n", "<A-Down>", "<C-w>j")
vim.keymap.set("n", "<A-Up>", "<C-w>k")
vim.keymap.set("n", "<A-Right>", "<C-w>l")

vim.keymap.set("n", "<Leader>s", ":vsplit<CR>") -- Simple vertical split shortcut

vim.keymap.set("n", "<A-]>", ":bn<CR>") -- Navigate to next/previous buffer
vim.keymap.set("n", "<A-[>", ":bp<CR>")

vim.keymap.set("n", "<C-n>", function() -- Set Ctrl+n shortcut to open terminal in a new panel
	vim.cmd("split term://zsh | resize 10")
end, { desc = "Open terminal in new tab" })

vim.keymap.set("n", "<Leader>fr", ":CocCommand flutter.run<CR>")
vim.keymap.set("n", "<Leader>fe", ":CocCommand flutter.devices<CR>")

vim.keymap.set("n", "<Leader>p", ":Telescope project<CR>")

vim.keymap.set("n", "<Leader>j", ":call CocActionAsync('jumpDefinition')<CR>")
