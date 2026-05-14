local keymap = vim.keymap.set

keymap("n", "<leader>L", "<CMD>Lazy<CR>", { desc = "[lazy] Open Lazy.nvim" })
keymap("n", "<leader>l", "<CMD>BufferNext<CR>", { desc = "[Buffer] Next Buffer" })
keymap("n", "<leader>h", "<CMD>BufferPrevious<CR>", { desc = "[Buffer] previous Buffer" })
keymap("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })

keymap("i", "jj", "<esc>", { desc = "" })
