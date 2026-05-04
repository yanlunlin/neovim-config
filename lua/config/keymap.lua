local keymap = vim.keymap.set

keymap("n", "<leader>L", "<CMD>Lazy<CR>", { desc = "[lazy] Open Lazy.nvim" })
keymap("i", "jj", "<esc>", { desc = "" })
