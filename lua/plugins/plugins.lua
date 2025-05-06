-- TODO: Implementar más plugins útiles

return {
        { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
        {
                'windwp/nvim-autopairs',
                event = "InsertEnter",
                config = true
                -- use opts = {} for passing setup options
                -- this is equivalent to setup({}) function
        },
        {
                "folke/todo-comments.nvim",
                dependencies = { "nvim-lua/plenary.nvim" },
                opts = {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
                        }
        },
        {
                'nvim-lualine/lualine.nvim',
                dependencies = { 'nvim-tree/nvim-web-devicons' }
        }
}
