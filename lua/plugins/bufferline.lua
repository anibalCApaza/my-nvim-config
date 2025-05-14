return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = {
        'nvim-tree/nvim-web-devicons',
        {
            'echasnovski/mini.bufremove',
            version = false
        },
    },
    main = "config.plugins.bufferline",
    config = true
}
