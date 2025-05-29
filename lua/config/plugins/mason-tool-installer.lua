local M = {}
local mason_tool_installer = require('mason-tool-installer')
function M.setup()
    mason_tool_installer.setup({
        ensure_installed = {
            -- LSP servers (Programming Languages)
            'lua_ls',
            'pyright',
            'ts_ls',
            'intelephense',
            -- LSP servers (web)
            'html',
            'cssls',
            'astro',
            -- Formatters
            'prettier',
            'black'
            -- Linters
        }
    })
end

return M
