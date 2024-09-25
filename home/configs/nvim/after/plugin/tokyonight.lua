local tokyonight = require("tokyonight")

tokyonight.setup({
  style = "night",
  transparent = true,

  styles = {
    floats = "transparent",
    sidebars = "transparent",
    comments = { italic = false },
    keywords = { italic = false },
  },

  lualine_bold = true,

  on_colors = function(colors)
    colors.black = "#08080C"
    colors.bg_highlight = "#111118"

    colors.bg = colors.black
    colors.bg_visual = colors.bg_highlight
    colors.bg_statusline = colors.black
    colors.fg_gutter = colors.bg_highlight
  end,

  on_highlights = function(hl, colors)
    hl.LineNr = { fg = colors.dark3 }
    hl.VirtColumn = { fg = colors.dark3 }

    hl.DiagnosticVirtualTextError = { fg = colors.red1 }
    hl.DiagnosticVirtualTextHint = { fg = colors.teal }
    hl.DiagnosticVirtualTextInfo = { fg = colors.blue2 }
    hl.DiagnosticVirtualTextWarn = { fg = colors.yellow }

    hl.IlluminatedWordRead = { underline = true }
    hl.IlluminatedWordText = { underline = true }
    hl.IlluminatedWordWrite = { underline = true }

    hl.CopilotSuggestion = { fg = colors.blue0 }
    hl.ExtraWhitespace = { bg = colors.red }

    hl.TreesitterContext = {}
    hl.TreesitterContextSeparator = { fg = colors.dark3 }

    hl.Folded = { bg = "none" }
    hl.UfoFoldedBg = { bg = "none" }

    hl.DapBreakpoint = { fg = colors.red }
    hl.DapLogPoint = { fg = colors.purple }
    hl.DapStopped = { fg = colors.yellow }
    hl.DapUIBreakpointsLine = { bg = colors.yellow }

    hl["@string.documentation"] = { fg = colors.comment }
  end,
})

vim.cmd("colorscheme tokyonight")
