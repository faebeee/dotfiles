local c = {
  bg = "#0a0d14",
  bg_alt = "#0c0e14",
  bg_soft = "#11151d",
  bg_muted = "#202837",
  fg = "#d8e0ff",
  fg_dim = "#b7c4f2",
  accent = "#c4a82e",
  accent_2 = "#d14358",
  accent_3 = "#5c8ac4",
  accent_soft = "#e8d98a",
  accent_soft_2 = "#9b6bc1",
  error = "#b32d2d",
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
