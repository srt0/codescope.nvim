local M = {}
local palette = require("everblush.palette").colors

M.theme = {
  normal = {
    a = { fg = palette.black, bg = palette.blue },
    b = { fg = palette.fg, bg = palette.bg },
    c = { fg = palette.fg, bg = palette.bg },
  },
  insert = { a = { fg = palette.black, bg = palette.green } },
  visual = { a = { fg = palette.black, bg = palette.purple } },
  replace = { a = { fg = palette.black, bg = palette.red } },
  command = { a = { fg = palette.black, bg = palette.yellow } },
  inactive = {
    a = { fg = palette.gray, bg = palette.bg },
    b = { fg = palette.gray, bg = palette.bg },
    c = { fg = palette.gray, bg = palette.bg },
  },
}

return M
