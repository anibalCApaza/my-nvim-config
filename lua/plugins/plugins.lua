-- TODO: Implementar más plugins útiles

return {
    -- Colorscheme Linux Terminal
    {
        "catppuccin/nvim", name = "catppuccin", priority = 1000
    },
    -- Colorscheme Windows Terminal
    {
        "rebelot/kanagawa.nvim"
    },

    -- Autopairs to brackets
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
        -- use opts = {} for passing setup options
        -- this is equivalent to setup({}) function
    },
    -- Highlights to Comments and filter/search
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
    },
    -- Upgrade to down bar
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    -- File Explorer
    {
        'nvim-tree/nvim-tree.lua'
    }

}
