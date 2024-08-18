local configs = require("nvim-treesitter.configs")
local context = require("treesitter-context")
local tsj = require("treesj")
local c = require("theme").colors

configs.setup({
  highlight = {
    enable = true,
  },

  indent = {
    enable = true,
  },

  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner",
        ["al"] = "@assignment.lhs",
        ["ar"] = "@assignment.rhs",
        ["ia"] = "@parameter.inner",
        ["aa"] = "@parameter.outer",
        ["iC"] = "@comment.inner",
        ["aC"] = "@comment.outer",
        ["ib"] = "@block.inner",
        ["ab"] = "@block.outer",
      },

      include_surrounding_whitespace = function(opts)
        local ret = false
        if string.find(opts.query_string, ".outer") then
          ret = true
        end
        return ret
      end,
    },

    swap = {
      enable = true,
      swap_next = {
        ["<leader>a"] = "@parameter.inner",
      },
      swap_previous = {
        ["<leader>A"] = "@parameter.inner",
      },
    },

    move = {
      enable = true,
      set_jumps = true,
      goto_next_start = {
        ["]c"] = "@class.outer",
        ["]f"] = "@function.outer",
        ["]r"] = "@return.outer",
      },
      goto_next_end = {
        ["]C"] = "@class.outer",
        ["]F"] = "@function.outer",
        ["]R"] = "@return.outer",
      },
      goto_previous_start = {
        ["[c"] = "@class.outer",
        ["[f"] = "@function.outer",
        ["[r"] = "@return.outer",
      },
      goto_previous_end = {
        ["[C"] = "@class.outer",
        ["[F"] = "@function.outer",
        ["[R"] = "@return.outer",
      },
    },
  },
})

context.setup({
  separator = "-",
  multiline_threshold = 1,
})

tsj.setup({
  use_default_keymaps = false,
})

vim.keymap.set("n", "gC", context.go_to_context)
vim.keymap.set("n", "gj", tsj.toggle)

-- UI.
vim.api.nvim_set_hl(0, "TreesitterContext", {})
vim.api.nvim_set_hl(0, "TreesitterContextSeparator", { link = "LineNr" })

-- Syntax.
vim.api.nvim_set_hl(0, "@attribute", { link = "PreProc" })
vim.api.nvim_set_hl(0, "@attribute.builtin", { link = "PreProc" })
vim.api.nvim_set_hl(0, "@comment.error", { fg = c.red, bold = true })
vim.api.nvim_set_hl(0, "@comment.note", { fg = c.aquamarine, bold = true })
vim.api.nvim_set_hl(0, "@comment.todo", { fg = c.blue, bold = true })
vim.api.nvim_set_hl(0, "@comment.warning", { fg = c.yellow, bold = true })
vim.api.nvim_set_hl(0, "@constant", { link = "Constant" })
vim.api.nvim_set_hl(0, "@constructor", { fg = c.magenta })
vim.api.nvim_set_hl(0, "@function", { link = "Function" })
vim.api.nvim_set_hl(0, "@function.builtin", { fg = c.turquoise })
vim.api.nvim_set_hl(0, "@keyword", { link = "Keyword" })
vim.api.nvim_set_hl(0, "@keyword.directive", { link = "PreProc" })
vim.api.nvim_set_hl(0, "@keyword.import", { link = "PreProc" })
vim.api.nvim_set_hl(0, "@keyword.operator", { link = "Operator" })
vim.api.nvim_set_hl(0, "@markup", {})
vim.api.nvim_set_hl(0, "@module", { link = "Include" })
vim.api.nvim_set_hl(0, "@namespace.builtin", { fg = c.aquamarine })
vim.api.nvim_set_hl(0, "@property", { fg = c.aquamarine })
vim.api.nvim_set_hl(0, "@punctuation.bracket", { fg = c.gray })
vim.api.nvim_set_hl(0, "@punctuation.delimiter", { fg = c.cyan })
vim.api.nvim_set_hl(0, "@punctuation.special", { fg = c.cyan })
vim.api.nvim_set_hl(0, "@string", { link = "String" })
vim.api.nvim_set_hl(0, "@string.documentation", { link = "Comment" })
vim.api.nvim_set_hl(0, "@string.escape", { fg = c.magenta })
vim.api.nvim_set_hl(0, "@variable", { fg = c.fg })
vim.api.nvim_set_hl(0, "@variable.builtin", { fg = c.red })
vim.api.nvim_set_hl(0, "@variable.member", { fg = c.aquamarine })
vim.api.nvim_set_hl(0, "@variable.parameter", { fg = c.yellow })

-- Semantic tokens.
vim.api.nvim_set_hl(0, "@lsp.mod.defaultLibrary", { fg = c.red }) -- lua: `vim`
vim.api.nvim_set_hl(0, "@lsp.type.namespace", { link = "@module" })
vim.api.nvim_set_hl(0, "@lsp.type.property", { link = "@property" })
