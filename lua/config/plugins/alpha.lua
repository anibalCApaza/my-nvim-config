local M = {}
local alpha = require('alpha')

function M.setup()
    local dashboard = require("alpha.themes.dashboard")
    local logo = require('art.logo_dashboard')
    dashboard.section.header.val = {
        "                                    ",
        "                                    ",
        "                                    ",
        "                                    ",
        "                                    ",
        "  ███╗   ██╗███╗   ███╗██╗███╗   ██╗",
        "  ████╗  ██║████╗ ████║██║████╗  ██║",
        "  ██╔██╗ ██║██╔████╔██║██║██╔██╗ ██║",
        "  ██║╚██╗██║██║╚██╔╝██║██║██║╚██╗██║",
        "  ██║ ╚████║██║ ╚═╝ ██║██║██║ ╚████║",
        "  ╚═╝  ╚═══╝╚═╝     ╚═╝╚═╝╚═╝  ╚═══╝",
        "",
        "     Bienvenido a Neovim, Anibal :)",
    }

    dashboard.section.header.val = logo



    dashboard.section.buttons.val = {
        dashboard.button("e", "  Nuevo archivo", ":ene <BAR> startinsert <CR>"),
        dashboard.button("f", "  Buscar archivo", ":Telescope find_files<CR>"),
        dashboard.button("r", "  Recientes", ":Telescope oldfiles<CR>"),
        dashboard.button("g", "  Buscar texto", ":Telescope live_grep<CR>"),
        dashboard.button("c", "  Configuración", ":e $MYVIMRC<CR>"),
        dashboard.button("q", "  Salir", ":qa<CR>"),
    }

    dashboard.section.footer.opts.hl = "Comment"

    dashboard.section.footer.val = {
        "Neovim + Lazy.nvim + Catppuccin Macchiato",
    }

    alpha.setup(
        dashboard.opts
    )
end

return M
