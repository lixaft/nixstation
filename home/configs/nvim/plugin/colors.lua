local color = require("color")
local c = require("theme").colors

-- Main.
vim.api.nvim_set_hl(0, "Normal", { fg = c.fg, bg = c.bg })

-- Editor.
vim.api.nvim_set_hl(0, "ColorColumn", { bg = c.black })
vim.api.nvim_set_hl(0, "Comment", { fg = c.comment })
vim.api.nvim_set_hl(0, "Conceal", { fg = c.dark5 })
vim.api.nvim_set_hl(0, "CurSearch", { link = "IncSearch" })
vim.api.nvim_set_hl(0, "Cursor", { fg = c.bg, bg = c.fg })
vim.api.nvim_set_hl(0, "CursorColumn", { bg = c.bg_highlight })
vim.api.nvim_set_hl(0, "CursorIM", { fg = c.bg, bg = c.fg })
vim.api.nvim_set_hl(0, "CursorLine", { bg = c.bg_highlight })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = c.orange, bold = true })
vim.api.nvim_set_hl(0, "DiffAdd", { bg = c.diff.add })
vim.api.nvim_set_hl(0, "DiffChange", { bg = c.diff.change })
vim.api.nvim_set_hl(0, "DiffDelete", { bg = c.diff.delete })
vim.api.nvim_set_hl(0, "DiffText", { bg = c.diff.text })
vim.api.nvim_set_hl(0, "Directory", { fg = c.blue })
vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = c.bg })
vim.api.nvim_set_hl(0, "ErrorMsg", { fg = c.error })
vim.api.nvim_set_hl(0, "FloatBorder", { fg = color.darken(c.blue1, 0.2) })
vim.api.nvim_set_hl(0, "FloatTitle", { fg = c.blue1, bold = true })
vim.api.nvim_set_hl(0, "FoldColumn", { fg = c.comment })
vim.api.nvim_set_hl(0, "Folded", { fg = c.blue, bg = c.fg_gutter })
vim.api.nvim_set_hl(0, "IncSearch", { bg = c.orange, fg = c.black })
vim.api.nvim_set_hl(0, "LineNr", { fg = color.darken(c.comment, 0.4) })
vim.api.nvim_set_hl(0, "MatchParen", { fg = c.orange, bold = true })
vim.api.nvim_set_hl(0, "ModeMsg", { fg = c.fg_dark, bold = true })
vim.api.nvim_set_hl(0, "MoreMsg", { fg = c.blue })
vim.api.nvim_set_hl(0, "MsgArea", { fg = c.fg_dark })
vim.api.nvim_set_hl(0, "NonText", { fg = c.dark3 })
vim.api.nvim_set_hl(0, "NormalFloat", { fg = c.fg_float, bg = c.bg_float })
vim.api.nvim_set_hl(0, "NormalNC", { fg = c.fg })
vim.api.nvim_set_hl(0, "NormalSB", { fg = c.fg_sidebar, bg = c.bg_sidebar })
-- vim.api.nvim_set_hl(0, "Pmenu", { bg = c.bg_popup, fg = c.fg })
-- vim.api.nvim_set_hl(0, "PmenuSbar", { bg = color.lighten(c.bg_popup, 0.05) })
-- vim.api.nvim_set_hl(0, "PmenuSel", { bg = color.darken(c.fg_gutter, 0.2) })
vim.api.nvim_set_hl(0, "PmenuThumb", { bg = c.fg_gutter })
vim.api.nvim_set_hl(0, "Question", { fg = c.blue })
vim.api.nvim_set_hl(0, "QuickFixLine", { bg = c.bg_visual, bold = true })
vim.api.nvim_set_hl(0, "Search", { bg = c.bg_search, fg = c.fg })
vim.api.nvim_set_hl(0, "SignColumn", { fg = c.fg_gutter })
vim.api.nvim_set_hl(0, "SignColumnSB", { bg = c.bg_sidebar, fg = c.fg_gutter })
vim.api.nvim_set_hl(0, "SpecialKey", { fg = c.dark3 })
vim.api.nvim_set_hl(0, "SpellBad", { sp = c.error, undercurl = true })
vim.api.nvim_set_hl(0, "SpellCap", { sp = c.warning, undercurl = true })
vim.api.nvim_set_hl(0, "SpellLocal", { sp = c.info, undercurl = true })
vim.api.nvim_set_hl(0, "SpellRare", { sp = c.hint, undercurl = true })
vim.api.nvim_set_hl(0, "StatusLine", { fg = c.fg_sidebar, bg = c.bg_statusline })
vim.api.nvim_set_hl(0, "StatusLineNC", { fg = c.fg_gutter, bg = c.bg_statusline })
vim.api.nvim_set_hl(0, "Substitute", { bg = c.red, fg = c.black })
vim.api.nvim_set_hl(0, "TabLine", { bg = c.bg_statusline, fg = c.fg_gutter })
vim.api.nvim_set_hl(0, "TabLineFill", { bg = c.black })
vim.api.nvim_set_hl(0, "TabLineSel", { fg = c.black, bg = c.blue })
vim.api.nvim_set_hl(0, "Title", { fg = c.blue, bold = true })
vim.api.nvim_set_hl(0, "VertSplit", { fg = c.border })
vim.api.nvim_set_hl(0, "Visual", { bg = c.bg_visual })
vim.api.nvim_set_hl(0, "VisualNOS", { bg = c.bg_visual })
vim.api.nvim_set_hl(0, "WarningMsg", { fg = c.warning })
vim.api.nvim_set_hl(0, "Whitespace", { fg = c.fg_gutter })
vim.api.nvim_set_hl(0, "WildMenu", { bg = c.bg_visual })
vim.api.nvim_set_hl(0, "WinBar", { link = "StatusLine" })
vim.api.nvim_set_hl(0, "WinBarNC", { link = "StatusLineNC" })
vim.api.nvim_set_hl(0, "WinSeparator", { fg = c.border, bold = true })
vim.api.nvim_set_hl(0, "lCursor", { fg = c.bg, bg = c.fg })

