vim.diagnostic.config({
    virtual_text = true,        -- show errors at EOL
    signs = true,               -- show signs in the gutter
    underline = true,
    update_in_insert = false,
    severity_sort = true,

    virtual_text = {
        prefix = "■",
        spacing = 4,
        source = "if_many",
    },

    float = {
        source = "always",
        border = "rounded",
    },
})

-- Change diagnostic symbols in the sign column (gutter)
-- local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
-- for type, icon in pairs(signs) do
--     local hl = "DiagnosticSign" .. type
--     vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
-- end
