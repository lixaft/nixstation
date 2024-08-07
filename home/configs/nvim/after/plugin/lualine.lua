local lualine = require("lualine")
local c = require("theme").colors

lualine.setup({
  options = {
    theme = {
      normal = {
        a = { fg = c.bar.bg_light, bg = c.accent, gui = "bold" },
        b = { fg = c.bar.fg, bg = c.bar.bg_light },
        c = { fg = c.bar.fg, bg = c.bar.bg_dark },
      },
      insert = { a = { fg = c.bar.bg_light, bg = c.magenta, gui = "bold" } },
      visual = { a = { fg = c.bar.bg_light, bg = c.magenta, gui = "bold" } },
      replace = { a = { fg = c.bar.bg_light, bg = c.red, gui = "bold" } },
      command = { a = { fg = c.bar.bg_light, bg = c.yellow, gui = "bold" } },
      terminal = { a = { fg = c.bar.bg_light, bg = c.green, gui = "bold" } },
    },

    component_separators = {
      left = "।",
      right = "।",
    },

    globalstatus = true,

    section_separators = {
      left = "",
      right = "",
    },
  },

  sections = {
    lualine_a = {
      "mode",
    },
    lualine_b = {
      "branch",
      "diff",
      "diagnostics",
    },
    lualine_c = {
      "filename",
    },
    lualine_x = {
      "encoding",
      "fileformat",
      "filetype",
    },
    lualine_y = {
      "progress",
    },
    lualine_z = {
      "location",
    },
  },

  tabline = {
    lualine_a = {
      function()
        return "󰈸"
      end,
    },
    lualine_b = {
      { [1] = "tabs", mode = 2, max_length = vim.o.columns },
      {
        -- HACK: The tabline options will force set the `showtabline` option to 2
        --       (which always display the tab bar). We want to restore the
        --       default behavior here.
        function()
          vim.o.showtabline = 1
          return ""
        end,
      },
    },
    -- lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },
})