-- -- Syntax.
vim.api.nvim_set_hl(0, "Boolean", { link = "Constant" })
vim.api.nvim_set_hl(0, "Character", { link = "String" })
vim.api.nvim_set_hl(0, "Comment", { fg = c.comment })
vim.api.nvim_set_hl(0, "Conditional", { link = "Statement" })
vim.api.nvim_set_hl(0, "Constant", { fg = c.orange })
vim.api.nvim_set_hl(0, "Debug", { fg = c.orange })
vim.api.nvim_set_hl(0, "Define", { link = "PreProc" })
vim.api.nvim_set_hl(0, "Delimiter", { link = "Special" })
vim.api.nvim_set_hl(0, "Error", { fg = c.red })
vim.api.nvim_set_hl(0, "Exception", { link = "Statement" })
vim.api.nvim_set_hl(0, "Float", { link = "Constant" })
vim.api.nvim_set_hl(0, "Function", { fg = c.blue })
vim.api.nvim_set_hl(0, "Identifier", { fg = c.blue1 })
vim.api.nvim_set_hl(0, "Include", { link = "PreProc" })
vim.api.nvim_set_hl(0, "Keyword", { fg = c.magenta })
vim.api.nvim_set_hl(0, "Label", { link = "Statement" })
vim.api.nvim_set_hl(0, "Macro", { link = "PreProc" })
vim.api.nvim_set_hl(0, "Number", { link = "Constant" })
vim.api.nvim_set_hl(0, "Operator", { fg = "#89ddff" })
vim.api.nvim_set_hl(0, "PreCondit", { link = "PreProc" })
vim.api.nvim_set_hl(0, "PreProc", { fg = c.cyan })
vim.api.nvim_set_hl(0, "Repeat", { link = "Statement" })
vim.api.nvim_set_hl(0, "Special", { fg = c.blue1 })
vim.api.nvim_set_hl(0, "SpecialChar", { link = "Special" })
vim.api.nvim_set_hl(0, "SpecialComment", { link = "Special" })
vim.api.nvim_set_hl(0, "Statement", { fg = c.magenta })
vim.api.nvim_set_hl(0, "StorageClass", { link = "Type" })
vim.api.nvim_set_hl(0, "String", { fg = c.green })
vim.api.nvim_set_hl(0, "Structure", { link = "Type" })
vim.api.nvim_set_hl(0, "Tag", { link = "Special" })
vim.api.nvim_set_hl(0, "Todo", { fg = c.fg, bold = true })
vim.api.nvim_set_hl(0, "Type", { fg = c.blue1 })
vim.api.nvim_set_hl(0, "Typedef", { link = "Type" })
vim.api.nvim_set_hl(0, "Underlined", { underline = true })

