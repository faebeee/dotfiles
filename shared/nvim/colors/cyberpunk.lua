-- "cyberpunk": navy/gold/blue palette lifted from the currently active Noctalia
-- theme (see linux/noctalia-hypr generated configs: ~/.config/kitty/themes/noctalia.conf,
-- ~/.config/gtk-4.0/noctalia.css, ~/.config/btop/themes/noctalia.theme, and
-- ~/.config/alacritty/themes/noctalia.toml for the source palette).
--
-- This is a sibling colorscheme to `noctalia` (the older sage/olive palette);
-- that file is left untouched so both remain selectable.

local c = {
  bg = "#0a0d14",
  bg_alt = "#0c0e14",
  bg_soft = "#11151d",
  bg_muted = "#202837",
  fg = "#d8e0ff",
  fg_dim = "#b7c4f2",
  outline = "#2b314a",
  div = "#1a2033",
  accent = "#c4a82e",
  accent_2 = "#d14358",
  accent_3 = "#5c8ac4",
  accent_soft = "#e8d98a",
  accent_soft_2 = "#9b6bc1",
  error = "#b32d2d",

  -- ANSI-derived accents, spread across distinct hues for contrast while
  -- staying rooted in the navy/gold Noctalia family
  pastel_pink = "#e64572",
  pastel_peach = "#d7a23a",
  pastel_yellow = "#d7a23a",
  pastel_green = "#89d36a",
  pastel_blue = "#4f8fff",
  pastel_lavender = "#9d6dff",
  pastel_cyan = "#43c9ff",

  bright_accent = "#f0d978",
}

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") == 1 then
  vim.cmd("syntax reset")
end

vim.o.termguicolors = true
vim.o.background = "dark"
vim.g.colors_name = "cyberpunk"

local function hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

vim.g.terminal_color_0 = c.bg_alt
vim.g.terminal_color_1 = c.pastel_pink
vim.g.terminal_color_2 = c.pastel_green
vim.g.terminal_color_3 = c.pastel_yellow
vim.g.terminal_color_4 = c.pastel_blue
vim.g.terminal_color_5 = c.pastel_lavender
vim.g.terminal_color_6 = c.pastel_cyan
vim.g.terminal_color_7 = c.fg_dim
vim.g.terminal_color_8 = c.outline
vim.g.terminal_color_9 = c.pastel_pink
vim.g.terminal_color_10 = c.pastel_green
vim.g.terminal_color_11 = c.pastel_yellow
vim.g.terminal_color_12 = c.pastel_blue
vim.g.terminal_color_13 = c.pastel_lavender
vim.g.terminal_color_14 = c.pastel_cyan
vim.g.terminal_color_15 = c.fg

hl("Normal", { fg = c.fg, bg = c.bg })
hl("NormalNC", { fg = c.fg, bg = c.bg })
hl("EndOfBuffer", { fg = c.bg, bg = c.bg })
hl("Comment", { fg = c.fg_dim, italic = true })
hl("Constant", { fg = c.pastel_peach })
hl("String", { fg = c.pastel_green })
hl("Character", { fg = c.pastel_green })
hl("Number", { fg = c.pastel_peach })
hl("Boolean", { fg = c.pastel_peach })
hl("Float", { fg = c.pastel_peach })
hl("Identifier", { fg = c.fg })
hl("Function", { fg = c.pastel_blue })
hl("Statement", { fg = c.pastel_lavender })
hl("Conditional", { fg = c.pastel_lavender })
hl("Repeat", { fg = c.pastel_lavender })
hl("Label", { fg = c.accent_soft })
hl("Operator", { fg = c.fg_dim })
hl("Keyword", { fg = c.pastel_lavender })
hl("Exception", { fg = c.error })
hl("PreProc", { fg = c.pastel_pink })
hl("Type", { fg = c.pastel_yellow })
hl("Special", { fg = c.pastel_cyan })
hl("Underlined", { fg = c.accent_soft, underline = true })
hl("Error", { fg = c.error, bold = true })
hl("Todo", { fg = c.bg_alt, bg = c.pastel_yellow, bold = true })

