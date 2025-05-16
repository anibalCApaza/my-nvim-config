-- Deshabilita netrw para no tener conflictos con nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- General
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.expandtab = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4

vim.opt.wrap = false

-- clipboard
vim.opt.clipboard = "unnamedplus"
-- Limitar el número de resultados visibles del autocompletado
vim.o.pumheight = 10

-- Evita que Neovim cambie el fondo de la terminal
vim.cmd [[
  highlight Normal guibg=NONE ctermbg=NONE
  highlight NormalNC guibg=NONE ctermbg=NONE
  highlight SignColumn guibg=NONE ctermbg=NONE
  highlight VertSplit guibg=NONE ctermbg=NONE
  highlight EndOfBuffer guibg=NONE ctermbg=NONE
]]

-- Desactiva netrm para no tener conflictos con nvim-tree
-- disable netrw at the very start of your init.lua

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- FUNCTIONS
local function my_on_attach(bufnr)
    local api = require "nvim-tree.api"

    local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    -- default mappings
    api.config.mappings.default_on_attach(bufnr)

    -- custom mappings
    vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent, opts('Up'))
    vim.keymap.set('n', '?', api.tree.toggle_help, opts('Help'))
end


-- MAPEO DE TECLAS
require("config.keymaps")()

-- Configuración de mensajes del LSP
vim.diagnostic.config({
    virtual_text = true,      -- Muestra el diagnóstico como texto virtual en la línea
    signs = true,             -- Muestra los signos en el signo gutter
    underline = true,         -- Subraya el texto con errores/advertencias
    update_in_insert = false, -- No actualizar los diagnósticos mientras se escribe (puede ser intensivo)
    severity_sort = true,     -- Ordena los diagnósticos por severidad
})
-- PLUGINS
-- Configuraciones
require("config.lazy")

require("mason-lspconfig").setup({
    automatic_enable = false,
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

require('lualine').setup({})

require("nvim-tree").setup({
    sort = {
        sorter = "case_sensitive",
    },
    view = {
        width = 25,
        side = "right"
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
    },
    on_attach = my_on_attach,
})

-- COLORSCHEME según mis sistemas operativos

if vim.fn.has('unix') == 1 then
    require("catppuccin").setup({
        integrations = {
            indent_blankline = {
                enabled = true,
                scope_color = "yellow", -- catppuccin color (eg. `lavender`) Default: text
                colored_indent_levels = true,
            },
            barbar = true,
        },
        transparent_background = true,
        no_italic = false,
        styles = {
            comments = {},
            conditionals = {},
        },
        highlight_overrides = {
            macchiato = function(macchiato)
                return {
                    LineNrAbove = {
                        fg = macchiato.sky
                    },
                    LineNr = {
                        fg = macchiato.red
                    },
                    LineNrBelow = {
                        fg = macchiato.sky
                    },
                }
            end
        },
    })
    vim.cmd.colorscheme("catppuccin-macchiato")
elseif vim.fn.has('win64') == 1 then
    -- Default options:
    require('kanagawa').setup({
        compile = false,  -- enable compiling the colorscheme
        undercurl = true, -- enable undercurls
        commentStyle = { italic = false },
        functionStyle = {},
        keywordStyle = { italic = false },
        statementStyle = { bold = false },
        typeStyle = {},
        transparent = true,    -- do not set background color
        dimInactive = false,   -- dim inactive window `:h hl-NormalNC`
        terminalColors = true, -- define vim.g.terminal_color_{0,17}
        colors = {             -- add/modify theme and palette colors
            palette = {},
            theme = {
                wave = {},
                lotus = {},
                dragon = {},
                all = {
                    ui = {
                        bg_gutter = "none"
                    }
                }

            },
        },
        overrides = function(colors) -- add/modify highlights
            return {}
        end,
        theme = "wave",    -- Load "wave" theme
        background = {     -- map the value of 'background' option to a theme
            dark = "wave", -- try "dragon" !
            light = "lotus"
        },
    })
    vim.cmd.colorscheme("kanagawa")
else
    vim.cmd.colorscheme("default")
end
