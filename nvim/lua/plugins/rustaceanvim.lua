return {
    "mrcjkb/rustaceanvim",
    version = "*",
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
    end,
}