-- Treesitter.
vim.api.nvim_set_hl(0, "@annotation", { link = "PreProc" })
vim.api.nvim_set_hl(0, "@attribute", { link = "PreProc" })
vim.api.nvim_set_hl(0, "@boolean", { link = "Boolean" })
vim.api.nvim_set_hl(0, "@character", { link = "Character" })
vim.api.nvim_set_hl(0, "@character.printf", { link = "SpecialChar" })
vim.api.nvim_set_hl(0, "@character.special", { link = "SpecialChar" })
vim.api.nvim_set_hl(0, "@comment", { link = "Comment" })
vim.api.nvim_set_hl(0, "@comment.error", { fg = c.error })
vim.api.nvim_set_hl(0, "@comment.hint", { fg = c.hint })
vim.api.nvim_set_hl(0, "@comment.info", { fg = c.info })
vim.api.nvim_set_hl(0, "@comment.note", { fg = c.hint })
vim.api.nvim_set_hl(0, "@comment.todo", { fg = c.todo })
vim.api.nvim_set_hl(0, "@comment.warning", { fg = c.warning })
vim.api.nvim_set_hl(0, "@constant", { link = "Constant" })
vim.api.nvim_set_hl(0, "@constant.builtin", { link = "Special" })
vim.api.nvim_set_hl(0, "@constant.macro", { link = "Define" })
vim.api.nvim_set_hl(0, "@constructor", { fg = c.magenta })
vim.api.nvim_set_hl(0, "@constructor.tsx", { fg = c.blue1 })
vim.api.nvim_set_hl(0, "@diff.delta", { link = "DiffChange" })
vim.api.nvim_set_hl(0, "@diff.minus", { link = "DiffDelete" })
vim.api.nvim_set_hl(0, "@diff.plus", { link = "DiffAdd" })
vim.api.nvim_set_hl(0, "@function", { link = "Function" })
vim.api.nvim_set_hl(0, "@function.builtin", { link = "Special" })
vim.api.nvim_set_hl(0, "@function.call", { link = "@function" })
vim.api.nvim_set_hl(0, "@function.macro", { link = "Macro" })
vim.api.nvim_set_hl(0, "@function.method", { link = "Function" })
vim.api.nvim_set_hl(0, "@function.method.call", { link = "@function.method" })
vim.api.nvim_set_hl(0, "@keyword", { fg = c.purple })
vim.api.nvim_set_hl(0, "@keyword.conditional", { link = "Conditional" })
vim.api.nvim_set_hl(0, "@keyword.coroutine", { link = "@keyword" })
vim.api.nvim_set_hl(0, "@keyword.debug", { link = "Debug" })
vim.api.nvim_set_hl(0, "@keyword.directive", { link = "PreProc" })
vim.api.nvim_set_hl(0, "@keyword.directive.define", { link = "Define" })
vim.api.nvim_set_hl(0, "@keyword.exception", { link = "Exception" })
vim.api.nvim_set_hl(0, "@keyword.function", { fg = c.magenta })
vim.api.nvim_set_hl(0, "@keyword.import", { link = "Include" })
vim.api.nvim_set_hl(0, "@keyword.operator", { link = "@operator" })
vim.api.nvim_set_hl(0, "@keyword.repeat", { link = "Repeat" })
vim.api.nvim_set_hl(0, "@keyword.return", { link = "@keyword" })
vim.api.nvim_set_hl(0, "@keyword.storage", { link = "StorageClass" })
vim.api.nvim_set_hl(0, "@label", { fg = c.blue })
vim.api.nvim_set_hl(0, "@markup", { link = "@none" })
vim.api.nvim_set_hl(0, "@markup.emphasis", { italic = true })
vim.api.nvim_set_hl(0, "@markup.environment", { link = "Macro" })
vim.api.nvim_set_hl(0, "@markup.environment.name", { link = "Type" })
vim.api.nvim_set_hl(0, "@markup.heading", { link = "Title" })
vim.api.nvim_set_hl(0, "@markup.italic", { italic = true })
vim.api.nvim_set_hl(0, "@markup.link", { fg = c.teal })
vim.api.nvim_set_hl(0, "@markup.link.label", { link = "SpecialChar" })
vim.api.nvim_set_hl(0, "@markup.link.label.symbol", { link = "Identifier" })
vim.api.nvim_set_hl(0, "@markup.link.url", { link = "Underlined" })
vim.api.nvim_set_hl(0, "@markup.list", { fg = c.blue5 })
vim.api.nvim_set_hl(0, "@markup.list.checked", { fg = c.green1 })
vim.api.nvim_set_hl(0, "@markup.list.markdown", { fg = c.orange, bold = true })
vim.api.nvim_set_hl(0, "@markup.list.unchecked", { fg = c.blue })
vim.api.nvim_set_hl(0, "@markup.math", { link = "Special" })
vim.api.nvim_set_hl(0, "@markup.raw", { link = "String" })
vim.api.nvim_set_hl(0, "@markup.raw.markdown_inline", { bg = c.terminal_black, fg = c.blue })
vim.api.nvim_set_hl(0, "@markup.strikethrough", { strikethrough = true })
vim.api.nvim_set_hl(0, "@markup.strong", { bold = true })
vim.api.nvim_set_hl(0, "@markup.underline", { underline = true })
vim.api.nvim_set_hl(0, "@module", { link = "Include" })
vim.api.nvim_set_hl(0, "@module.builtin", { fg = c.red })
vim.api.nvim_set_hl(0, "@namespace.builtin", { link = "@variable.builtin" })
vim.api.nvim_set_hl(0, "@none", {})
vim.api.nvim_set_hl(0, "@number", { link = "Number" })
vim.api.nvim_set_hl(0, "@number.float", { link = "Float" })
vim.api.nvim_set_hl(0, "@operator", { fg = c.blue5 })
vim.api.nvim_set_hl(0, "@property", { fg = c.green1 })
vim.api.nvim_set_hl(0, "@punctuation.bracket", { fg = c.fg_dark })
vim.api.nvim_set_hl(0, "@punctuation.delimiter", { fg = c.blue5 })
vim.api.nvim_set_hl(0, "@punctuation.special", { fg = c.blue5 })
vim.api.nvim_set_hl(0, "@string", { link = "String" })
vim.api.nvim_set_hl(0, "@string.documentation", { fg = c.comment })
vim.api.nvim_set_hl(0, "@string.escape", { fg = c.magenta })
vim.api.nvim_set_hl(0, "@string.regexp", { fg = c.blue6 })
vim.api.nvim_set_hl(0, "@tag", { link = "Label" })
vim.api.nvim_set_hl(0, "@tag.attribute", { link = "@property" })
vim.api.nvim_set_hl(0, "@tag.delimiter", { link = "Delimiter" })
vim.api.nvim_set_hl(0, "@tag.delimiter.tsx", { fg = color.darken(c.blue, 0.3) })
vim.api.nvim_set_hl(0, "@tag.tsx", { fg = c.red })
vim.api.nvim_set_hl(0, "@type", { link = "Type" })
vim.api.nvim_set_hl(0, "@type.builtin", { fg = color.darken(c.blue1, 0.2) })
vim.api.nvim_set_hl(0, "@type.definition", { link = "Typedef" })
vim.api.nvim_set_hl(0, "@type.qualifier", { link = "@keyword" })
vim.api.nvim_set_hl(0, "@variable", { fg = c.fg })
vim.api.nvim_set_hl(0, "@variable.builtin", { fg = c.red })
vim.api.nvim_set_hl(0, "@variable.member", { fg = c.green1 })
vim.api.nvim_set_hl(0, "@variable.parameter", { fg = c.yellow })
vim.api.nvim_set_hl(0, "@variable.parameter.builtin", { fg = color.lighten(c.yellow, 0.2) })

