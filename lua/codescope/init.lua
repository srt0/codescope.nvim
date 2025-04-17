-- Copyright (c) 2024 [srt0]. MIT License.

local M = {}
local palette = require("codescope.palette")
local highlights = require("codescope.highlights")

M.setup = function(opts)
  opts = opts or {}
  vim.g.codescope_transparent = opts.transparent or false

  -- Set colorscheme name FIRST
  vim.g.colors_name = "codescope"

  -- Rest of your setup logic
  if vim.g.codescope_transparent then
    palette.colors.bg = "NONE"
  end

  vim.o.termguicolors = true
  vim.o.background = "dark"

  for group, settings in pairs(highlights.groups) do
    if settings.bg and vim.g.codescope_transparent then
      settings.bg = "NONE"
    end
    vim.api.nvim_set_hl(0, group, settings)
  end
end

return M
