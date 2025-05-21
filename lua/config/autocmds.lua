local api = vim.api


-- LSP
api.nvim_create_autocmd("LspProgress", {
    ---@param ev {data: {client_id: integer, params: lsp.ProgressParams}}
    callback = function(ev)
        local spinner = { "⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏" }
        vim.notify(vim.lsp.status(), vim.log.levels.INFO, {
            id = "lsp_progress",
            title = "LSP Progress",
            opts = function(notif)
                notif.icon = ev.data.params.value.kind == "end" and " "
                    or spinner[math.floor(vim.uv.hrtime() / (1e6 * 80)) % #spinner + 1]
            end,
        })
    end,
})


-- Notify when a buffer is written (saved)
-- Shows the name of the file that was just saved
api.nvim_create_autocmd("BufWritePost", {
    callback = function()
        vim.notify("File saved: " .. vim.fn.expand("%:t"), vim.log.levels.INFO)
    end,
})


-- Notify when text is yanked (copied)
-- Useful visual feedback for copy operations
vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
        vim.notify("Text copied to clipboard", vim.log.levels.INFO)
    end,
})


