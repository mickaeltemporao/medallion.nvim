local M = {}

M.colors = {
  -- Base Asphalt tones
  bg            = "#101214", -- Deep asphalt black (main background)
  bg_alt        = "#16181b", -- Elevated background (statuslines, sidebars)
  bg_highlight  = "#202327", -- Cursorline, visual selection
  bg_surface    = "#252930", -- Floating windows, popups
  bg_visual     = "#2c313a", -- Visual selection background

  -- Foreground & Grayscale
  fg            = "#e6e8eb", -- Primary text (crisp off-white)
  fg_alt        = "#c5c8cc", -- Secondary text
  fg_muted      = "#6e7681", -- Comments, line numbers, subtle text
  fg_subtle     = "#444b53", -- Dividers, hidden characters

  -- Medallion Taxi Accents
  yellow        = "#f5b700", -- NYC Medallion Yellow (primary accent)
  yellow_bright = "#ffd13b", -- Canary yellow (cursor, active highlights)
  amber         = "#ff9800", -- Warm amber (warnings, special tokens)
  orange        = "#ff8c42", -- Numbers, constants, parameters

  -- Secondary Accents
  green         = "#98c379", -- Strings, diff add
  red           = "#e06c75", -- Errors, diff delete
  blue          = "#61afef", -- Functions, identifiers
  cyan          = "#56b6c2", -- Types, operators
  magenta       = "#c678dd", -- Keywords, imports, statements

  -- UI Elements
  border        = "#23272e", -- Inactive window border
  border_focus  = "#f5b700", -- Active / focused window border
  selection     = "#ffd13b", -- Search match highlight
  none          = "NONE",
}

return M
