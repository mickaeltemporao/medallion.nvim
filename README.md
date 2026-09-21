# medallion.nvim 🚕

A minimalist, high-contrast dark theme inspired by the iconic New York City Medallion Taxi.

Built on deep asphalt carbon backgrounds (`#101214`) accented with punchy Medallion Yellow (`#f5b700`) and Canary Yellow (`#ffd13b`). Engineered for zero eye strain, distinct syntax readability, and seamless integration with minimalist desktop workflows (`dwm`, `st`, `tmux`, `fzf`, `vifm`, `zathura`).

---

## 🎨 Master Palette

| Color | Hex | Role |
| :--- | :--- | :--- |
| **Asphalt Dark** | `#101214` | Editor & terminal background |
| **Asphalt Surface**| `#181a1d` | Floating menus, statusline background |
| **Border Muted** | `#23272e` | Inactive window borders, subtle split lines |
| **Medallion Yellow**| `#f5b700` | Primary accent, focused borders, active tags/tabs |
| **Canary Yellow** | `#ffd13b` | Cursor, active highlights, search matches |
| **Warm Amber** | `#ff9800` | Warnings, special tokens |
| **Off-White** | `#e6e8eb` | Primary text |
| **Muted Slate** | `#6e7681` | Comments, line numbers, inactive items |
| **Subway Green** | `#98c379` | Strings, git additions |
| **Stoplight Red** | `#e06c75` | Errors, git deletions |
| **Street Sign Blue**| `#61afef` | Functions, identifiers |
| **Cyan** | `#56b6c2` | Types, operators |
| **Magenta** | `#c678dd` | Keywords, statements |

---

## 📦 Installation

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

## 🚀 Statusline Integration (Lualine)

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

## 🖥️ Desktop Integration (Extras)

Ready-to-use snippets for minimal Unix tools are located in [`extras/`](./extras/):

- **dwm**: [`extras/dwm.h`](./extras/dwm.h)
- **st**: [`extras/st.h`](./extras/st.h)
- **tmux**: [`extras/tmux.conf`](./extras/tmux.conf)
- **dunst**: [`extras/dunst.conf`](./extras/dunst.conf)
- **fzf**: [`extras/fzf.bash`](./extras/fzf.bash)
- **zathura**: [`extras/zathurarc`](./extras/zathurarc)

---

## 📄 License

MIT License. See [LICENSE](./LICENSE) for details.
