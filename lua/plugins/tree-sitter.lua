return {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    event = "VeryLazy",
    main = "nvim-treesitter.configs",
    opts = {
        ensure_installed = {
            "lua",
            "luadoc",
            "python",
            "javascript",
            "query",
            "php",
            "html",
            "css",
            "astro"
        },
        highlight = {
            enable = true
        },
        indent = {
            enable = true
        }

    }
}
