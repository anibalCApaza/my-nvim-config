vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.expandtab = true

-- Evita que Neovim cambie el fondo de la terminal
vim.cmd [[
  highlight Normal guibg=NONE ctermbg=NONE
  highlight NormalNC guibg=NONE ctermbg=NONE
  highlight SignColumn guibg=NONE ctermbg=NONE
  highlight VertSplit guibg=NONE ctermbg=NONE
  highlight EndOfBuffer guibg=NONE ctermbg=NONE
]]

-- PLUGINS
require("config.lazy")

vim.cmd.colorscheme "catppuccin-macchiato"

require('lualine').setup()
