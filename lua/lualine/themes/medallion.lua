local colors = require("medallion.palette").colors

return {
  normal = {
    a = { bg = colors.yellow, fg = colors.bg, gui = "bold" },
    b = { bg = colors.bg_surface, fg = colors.fg },
    c = { bg = colors.bg_alt, fg = colors.fg_muted },
  },
  insert = {
    a = { bg = colors.yellow_bright, fg = colors.bg, gui = "bold" },
    b = { bg = colors.bg_surface, fg = colors.fg },
    c = { bg = colors.bg_alt, fg = colors.fg_muted },
  },
  visual = {
    a = { bg = colors.amber, fg = colors.bg, gui = "bold" },
    b = { bg = colors.bg_surface, fg = colors.fg },
    c = { bg = colors.bg_alt, fg = colors.fg_muted },
  },
  replace = {
    a = { bg = colors.red, fg = colors.bg, gui = "bold" },
    b = { bg = colors.bg_surface, fg = colors.fg },
    c = { bg = colors.bg_alt, fg = colors.fg_muted },
  },
  command = {
    a = { bg = colors.orange, fg = colors.bg, gui = "bold" },
    b = { bg = colors.bg_surface, fg = colors.fg },
    c = { bg = colors.bg_alt, fg = colors.fg_muted },
  },
  inactive = {
    a = { bg = colors.bg_alt, fg = colors.fg_muted, gui = "bold" },
    b = { bg = colors.bg_alt, fg = colors.fg_muted },
    c = { bg = colors.bg_alt, fg = colors.fg_muted },
  },
}
