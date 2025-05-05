

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.expandtab = true

-- Evita que Neovim cambie el fondo de la terminal
vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
vim.cmd("hi NormalNC guibg=NONE ctermbg=NONE") -- también en ventanas inactivas

-- PLUGINS
require("config.lazy")

vim.cmd.colorscheme "catppuccin-macchiato"
