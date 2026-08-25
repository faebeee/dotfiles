local c = {
  bg = "#1c1c21",
  bg_alt = "#1c1c22",
  bg_soft = "#26262c",
  bg_muted = "#2f2f37",
  fg = "#f2f2f3",
  fg_dim = "#b0b0b5",
  outline = "#666771",
  accent = "#989ab3",
  accent_2 = "#918da5",
  accent_3 = "#988fa3",
  accent_soft = "#b6b7c9",
  accent_soft_2 = "#bab8c7",
  error = "#fd4663",
}

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") == 1 then
  vim.cmd("syntax reset")
end

vim.o.termguicolors = true
vim.o.background = "dark"
vim.g.colors_name = "muted-grey"

local function hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

vim.g.terminal_color_0 = c.bg_soft
vim.g.terminal_color_1 = c.error
vim.g.terminal_color_2 = c.accent
vim.g.terminal_color_3 = c.accent_2
vim.g.terminal_color_4 = c.accent_3
vim.g.terminal_color_5 = c.accent_soft
vim.g.terminal_color_6 = c.accent_soft_2
vim.g.terminal_color_7 = c.fg
vim.g.terminal_color_8 = c.outline
vim.g.terminal_color_9 = c.error
vim.g.terminal_color_10 = c.accent
vim.g.terminal_color_11 = c.accent_2
vim.g.terminal_color_12 = c.accent_3
vim.g.terminal_color_13 = c.accent_soft
vim.g.terminal_color_14 = c.accent_soft_2
vim.g.terminal_color_15 = c.fg

hl("Normal", { fg = c.fg, bg = c.bg })
hl("NormalNC", { fg = c.fg, bg = c.bg })
hl("EndOfBuffer", { fg = c.bg, bg = c.bg })
hl("Comment", { fg = c.fg_dim, italic = true })
hl("Constant", { fg = c.accent_soft })
hl("String", { fg = c.accent })
hl("Character", { fg = c.accent_2 })
hl("Number", { fg = c.accent_soft_2 })
hl("Boolean", { fg = c.error })
hl("Float", { fg = c.accent_soft_2 })
hl("Identifier", { fg = c.fg })
hl("Function", { fg = c.accent })
hl("Statement", { fg = c.accent_3 })
hl("Conditional", { fg = c.accent_3 })
hl("Repeat", { fg = c.accent_3 })
hl("Label", { fg = c.accent_soft })
hl("Operator", { fg = c.fg_dim })
hl("Keyword", { fg = c.accent_2 })
hl("Exception", { fg = c.error })
hl("PreProc", { fg = c.accent_soft })
hl("Type", { fg = c.accent_soft_2 })
hl("Special", { fg = c.accent_soft })
hl("Underlined", { fg = c.accent_soft, underline = true })
hl("Error", { fg = c.error, bold = true })
hl("Todo", { fg = c.bg_alt, bg = c.accent_soft, bold = true })

hl("Cursor", { fg = c.bg, bg = c.fg })
hl("lCursor", { fg = c.bg, bg = c.fg })
hl("CursorLine", { bg = c.bg_soft })
hl("CursorColumn", { bg = c.bg_soft })
hl("ColorColumn", { bg = c.bg_soft })
hl("Visual", { bg = c.bg_muted })
hl("Search", { fg = c.bg_alt, bg = c.accent_soft })
hl("IncSearch", { fg = c.bg_alt, bg = c.error, bold = true })
hl("MatchParen", { fg = c.bg_alt, bg = c.accent_2, bold = true })
hl("WinSeparator", { fg = c.outline })
hl("VertSplit", { fg = c.outline })
hl("LineNr", { fg = c.outline })
hl("CursorLineNr", { fg = c.fg, bold = true })
hl("SignColumn", { bg = c.bg })
hl("FoldColumn", { fg = c.outline, bg = c.bg })

hl("StatusLine", { fg = c.fg, bg = c.bg_soft })
hl("StatusLineNC", { fg = c.fg_dim, bg = c.bg_soft })
hl("TabLine", { fg = c.fg_dim, bg = c.bg_soft })
hl("TabLineSel", { fg = c.fg, bg = c.bg_muted, bold = true })
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
hl("DiagnosticWarn", { fg = c.accent_2 })
hl("DiagnosticInfo", { fg = c.accent })
hl("DiagnosticHint", { fg = c.accent_soft_2 })
hl("DiagnosticVirtualTextError", { fg = c.error, bg = c.bg_soft })
hl("DiagnosticVirtualTextWarn", { fg = c.accent_2, bg = c.bg_soft })
hl("DiagnosticVirtualTextInfo", { fg = c.accent, bg = c.bg_soft })
hl("DiagnosticVirtualTextHint", { fg = c.accent_soft_2, bg = c.bg_soft })
hl("DiagnosticUnderlineError", { undercurl = true, sp = c.error })
hl("DiagnosticUnderlineWarn", { undercurl = true, sp = c.accent_2 })
hl("DiagnosticUnderlineInfo", { undercurl = true, sp = c.accent })
hl("DiagnosticUnderlineHint", { undercurl = true, sp = c.accent_soft_2 })

hl("GitSignsAdd", { fg = c.accent })
hl("GitSignsChange", { fg = c.accent_2 })
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
hl("@property", { fg = c.accent_soft })
hl("@field", { fg = c.accent_soft })
hl("@punctuation.delimiter", { fg = c.fg_dim })
hl("@punctuation.bracket", { fg = c.fg_dim })
hl("@tag", { fg = c.accent_soft })
hl("@tag.attribute", { fg = c.accent_soft_2 })
hl("@tag.delimiter", { fg = c.fg_dim })
