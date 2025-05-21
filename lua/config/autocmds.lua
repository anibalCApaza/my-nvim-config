local api = vim.api



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
