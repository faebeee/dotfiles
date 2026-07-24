return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true,
        debounce = 75,
        keymap = {
          accept = "<C-e>",
          accept_word = false,
          accept_line = false,
          next = "<M-]>",
          prev = "<M-[>",
          dismiss = "<C-]>",
        },
      },
      panel = {
        enabled = false,
      },
      filetypes = {
        yaml = false,
        markdown = false,
        help = false,
        gitcommit = false,
        gitrebase = false,
        hgcommit = false,
        svn = false,
        cvs = false,
        ["."] = false,
      },
      copilot_node_command = vim.fn.executable("node") == 1 and "node" or nil,
      server_opts_overrides = {
        trace = "verbose",
        settings = {
          advanced = {
            length_penalties = {
              indentation = {
                relative_empty_line_length = 2.0,
                absolute_empty_line_length = 4,
              },
            },
          },
        },
      },
    },
  },
}
