local M = {}

function M.setup()
    require("bufferline").setup({
        options = {
            diagnostics = 'nvim_lsp',
            close_command = function(bufnr)
                require("mini.bufremove").delete(bufnr, false)
            end,
            right_mouse_command = function(bufnr)
                require("mini.bufremove").delete(bufnr, false)
            end,
        }
    })
end

return M
