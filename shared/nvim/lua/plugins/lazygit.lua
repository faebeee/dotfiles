local function ensure_lazygit_config()
  local out = vim.fn.system({ "lazygit", "-cd" })
  if vim.v.shell_error ~= 0 then
    return
  end
end

return {
  {
    "folke/snacks.nvim",
    init = ensure_lazygit_config,
  },
}
