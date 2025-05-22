local M = {}
local mason_tool_installer = require('mason-tool-installer')
function M.setup()
    mason_tool_installer.setup({
        ensure_installed = {
            'lua_ls',
            'pyright',
            'ts_ls',
            'intelephense',
            'html',
            'cssls',
            'astro'
        }
    })

end

return M
