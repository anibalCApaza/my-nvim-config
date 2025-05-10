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
-- En init.lua o en tu archivo de mappings
vim.keymap.set("n", "<C-b>", ":NvimTreeToggle<CR>", { desc = "Toggle File Explorer" })   -- Abre/cierra nvim-tree con Ctrl+e
vim.keymap.set("n", "<C-r>", ":NvimTreeRefresh<CR>", { desc = "Refresh File Explorer" }) -- Recarga nvim-tree con Ctrl+r
vim.keymap.set("n", "<C-f>", ":NvimTreeFocus<CR>", { desc = "Focus File Explorer" })     -- Enfoca nvim-tree con Ctrl+f

-- PLUGINS
require("config.lazy")

require("mason-lspconfig").setup({
    automatic_enable = false,
    ensure_installed = {
        'lua_ls',
        'pyright',
        'ts_ls'
    }
})

require("catppuccin").setup({
    transparent_background = true
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

-- COLORSCHEME BY OS

if vim.fn.has('win64') then
    vim.cmd.colorscheme "kanagawa"
elseif vim.fn.has('unix') then
    vim.cmd.colorscheme("catppuccin")
else
    -- Opción predeterminada si no se detecta Linux o Windows
    vim.cmd.colorscheme("default")
end



vim.diagnostic.config({
    virtual_text = true,      -- Muestra el diagnóstico como texto virtual en la línea
    signs = true,             -- Muestra los signos en el signo gutter
    underline = true,         -- Subraya el texto con errores/advertencias
    update_in_insert = false, -- No actualizar los diagnósticos mientras se escribe (puede ser intensivo)
    severity_sort = true,     -- Ordena los diagnósticos por severidad
})
