-- Install plugin manager
require("plugins.manager")

-- Setup `mapleader` and `maplocalleader` before plugins are loaded, so that mappings are correct
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Install required plugins
require("plugins.install")
