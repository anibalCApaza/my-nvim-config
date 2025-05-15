return function()
    local opts = { noremap = true, silent = true }
    -- Nvim-tree
    vim.keymap.set("n", "<C-b>", ":NvimTreeToggle<CR>", { desc = "Toggle File Explorer" })   -- Abre/cierra nvim-tree con Ctrl+e
    vim.keymap.set("n", "<C-r>", ":NvimTreeRefresh<CR>", { desc = "Refresh File Explorer" }) -- Recarga nvim-tree con Ctrl+r
    vim.keymap.set("n", "<C-f>", ":NvimTreeFocus<CR>", { desc = "Focus File Explorer" })     -- Enfoca nvim-tree con Ctrl+f
    -- Bufferline
    vim.keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>", { desc = "Siguiente buffer" })
    vim.keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Anterior buffer" })
    vim.keymap.set("n", "<C-q>", function()
        require("mini.bufremove").delete(0, false)
    end, { desc = "Cerrar buffer actual con Ctrl+q" })
    -- Guardado
    vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })


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

    -- Wipeout buffer
    --                 :BufferWipeout

    -- Close commands
    --                 :BufferCloseAllButCurrent
    --                 :BufferCloseAllButPinned
    --                 :BufferCloseAllButCurrentOrPinned
    --                 :BufferCloseBuffersLeft
    --                 :BufferCloseBuffersRight

    -- Magic buffer-picking mode
    vim.keymap.set('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
    vim.keymap.set('n', '<C-o>', '<Cmd>BufferPickDelete<CR>', opts)

    -- Sort automatically by...
    vim.keymap.set('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
    vim.keymap.set('n', '<Space>bn', '<Cmd>BufferOrderByName<CR>', opts)
    vim.keymap.set('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
    vim.keymap.set('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
    vim.keymap.set('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)

    -- Other:
    -- :BarbarEnable - enables barbar (enabled by default)
    -- :BarbarDisable - very bad command, should never be used
end
