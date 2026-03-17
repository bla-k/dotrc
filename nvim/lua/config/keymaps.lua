local keymap = vim.keymap.set

vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("n", "<leader>b", ":NvimTreeToggle<cr>", { desc = "Toggle nvim-tree" })
keymap("n", "<leader>tff", ":Telescope find_files<cr>", { desc = "Telescope find file" })
keymap("n", "<leader>tlr", ":Telescope lsp_references<cr>", { desc = "Telescope find usage" })
keymap("n", "<leader>nff", ":NvimTreeFindFile<cr>", { desc = "nvim-tree pinpoint file" })

keymap("n", "<leader>/", ":let @/=''<cr>", { desc = "Clear search" })

-- Rust
keymap("n", "<leader>fmt", ":RustFmt<cr>", { desc = "run rustfmt on file" });

-- inline hints
keymap("n", "<leader>ih", function ()
    local current = vim.lsp.inlay_hint.is_enabled()
    vim.lsp.inlay_hint.enable(not current)
end, { desc = "Toggle inlay hints" })

-- error diagnostics
keymap("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostics in float" })
keymap("n", "<leader>dl", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })
keymap("n", "<leader>dd", function ()
    local current = vim.diagnostic.config().virtual_text
    vim.diagnostic.config({ virtual_text = not current })
end, { desc = "Toggle diagnostics virtual text" })

-- telescope
keymap("n", "<leader>ts", ":Telescope lsp_document_symbols<cr>", { desc = "Document symbols" })
