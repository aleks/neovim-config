-- Key Mapping

-- vim.api.nvim_set_keymap('n','<F12>', [[:NERDTreeToggle]], {})

-- Tabs
vim.keymap.set("n", "<tab>", ":tabn<cr>", { desc = "Move to next tab" })
vim.keymap.set("n", "<s-tab>", ":tabp<cr>", { desc = "Move to previous tab" })

-- Splits
vim.keymap.set("n", "<leader>s", ":split<cr>", { desc = "Split buffer" })
vim.keymap.set("n", "<leader>vs", ":vsplit<cr>", { desc = "Vertically split buffer" })

-- Register
vim.keymap.set("n", ";", ":reg<cr>", { desc = "Open register" })

-- Moving between windows
vim.keymap.set("n", "<C-h>", "<C-W>h", { desc = "Go to left window" })
vim.keymap.set("n", "<C-j>", "<C-W>j", { desc = "Go to lower window" })
vim.keymap.set("n", "<C-k>", "<C-W>k", { desc = "Go to upper window" })
vim.keymap.set("n", "<C-l>", "<C-W>l", { desc = "Go to right window" })

-- Resizing windows
vim.keymap.set("n", "<C-up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
vim.keymap.set("n", "<C-down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
vim.keymap.set("n", "<C-left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
vim.keymap.set("n", "<C-right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- Centered scrolling
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down, centered" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up, centered" })

-- Searching
vim.keymap.set("n", "//", ":nohlsearch<cr>", { desc = "Clear search highlight" })
vim.keymap.set("n", "n", "nzz", { desc = "Next found item, centered" })
vim.keymap.set("n", "N", "Nzz", { desc = "Previous found item, centered" })

-- Clipboard
vim.keymap.set("v", "<leader>cb", '"*y', { desc = "Copy to system clipboard" })