hl("Cursor", { fg = c.bg, bg = c.fg })
hl("lCursor", { fg = c.bg, bg = c.fg })
hl("CursorLine", { bg = c.bg_soft })
hl("CursorColumn", { bg = c.bg_soft })
hl("ColorColumn", { bg = c.bg_soft })
hl("Visual", { bg = c.bg_muted })
hl("Search", { fg = c.bg_alt, bg = c.accent_soft })
hl("IncSearch", { fg = c.bg_alt, bg = c.accent_2, bold = true })
hl("MatchParen", { fg = c.bg_alt, bg = c.accent, bold = true })
hl("WinSeparator", { fg = c.outline })
hl("VertSplit", { fg = c.outline })
hl("LineNr", { fg = c.outline })
hl("CursorLineNr", { fg = c.fg, bold = true })
hl("SignColumn", { bg = c.bg })
hl("FoldColumn", { fg = c.outline, bg = c.bg })

hl("StatusLine", { fg = c.fg, bg = c.bg_soft })
hl("StatusLineNC", { fg = c.fg_dim, bg = c.bg_soft })
hl("TabLine", { fg = c.fg_dim, bg = c.bg_soft })
hl("TabLineSel", { fg = c.bg_alt, bg = c.bright_accent, bold = true })
hl("TabLineFill", { bg = c.bg_soft })

hl("Pmenu", { fg = c.fg, bg = c.bg_soft })
hl("PmenuSel", { fg = c.bg_alt, bg = c.accent })
hl("PmenuSbar", { bg = c.bg_muted })
hl("PmenuThumb", { bg = c.accent })
hl("NormalFloat", { fg = c.fg, bg = c.bg_soft })
hl("FloatBorder", { fg = c.outline, bg = c.bg_soft })

hl("Title", { fg = c.accent_soft, bold = true })
hl("Directory", { fg = c.accent })
hl("SpecialKey", { fg = c.outline })

hl("DiagnosticError", { fg = c.error })
hl("DiagnosticWarn", { fg = c.pastel_yellow })
hl("DiagnosticInfo", { fg = c.pastel_blue })
hl("DiagnosticHint", { fg = c.pastel_green })
hl("DiagnosticVirtualTextError", { fg = c.error, bg = c.bg_soft })
hl("DiagnosticVirtualTextWarn", { fg = c.pastel_yellow, bg = c.bg_soft })
hl("DiagnosticVirtualTextInfo", { fg = c.pastel_blue, bg = c.bg_soft })
hl("DiagnosticVirtualTextHint", { fg = c.pastel_green, bg = c.bg_soft })
hl("DiagnosticUnderlineError", { undercurl = true, sp = c.error })
hl("DiagnosticUnderlineWarn", { undercurl = true, sp = c.pastel_yellow })
hl("DiagnosticUnderlineInfo", { undercurl = true, sp = c.pastel_blue })
hl("DiagnosticUnderlineHint", { undercurl = true, sp = c.pastel_green })

hl("GitSignsAdd", { fg = c.pastel_green })
hl("GitSignsChange", { fg = c.pastel_yellow })
hl("GitSignsDelete", { fg = c.error })

hl("TelescopeBorder", { fg = c.outline, bg = c.bg_soft })
hl("TelescopeNormal", { fg = c.fg, bg = c.bg_soft })
hl("TelescopePromptBorder", { fg = c.accent, bg = c.bg_soft })
hl("TelescopePromptNormal", { fg = c.fg, bg = c.bg_soft })
hl("TelescopePromptPrefix", { fg = c.error, bg = c.bg_soft })
hl("TelescopeSelection", { fg = c.fg, bg = c.bg_muted })
hl("TelescopeMatching", { fg = c.accent_soft, bold = true })

hl("NeoTreeNormal", { fg = c.fg, bg = c.bg })
hl("NeoTreeNormalNC", { fg = c.fg_dim, bg = c.bg })
hl("NeoTreeFloatBorder", { fg = c.outline, bg = c.bg_soft })
hl("NeoTreeFloatTitle", { fg = c.accent_soft, bg = c.bg_soft, bold = true })
hl("NeoTreeTabActive", { fg = c.fg, bg = c.bg_soft, bold = true })
hl("NeoTreeTabInactive", { fg = c.fg_dim, bg = c.bg })

hl("@variable", { fg = c.fg })
hl("@parameter", { fg = c.fg })
hl("@property", { fg = c.pastel_pink })
hl("@field", { fg = c.pastel_pink })
hl("@punctuation.delimiter", { fg = c.fg_dim })
hl("@punctuation.bracket", { fg = c.fg_dim })
hl("@tag", { fg = c.pastel_blue })
hl("@tag.attribute", { fg = c.pastel_yellow })
hl("@tag.delimiter", { fg = c.fg_dim })
