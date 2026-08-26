-- lua/plugins/bufferline.lua
return {
  {
    "akinsho/bufferline.nvim",
    opts = function(_, opts)
      opts.options = opts.options or {}
      -- Show a bright underline below the active buffer tab so it's
      -- immediately obvious which one is selected.
      opts.options.indicator = { style = "underline" }
      opts.options.separator_style = opts.options.separator_style or "thin"

      local function hex(n)
        return n and string.format("#%06x", n) or nil
      end

      local sel = vim.api.nvim_get_hl(0, { name = "TabLineSel", link = false })
      local sel_bg = hex(sel.bg)

      if sel_bg then
        opts.highlights = vim.tbl_deep_extend("force", opts.highlights or {}, {
          buffer_selected = { fg = sel_bg, bold = true },
          numbers_selected = { fg = sel_bg, bold = true },
          indicator_selected = { fg = sel_bg, sp = sel_bg },
        })
      end
    end,
  },
}
