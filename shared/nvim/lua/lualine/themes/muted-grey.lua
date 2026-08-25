local c = {
  bg = "#1c1c21",
  bg_alt = "#1c1c22",
  bg_soft = "#26262c",
  bg_muted = "#2f2f37",
  fg = "#f2f2f3",
  fg_dim = "#b0b0b5",
  accent = "#989ab3",
  accent_2 = "#918da5",
  accent_3 = "#988fa3",
  accent_soft = "#b6b7c9",
  accent_soft_2 = "#bab8c7",
  error = "#fd4663",
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
