local keymap = vim.keymap.set

vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("n", "<leader>b", ":NvimTreeToggle<cr>", { desc = "Toggle nvim-tree" })
keymap("n", "<leader>tff", ":Telescope find_files<cr>", { desc = "Telescope find file" })

keymap("n", "<leader>/", ":let @/=''<cr>", { desc = "Clear search" })

-- Rust
keymap("n", "<leader>fmt", ":RustFmt<cr>", { desc = "run rustfmt on file" });

--local ra_features_enabled = false
--keymap("n", "<leader>rf", function ()
--    local clients = vim.lsp.get_active_clients({ name = "rust-analyzer" })
--    if #clients == 0 then
--        print("Rust Analyzer is not running")
--        return
--    end
--
--    local client = clients[1]
--    ra_features_enabled = not ra_features_enabled
--
--    local settings = client.config.settings or {}
--    settings["rust-analyzer"] = settings["rust-analyzer"] or {}
--    settings["rust-analyzer"].cargo = settings["rust-analyzer"].cargo or {}
--
--    if ra_features_enabled then
--        settings["rust-analyzer"].cargo.features = "all" -- default
--    else
--        settings["rust-analyzer"].cargo.features = nil
--    end
--
--    -- update client config in nvim memory and notify the server that config changed
--    client.config.settings = settings
--    client.notify("workspace/didChangeConfiguration", {
--        settings = settings
--    })
--
--    -- force rust-analyzer to reload the workspace
--    client.request("rust-analyzer/reloadWorkspace", nil, function ()
--        vim.cmd("e!")
--
--        if ra_features_enabled then
--            print("🦀 Rust Features: ALL")
--        else
--            print("🦀 Rust Features: DEFAULT")
--        end
--    end)
--end, { desc = "Toggle Rust features all/none"});

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

