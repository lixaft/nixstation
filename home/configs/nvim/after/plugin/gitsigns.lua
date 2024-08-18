local gitsigns = require("gitsigns")
local c = require("theme").colors

gitsigns.setup()

vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = c.git.add })
vim.api.nvim_set_hl(0, "GitSignsChange", { fg = c.git.change })
vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = c.git.delete })
