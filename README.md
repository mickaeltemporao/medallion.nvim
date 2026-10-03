# medallion.nvim

A minimalist, high-contrast dark theme inspired by the iconic New York City Medallion Taxi.

> **The Lore**: In New York City, an official yellow cab is distinguished by its **Medallion** — the stamped, gold-cast plaque bolted to the hood, granting the exclusive authority to pick up street-hail passengers across the five boroughs. 
> 
> `medallion.nvim` captures that nocturnal urban aesthetic: deep, matte asphalt pavement (`#101214`) punctuated by the authoritative, high-visibility glow of NYC Medallion Yellow (`#f5b700`) and Canary Yellow (`#ffd13b`). Engineered for zero eye strain, distinct syntax clarity, and seamless integration with minimalist, suckless Unix workflows (`dwm`, `st`, `tmux`, `fzf`, `vifm`, `zathura`).

---

## Master Palette

| Color Name | Hex Code | Category | Role |
| :--- | :--- | :--- | :--- |
| **Deep Asphalt** | `#101214` | Base Canvas | Editor & terminal background, floating base |
| **Night Pavement** | `#181a1d` | Surface Elevation | Floating menus, statusline background, popups |
| **Steel Border** | `#23272e` | Structural Mute | Inactive window borders, subtle split lines |
| **Pavement Seam** | `#2c313a` | Visual Selection | Editor visual selection background |
| **Dark Slate** | `#484f58` | Dividers & Ticks | Statusline separators, inactive ticks |
| **Muted Slate** | `#6e7681` | Passive Info | Comments, line numbers, inactive tabs/tags |
| **Off-White** | `#e6e8eb` | Primary Text | Foreground text (90% luminance, glare-free) |
| **Pure White** | `#ffffff` | Critical Foreground | High-priority notifications, error badges |
| **Medallion Yellow**| `#f5b700` | Signature Hero | Focused window borders, active tags/tabs, keywords |
| **Canary Yellow** | `#ffd13b` | Spotlight Beacon | Cursor, active highlights, search matches |
| **Warm Amber** | `#ff9800` | Caution / Warning | Warnings, special tokens, numeric constants |
| **Subway Green** | `#98c379` | Positive Status | Strings, diff additions, executables |
| **Stoplight Red** | `#e06c75` | Critical Alert | Errors, diff deletions, broken symlinks |
| **Street Sign Blue**| `#61afef` | Structural Logic | Functions, identifiers, directory links |
| **Metro Cyan** | `#56b6c2` | Typographic Accent | Types, operators, technical specifications |
| **Civic Magenta** | `#c678dd` | Control Flow | Keywords, statements, preprocessor macros |

---

## Installation

### lazy.nvim
```lua
{
  "username/medallion.nvim", -- or local path: dir = "~/Documents/code/medallion.nvim"
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("medallion")
  end,
}
```

### packer.nvim
```lua
use {
  "username/medallion.nvim",
  config = function()
    vim.cmd.colorscheme("medallion")
  end
}
```

### vim-plug
```vim
Plug 'username/medallion.nvim'
colorscheme medallion
```

---

## Statusline Integration (Lualine)

`medallion.nvim` includes a native Lualine theme:

```lua
require("lualine").setup({
  options = {
    theme = "medallion",
    component_separators = "|",
    section_separators = "",
  },
})
```

---

## Desktop & Tool Integration (Extras)

Ready-to-use snippets for minimal Unix tools and CLI environments are located in [`extras/`](./extras/):

- **dwm**: [`extras/dwm.h`](./extras/dwm.h)
- **st**: [`extras/st.h`](./extras/st.h)
- **tmux**: [`extras/tmux.conf`](./extras/tmux.conf)
- **LS_COLORS (Bash/Zsh)**: [`extras/ls_colors.bash`](./extras/ls_colors.bash)
- **dircolors**: [`extras/dircolors`](./extras/dircolors)
- **NeoMutt**: [`extras/neomutt.muttrc`](./extras/neomutt.muttrc)
- **agy**: [`extras/agy.json`](./extras/agy.json)
- **dunst**: [`extras/dunst.conf`](./extras/dunst.conf)
- **fzf**: [`extras/fzf.bash`](./extras/fzf.bash)
- **vifm**: [`extras/medallion.vifm`](./extras/medallion.vifm)
- **zathura**: [`extras/zathurarc`](./extras/zathurarc)
- **qutebrowser**: [`extras/qutebrowser.py`](./extras/qutebrowser.py)

---

## License

MIT License. See [LICENSE](./LICENSE) for details.

---

## AI Disclaimer

This project was developed with the assistance of AI tools. While crafted and tested with care, please review configurations and code before using them in production.

