return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = {
      enabled = true,
    },
    servers = {
      --ts_ls = { enabled = false },
      copilot = { enabled = true },
    },
  },
}
