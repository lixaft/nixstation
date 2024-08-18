local c = require("theme").colors
local color = require("color")
local render_markdown = require("render-markdown")

render_markdown.setup({
  heading = {
    icons = { "󰎤 ", "󰎧 ", "󰎪 ", "󰎭 ", "󰎱 ", "󰎳 " },
    signs = { "󰫎 " },
  },
  code = {
    style = "normal",
  },
})

vim.keymap.set("n", "<leader>m", "<cmd>RenderMarkdown toggle<cr>")

vim.api.nvim_set_hl(0, "RenderMarkdownBullet", { fg = c.orange })
vim.api.nvim_set_hl(0, "RenderMarkdownCode", { bg = color.darken(c.black, 0.6) })
vim.api.nvim_set_hl(0, "RenderMarkdownUnchecked", { fg = c.blue })
vim.api.nvim_set_hl(0, "RenderMarkdownTodo", { fg = c.blue })
vim.api.nvim_set_hl(0, "RenderMarkdownChecked", { fg = c.green })
vim.api.nvim_set_hl(0, "RenderMarkdownDash", { fg = c.orange })
vim.api.nvim_set_hl(0, "RenderMarkdownTableHead", { fg = c.red })
vim.api.nvim_set_hl(0, "RenderMarkdownTableRow", { fg = c.orange })
vim.api.nvim_set_hl(0, "RenderMarkdownCodeInline", { link = "@markup.raw.markdown_inline" })
for i, each in pairs({
  c.blue,
  c.yellow,
  c.green,
  c.teal,
  c.magenta,
  c.purple,
}) do
  vim.api.nvim_set_hl(0, "RenderMarkdownH" .. i .. "Bg", { fg = each, bg = color.darken(each, 0.9), bold = true })
  vim.api.nvim_set_hl(0, "RenderMarkdownH" .. i, { fg = each, bold = true })
end