-- LSP Semantic Token Groups
vim.api.nvim_set_hl(0, "@lsp.type.boolean", { link = "@boolean" })
vim.api.nvim_set_hl(0, "@lsp.type.builtinType", { link = "@type.builtin" })
vim.api.nvim_set_hl(0, "@lsp.type.comment", { link = "@comment" })
vim.api.nvim_set_hl(0, "@lsp.type.decorator", { link = "@attribute" })
vim.api.nvim_set_hl(0, "@lsp.type.deriveHelper", { link = "@attribute" })
vim.api.nvim_set_hl(0, "@lsp.type.enum", { link = "@type" })
vim.api.nvim_set_hl(0, "@lsp.type.enumMember", { link = "@constant" })
vim.api.nvim_set_hl(0, "@lsp.type.escapeSequence", { link = "@string.escape" })
vim.api.nvim_set_hl(0, "@lsp.type.formatSpecifier", { link = "@markup.list" })
vim.api.nvim_set_hl(0, "@lsp.type.generic", { link = "@variable" })
vim.api.nvim_set_hl(0, "@lsp.type.interface", { fg = color.lighten(c.blue1, 0.3) })
vim.api.nvim_set_hl(0, "@lsp.type.keyword", { link = "@keyword" })
vim.api.nvim_set_hl(0, "@lsp.type.lifetime", { link = "@keyword.storage" })
vim.api.nvim_set_hl(0, "@lsp.type.namespace", { link = "@module" })
vim.api.nvim_set_hl(0, "@lsp.type.namespace.python", { link = "@variable" })
vim.api.nvim_set_hl(0, "@lsp.type.number", { link = "@number" })
vim.api.nvim_set_hl(0, "@lsp.type.operator", { link = "@operator" })
vim.api.nvim_set_hl(0, "@lsp.type.parameter", { link = "@variable.parameter" })
vim.api.nvim_set_hl(0, "@lsp.type.property", { link = "@property" })
vim.api.nvim_set_hl(0, "@lsp.type.selfKeyword", { link = "@variable.builtin" })
vim.api.nvim_set_hl(0, "@lsp.type.selfTypeKeyword", { link = "@variable.builtin" })
vim.api.nvim_set_hl(0, "@lsp.type.string", { link = "@string" })
vim.api.nvim_set_hl(0, "@lsp.type.typeAlias", { link = "@type.definition" })
vim.api.nvim_set_hl(0, "@lsp.type.unresolvedReference", { undercurl = true, sp = c.error })
vim.api.nvim_set_hl(0, "@lsp.type.variable", {})
vim.api.nvim_set_hl(0, "@lsp.typemod.class.defaultLibrary", { link = "@type.builtin" })
vim.api.nvim_set_hl(0, "@lsp.typemod.enum.defaultLibrary", { link = "@type.builtin" })
vim.api.nvim_set_hl(0, "@lsp.typemod.enumMember.defaultLibrary", { link = "@constant.builtin" })
vim.api.nvim_set_hl(0, "@lsp.typemod.function.defaultLibrary", { link = "@function.builtin" })
vim.api.nvim_set_hl(0, "@lsp.typemod.keyword.async", { link = "@keyword.coroutine" })
vim.api.nvim_set_hl(0, "@lsp.typemod.keyword.injected", { link = "@keyword" })
vim.api.nvim_set_hl(0, "@lsp.typemod.macro.defaultLibrary", { link = "@function.builtin" })
vim.api.nvim_set_hl(0, "@lsp.typemod.method.defaultLibrary", { link = "@function.builtin" })
vim.api.nvim_set_hl(0, "@lsp.typemod.operator.injected", { link = "@operator" })
vim.api.nvim_set_hl(0, "@lsp.typemod.string.injected", { link = "@string" })
vim.api.nvim_set_hl(0, "@lsp.typemod.struct.defaultLibrary", { link = "@type.builtin" })
vim.api.nvim_set_hl(0, "@lsp.typemod.type.defaultLibrary", { fg = color.darken(c.blue1, 0.2) })
vim.api.nvim_set_hl(0, "@lsp.typemod.typeAlias.defaultLibrary", { fg = color.darken(c.blue1, 0.2) })
vim.api.nvim_set_hl(0, "@lsp.typemod.variable.callable", { link = "@function" })
vim.api.nvim_set_hl(0, "@lsp.typemod.variable.defaultLibrary", { link = "@variable.builtin" })
vim.api.nvim_set_hl(0, "@lsp.typemod.variable.injected", { link = "@variable" })
vim.api.nvim_set_hl(0, "@lsp.typemod.variable.static", { link = "@constant" })
