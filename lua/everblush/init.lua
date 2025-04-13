-- Copyright (c) 2024 [srt0]. MIT License.
-- GitHub: https://github.com/srt0/everblush.nvim

local M = {}
local palette = require("everblush.palette")
local highlights = require("everblush.highlights")

M.setup = function(opts)
  opts = opts or {}
  vim.g.everblush_transparent = opts.transparent or false

  if vim.g.everblush_transparent then
    palette.colors.bg = "NONE"
  end

  vim.o.termguicolors = true
  vim.o.background = "dark"

  -- Apply highlights
  for group, settings in pairs(highlights.groups) do
    if settings.bg and vim.g.everblush_transparent then
      settings.bg = "NONE"
    end
    vim.api.nvim_set_hl(0, group, settings)
  end

  -- Critical fix: Register the colorscheme
  vim.g.colors_name = "everblush"
end

return M
