return {
    'neovim/nvim-lspconfig',
    dependencies = {
        "mason-org/mason.nvim",
        {
            "folke/lazydev.nvim",
            ft = "lua", -- only load on lua files
            opts = {
                library = {
                    { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                },
            },
        },
    },
    main = 'config.plugins.lsp',
    config = true,
}
