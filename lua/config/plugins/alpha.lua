local M = {}
local alpha = require('alpha')

function M.setup()
    local dashboard = require("alpha.themes.dashboard")
    local ascii = require('art.ascii_dashboard')

    dashboard.section.header.val = {
        "                                                  ",
        "                                                  ",
        "                                                  ",
        "                                                  ",
        "                                                  ",
        "███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗",
        "████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║",
        "██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║",
        "██║╚██╗██║██╔══╝  ██║   ██║██║   ██║██║██║╚██╔╝██║",
        "██║ ╚████║███████╗╚██████╔╝╚██████╔╝██║██║ ╚═╝ ██║",
        "╚═╝  ╚═══╝╚══════╝ ╚═════╝  ╚═════╝ ╚═╝╚═╝     ╚═╝",
    }

    dashboard.section.buttons.val = {
        dashboard.button("e", "  Nuevo archivo", ":ene <BAR> startinsert <CR>"),
        dashboard.button("f", "  Buscar archivo", ":Telescope find_files<CR>"),
        dashboard.button("r", "  Recientes", ":Telescope oldfiles<CR>"),
        dashboard.button("g", "  Buscar texto", ":Telescope live_grep<CR>"),
        dashboard.button("c", "  Configuración", ":e $MYVIMRC<CR>"),
        dashboard.button("q", "  Salir", ":qa<CR>"),
    }

    dashboard.section.footer.opts.hl = "Number"

    local colorscheme = 'default'
    if vim.fn.has('unix') == 1 then
        colorscheme = 'Catppuccin Macchiato'
    elseif vim.fn.has('win64') then
        colorscheme = 'Kanagawa'
    end

    dashboard.section.footer.val = {
        "Neovim + Lazy + "..colorscheme,
    }

    local quote = {
        type = "text",
        val = ascii,
        opts = {
            position = "center",
            hl = "Identifier", -- o cualquier highlight que te guste
        },
    }

    -- Agregas la sección al layout
    dashboard.config.layout = {
        { type = "padding", val = 2 },
        dashboard.section.header,
        { type = "padding", val = 2 },
        quote, -- tu sección personalizada
        { type = "padding", val = 1 },
        dashboard.section.buttons,
        { type = "padding", val = 1 },
        dashboard.section.footer,
    }

    alpha.setup(
        dashboard.opts
    )
end

return M
