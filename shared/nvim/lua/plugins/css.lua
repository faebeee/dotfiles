return {
  -- Treesitter grammars for CSS/SCSS
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "css", "scss" })
    end,
  },
  -- LSP: cssls + emmet
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        cssls = {},
        emmet_language_server = {
          filetypes = { "css", "scss", "less", "html" },
        },
      },
    },
  },
  -- Formatting: prettier for css/scss/less
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        css = { "prettier" },
        scss = { "prettier" },
        less = { "prettier" },
      },
    },
  },
  -- Linting: stylelint for css/scss
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        css = { "stylelint" },
        scss = { "stylelint" },
      },
    },
  },
}
