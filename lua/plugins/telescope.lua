return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    event = 'VeryLazy',
    dependencies = {
        'nvim-lua/plenary.nvim',
        {
            'nvim-telescope/telescope-fzf-native.nvim',
            build = 'make'
        }
    },
    main = "config.plugins.telescope",
    config = true
}
