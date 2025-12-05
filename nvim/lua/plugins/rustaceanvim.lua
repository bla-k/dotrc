return {
    "mrcjkb/rustaceanvim",
    version = "^6",
    lazy = false,
    config = function()
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        vim.g.rustaceanvim = {
            server = {
                default_settings = {
                    ['rust-analyzer'] = {
                        cargo = {
                              features = nil,
                        },
                    },
                },
                capabilities = capabilities,
                on_attach = function(client, bufnr)
                    -- Optional: Add any on_attach configuration here
                    -- Enable completion triggered by <c-x><c-o>
                    vim.bo[bufnr].omnifunc = "v:lua.vim.lsp.omnifunc"
                end,
            },
            tools = {
                float_win_config = {
                    border = "rounded"
                }
            },
        }

        -- Configure LSP hover window borders
        vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
            vim.lsp.handlers.hover, {
                border = "rounded" -- or "single", "double", "shadow"
            }
        )

        -- Also configure signature help borders (appears when typing function arguments)
        vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
            vim.lsp.handlers.signature_help, {
                border = "rounded"
            }
        )
    end,
}
