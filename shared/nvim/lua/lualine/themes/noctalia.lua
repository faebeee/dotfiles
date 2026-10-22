local c = {
  bg = "#161a14",
  bg_alt = "#0c0f0b",
  bg_soft = "#23281f",
  bg_muted = "#383f31",
  fg = "#f4f7ee",
  fg_dim = "#9eb18b",
  accent = "#a1c18b",
  accent_2 = "#a99670",
  accent_3 = "#66998c",
  accent_soft = "#c9deba",
  accent_soft_2 = "#d2c6ac",
  error = "#e07b6c",
}

return {
  normal = {
    a = { fg = c.bg_alt, bg = c.accent, gui = "bold" },
    b = { fg = c.fg, bg = c.bg_soft },
    c = { fg = c.fg, bg = c.bg },
  },
  insert = {
    a = { fg = c.bg_alt, bg = c.accent_soft, gui = "bold" },
    b = { fg = c.fg, bg = c.bg_soft },
    c = { fg = c.fg, bg = c.bg },
  },
  visual = {
    a = { fg = c.bg_alt, bg = c.accent_2, gui = "bold" },
    b = { fg = c.fg, bg = c.bg_soft },
    c = { fg = c.fg, bg = c.bg },
  },
  replace = {
    a = { fg = c.bg_alt, bg = c.error, gui = "bold" },
    b = { fg = c.fg, bg = c.bg_soft },
    c = { fg = c.fg, bg = c.bg },
  },
  command = {
    a = { fg = c.bg_alt, bg = c.accent_3, gui = "bold" },
    b = { fg = c.fg, bg = c.bg_soft },
    c = { fg = c.fg, bg = c.bg },
  },
  inactive = {
    a = { fg = c.fg_dim, bg = c.bg_soft, gui = "bold" },
    b = { fg = c.fg_dim, bg = c.bg_soft },
    c = { fg = c.fg_dim, bg = c.bg },
  },
}
