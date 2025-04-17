local M = {}
local palette = require("codescope.palette").colors

M.groups = {
  -- Base groups
  Normal = { fg = palette.fg, bg = palette.bg },
  Comment = { fg = palette.gray },
  Constant = { fg = palette.yellow },
  Identifier = { fg = palette.cyan },
  Statement = { fg = palette.purple },
  PreProc = { fg = palette.purple },
  Type = { fg = palette.cyan },
  Special = { fg = palette.blue },
  Underlined = { underline = true },
  Error = { fg = palette.red },
  Todo = { fg = palette.black, bg = palette.yellow },

  -- Treesitter
  ["@keyword"] = { fg = palette.purple },
  ["@string"] = { fg = palette.yellow },
  ["@function"] = { fg = palette.blue },
  ["@type"] = { fg = palette.cyan },
  ["@variable"] = { fg = palette.fg },

  -- LSP
  DiagnosticError = { fg = palette.red },
  DiagnosticWarn = { fg = palette.yellow },
  DiagnosticInfo = { fg = palette.blue },

  -- Plugins
  TelescopeBorder = { fg = palette.blue, bg = palette.bg },
  GitSignsAdd = { fg = palette.green },
  GitSignsChange = { fg = palette.yellow },
  GitSignsDelete = { fg = palette.red },

  -- Statusline
  StatusLine = { fg = palette.fg, bg = palette.bg_alt }, -- Active window
  StatusLineNC = { fg = palette.gray, bg = palette.bg_alt }, -- Inactive windows
  TabLine = { fg = palette.gray, bg = palette.bg }, -- Tabline (inactive)
  TabLineSel = { fg = palette.blue, bg = palette.bg }, -- Active tab
}

return M
