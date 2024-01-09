return {
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            local fn = vim.fn
            local custom_gruvbox = require'lualine.themes.gruvbox'
            custom_gruvbox.normal.c.bg = '#112233'

            -- Your functions here...

            require("lualine").setup {
                options = {
                    icons_enabled = true,
                    theme = custom_gruvbox,
                    section_separators = "",
                    component_separators = "",
                    disabled_filetypes = {},
                    always_divide_middle = true,
                },
                sections = {
                    lualine_a = { "mode" },
                    lualine_b = {
                        "branch",
                        {
                            "diff",
                            source = diff,
                        },
                        {
                            virtual_env,
                            color = { fg = 'black', bg = "#F1CA81" }
                        }
                    },
                    lualine_c = {
                        "filename",
                        {
                            ime_state,
                            color = { fg = "black", bg = "#f46868" },
                        },
                        
                    },
                },
            }
        end,
    }
}

