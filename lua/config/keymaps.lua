return function()
    local opts = { noremap = true, silent = true }
    -- Nvim-tree
    vim.keymap.set("n", "<A-b>", ":NvimTreeToggle<CR>", { desc = "Toggle File Explorer", noremap = true, silent = true }) -- Abre/cierra nvim-tree con Ctrl+e
    vim.keymap.set("n", "<A-r>", ":NvimTreeRefresh<CR>",
        { desc = "Refresh File Explorer", noremap = true, silent = true })                                                -- Recarga nvim-tree con Ctrl+r
    vim.keymap.set("n", "<A-f>", ":NvimTreeFocus<CR>", { desc = "Focus File Explorer", noremap = true, silent = true })   -- Enfoca nvim-tree con Ctrl+f
    -- Guardado
    vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })
    -- Cerrar archivo(no confundir con buffer)
    vim.api.nvim_set_keymap('n', '<C-q>', ':q<CR>', { noremap = true, silent = true })


    -- BARBAR-NVIM
    -- Move to previous/next
    vim.keymap.set('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
    vim.keymap.set('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)

    -- Re-order to previous/next
    vim.keymap.set('n', '<A-h>', '<Cmd>BufferMovePrevious<CR>', opts)
    vim.keymap.set('n', '<A-l>', '<Cmd>BufferMoveNext<CR>', opts)

    -- Goto buffer in position...
    vim.keymap.set('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
    vim.keymap.set('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
    vim.keymap.set('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
    vim.keymap.set('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
    vim.keymap.set('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
    vim.keymap.set('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
    vim.keymap.set('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
    vim.keymap.set('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
    vim.keymap.set('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
    vim.keymap.set('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)

    -- Pin/unpin buffer
    vim.keymap.set('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)

    -- Goto pinned/unpinned buffer
    --                 :BufferGotoPinned
    --                 :BufferGotoUnpinned

    -- Close buffer
    vim.keymap.set('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)

    -- Restore buffer
    vim.keymap.set('n', '<A-z>', '<Cmd>BufferRestore<CR>', opts)
    -- Wipeout buffer
    --                 :BufferWipeout

    -- Close commands
    --                 :BufferCloseAllButCurrent
    --                 :BufferCloseAllButPinned
    --                 :BufferCloseAllButCurrentOrPinned
    --                 :BufferCloseBuffersLeft
    --                 :BufferCloseBuffersRight

    -- Magic buffer-picking mode
    vim.keymap.set('n', '<leader>p', '<Cmd>BufferPick<CR>', opts)
    vim.keymap.set('n', '<leader>d', '<Cmd>BufferPickDelete<CR>', opts)

    -- Sort automatically by...
    vim.keymap.set('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
    vim.keymap.set('n', '<Space>bn', '<Cmd>BufferOrderByName<CR>', opts)
    vim.keymap.set('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
    vim.keymap.set('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
    vim.keymap.set('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)

    -- Other:
    -- :BarbarEnable - enables barbar (enabled by default)
    -- :BarbarDisable - very bad command, should never be used

    -- FIN BARBAR-NIVM
    --
    -- -- TELESCOPE
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files,
        { desc = 'Telescope find files', noremap = true, silent = true })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep,
        { desc = 'Telescope live grep', noremap = true, silent = true })
    vim.keymap.set('n', '<leader>fb', builtin.buffers,
        { desc = 'Telescope buffers', noremap = true, silent = true })

    vim.keymap.set('n', '<leader>fh', builtin.help_tags,
        {
            desc = 'Telescope help tags', noremap = true, silent = true })

    -- keymaps git for telescope
    vim.keymap.set('n', '<leader>gf', builtin.git_files, { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>gs', builtin.git_status, { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>gb', builtin.git_branches, { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>gc', builtin.git_bcommits, { noremap = true, silent = true })

    -- Keymaps Zen
    vim.keymap.set('n', '<leader>z', function()
            Snacks.zen()
        end,
        { noremap = true, silent = true })
end
