local palette = require("medallion.palette").colors

local M = {}

function M.setup(user_config)
  -- Config options can be extended here
end

function M.load()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "medallion"

  local c = palette
  local hl = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  -- Editor Base
  hl("Normal",        { fg = c.fg, bg = c.bg })
  hl("NormalFloat",   { fg = c.fg, bg = c.bg_surface })
  hl("FloatBorder",   { fg = c.border_focus, bg = c.bg_surface })
  hl("FloatTitle",    { fg = c.bg, bg = c.yellow, bold = true })
  hl("ColorColumn",   { bg = c.bg_highlight })
  hl("Cursor",        { fg = c.bg, bg = c.yellow_bright })
  hl("CursorLine",    { bg = c.bg_highlight })
  hl("CursorColumn",  { bg = c.bg_highlight })
  hl("CursorLineNr",  { fg = c.yellow, bold = true })
  hl("LineNr",        { fg = c.fg_muted })
  hl("SignColumn",    { fg = c.fg_muted, bg = c.bg })
  hl("VertSplit",     { fg = c.border, bg = c.none })
  hl("WinSeparator",  { fg = c.border, bg = c.none })
  hl("StatusLine",    { fg = c.fg, bg = c.bg_alt })
  hl("StatusLineNC",  { fg = c.fg_muted, bg = c.bg_alt })
  hl("Visual",        { bg = c.bg_visual })
  hl("VisualNOS",     { bg = c.bg_visual })
  hl("Directory",     { fg = c.yellow, bold = true })

  -- Search & Selection
  hl("Search",        { fg = c.bg, bg = c.yellow_bright, bold = true })
  hl("IncSearch",     { fg = c.bg, bg = c.yellow, bold = true })
  hl("CurSearch",     { fg = c.bg, bg = c.yellow_bright, bold = true })
  hl("MatchParen",    { fg = c.yellow_bright, bg = c.bg_highlight, bold = true, underline = true })

  -- Tabs & Folds
  hl("TabLine",       { fg = c.fg_muted, bg = c.bg_alt })
  hl("TabLineSel",    { fg = c.bg, bg = c.yellow, bold = true })
  hl("TabLineFill",   { bg = c.bg_alt })
  hl("Folded",        { fg = c.fg_muted, bg = c.bg_highlight })
  hl("FoldColumn",    { fg = c.fg_muted, bg = c.bg })

  -- Messages & Popups
  hl("ModeMsg",       { fg = c.yellow, bold = true })
  hl("MoreMsg",       { fg = c.yellow })
  hl("ErrorMsg",      { fg = c.red, bold = true })
  hl("WarningMsg",    { fg = c.amber, bold = true })
  hl("Question",      { fg = c.green })
  hl("Title",         { fg = c.yellow, bold = true })
  hl("Pmenu",         { fg = c.fg, bg = c.bg_surface })
  hl("PmenuSel",      { fg = c.bg, bg = c.yellow, bold = true })
  hl("PmenuSbar",     { bg = c.bg_surface })
  hl("PmenuThumb",    { bg = c.fg_muted })

  -- Standard Syntax
  hl("Comment",       { fg = c.fg_muted, italic = true })
  hl("Constant",      { fg = c.orange })
  hl("String",        { fg = c.green })
  hl("Character",     { fg = c.green })
  hl("Number",        { fg = c.orange })
  hl("Boolean",       { fg = c.orange, bold = true })
  hl("Float",         { fg = c.orange })

  hl("Identifier",    { fg = c.fg })
  hl("Function",      { fg = c.yellow, bold = true })
  hl("Statement",     { fg = c.magenta, bold = true })
  hl("Conditional",   { fg = c.magenta, bold = true })
  hl("Repeat",        { fg = c.magenta, bold = true })
  hl("Label",         { fg = c.magenta })
  hl("Operator",      { fg = c.cyan })
  hl("Keyword",       { fg = c.magenta, bold = true })
  hl("Exception",     { fg = c.red, bold = true })

  hl("PreProc",       { fg = c.amber })
  hl("Include",       { fg = c.amber, bold = true })
  hl("Define",        { fg = c.amber })
  hl("Macro",         { fg = c.amber })
  hl("PreCondit",     { fg = c.amber })

  hl("Type",          { fg = c.cyan, bold = true })
  hl("StorageClass",  { fg = c.cyan })
  hl("Structure",     { fg = c.cyan })
  hl("Typedef",       { fg = c.cyan })

  hl("Special",       { fg = c.yellow_bright })
  hl("SpecialChar",   { fg = c.yellow_bright })
  hl("Tag",           { fg = c.yellow })
  hl("Delimiter",     { fg = c.fg_alt })
  hl("SpecialComment",{ fg = c.fg_muted, bold = true })
  hl("Underlined",    { underline = true })
  hl("Bold",          { bold = true })
  hl("Italic",        { italic = true })
  hl("Ignore",        { fg = c.fg_subtle })
  hl("Error",         { fg = c.red, bg = c.none, bold = true })
  hl("Todo",          { fg = c.bg, bg = c.yellow, bold = true })

  -- Diagnostic
  hl("DiagnosticError", { fg = c.red })
  hl("DiagnosticWarn",  { fg = c.amber })
  hl("DiagnosticInfo",  { fg = c.blue })
  hl("DiagnosticHint",  { fg = c.cyan })
  hl("DiagnosticUnderlineError", { undercurl = true, sp = c.red })
  hl("DiagnosticUnderlineWarn",  { undercurl = true, sp = c.amber })
  hl("DiagnosticUnderlineInfo",  { undercurl = true, sp = c.blue })
  hl("DiagnosticUnderlineHint",  { undercurl = true, sp = c.cyan })

  -- Git / Gitsigns
  hl("GitSignsAdd",    { fg = c.green })
  hl("GitSignsChange", { fg = c.amber })
  hl("GitSignsDelete", { fg = c.red })
  hl("DiffAdd",        { bg = "#1b2b1b" })
  hl("DiffChange",     { bg = "#2b281b" })
  hl("DiffDelete",     { bg = "#2b1b1b" })
  hl("DiffText",       { bg = "#3d361c" })

  -- Telescope
  hl("TelescopeBorder",         { fg = c.border_focus, bg = c.bg_surface })
  hl("TelescopePromptBorder",   { fg = c.yellow, bg = c.bg_surface })
  hl("TelescopePromptNormal",   { fg = c.fg, bg = c.bg_surface })
  hl("TelescopePromptPrefix",   { fg = c.yellow, bold = true })
  hl("TelescopePromptTitle",    { fg = c.bg, bg = c.yellow, bold = true })
  hl("TelescopePreviewTitle",   { fg = c.bg, bg = c.green, bold = true })
  hl("TelescopeResultsTitle",   { fg = c.bg, bg = c.border_focus, bold = true })
  hl("TelescopeSelection",      { fg = c.fg, bg = c.bg_highlight, bold = true })
  hl("TelescopeSelectionCaret", { fg = c.yellow, bold = true })
  hl("TelescopeMatching",       { fg = c.yellow_bright, bold = true })

  -- Nvim-cmp
  hl("CmpItemAbbr",           { fg = c.fg })
  hl("CmpItemAbbrDeprecated", { fg = c.fg_muted, strikethrough = true })
  hl("CmpItemAbbrMatch",      { fg = c.yellow_bright, bold = true })
  hl("CmpItemAbbrMatchFuzzy", { fg = c.yellow_bright })
  hl("CmpItemKind",           { fg = c.yellow })
  hl("CmpItemMenu",           { fg = c.fg_muted })

  -- WhichKey
  hl("WhichKey",          { fg = c.yellow, bold = true })
  hl("WhichKeyGroup",     { fg = c.cyan })
  hl("WhichKeyDesc",      { fg = c.fg })
  hl("WhichKeySeparator", { fg = c.fg_muted })
  hl("WhichKeyFloat",     { bg = c.bg_surface })

  -- Treesitter
  hl("@variable",             { fg = c.fg })
  hl("@variable.builtin",     { fg = c.orange })
  hl("@variable.parameter",   { fg = c.fg_alt })
  hl("@variable.member",      { fg = c.fg })
  hl("@constant",             { fg = c.orange })
  hl("@constant.builtin",     { fg = c.orange, bold = true })
  hl("@string",               { fg = c.green })
  hl("@string.regex",         { fg = c.cyan })
  hl("@string.escape",        { fg = c.yellow_bright })
  hl("@character",            { fg = c.green })
  hl("@number",               { fg = c.orange })
  hl("@boolean",              { fg = c.orange, bold = true })
  hl("@function",             { fg = c.yellow, bold = true })
  hl("@function.builtin",     { fg = c.yellow })
  hl("@function.macro",       { fg = c.amber })
  hl("@function.method",      { fg = c.yellow })
  hl("@keyword",              { fg = c.magenta, bold = true })
  hl("@keyword.function",     { fg = c.magenta, bold = true })
  hl("@keyword.return",       { fg = c.magenta, bold = true })
  hl("@keyword.operator",     { fg = c.cyan })
  hl("@operator",             { fg = c.cyan })
  hl("@type",                 { fg = c.cyan, bold = true })
  hl("@type.builtin",         { fg = c.cyan })
  hl("@punctuation.delimiter",{ fg = c.fg_alt })
  hl("@punctuation.bracket",  { fg = c.fg_alt })
  hl("@tag",                  { fg = c.yellow })
  hl("@tag.attribute",        { fg = c.cyan })
  hl("@tag.delimiter",        { fg = c.fg_muted })
end

return M
