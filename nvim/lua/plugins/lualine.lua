return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons', opt = true },
    opts = {
        sections = {
            lualine_c = {
                {
                    'filename',
                    path = 1,
                    shorting_target = 40,
                }
            }
        }
    }
}
