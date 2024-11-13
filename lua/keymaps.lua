-- Tabs
vim.keymap.set("n", "<C-t>", ":tabn<cr>", { desc = "Move to next tab" })
vim.keymap.set("n", "<s-t>", ":tabp<cr>", { desc = "Move to previous tab" })

-- Splits
vim.keymap.set("n", "<leader>ss", ":split<cr>", { desc = "Split buffer" })
vim.keymap.set("n", "<leader>vs", ":vsplit<cr>", { desc = "Vertically split buffer" })

-- Resizing windows
vim.keymap.set("n", "<C-up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
vim.keymap.set("n", "<C-down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
vim.keymap.set("n", "<C-left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
vim.keymap.set("n", "<C-right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- Searching
vim.keymap.set("n", "//", ":nohlsearch<cr>", { desc = "Clear search highlight" })
vim.keymap.set("n", "n", "nzz", { desc = "Next found item, centered" })
vim.keymap.set("n", "N", "Nzz", { desc = "Previous found item, centered" })

-- Clipboard
vim.keymap.set("v", "<leader>cb", '"*y', { desc = "Copy to system clipboard" })
