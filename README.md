# Everblush.nvim 🌌

A soothing dark Neovim colorscheme for long coding sessions

![Everblush Screenshot](./screenshot.png)

## Features

- 🎨 Carefully curated color palette
- 📦 Easy installation with Lazy.nvim
- 📊 Built-in Lualine theme
- 🌍 Treesitter compatible

## Installation

```lua
{
  "srt0/everblush.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("everblush").setup({
      transparent = false, -- Set to true for transparency
    })
    vim.cmd.colorscheme("everblush")
  end,
}
```

## 🌈 Requirements
- Neovim 0.9.0+
- Terminal with true color support ([how to verify](https://gist.github.com/XVilka/8346728))
- `nvim-treesitter` (auto-installed but needs compilation)

## 🔧 Troubleshooting
If colors don't appear correctly:
1. Verify true color support: `:echo has('termguicolors')` should return `1`
2. Check colorscheme is loaded: `:colorscheme` should show `everblush`
3. Ensure Treesitter parsers are installed: `:TSUpdate`

## Credits

Color palette inspired by Rose Pine and Tokyo Night themes.
