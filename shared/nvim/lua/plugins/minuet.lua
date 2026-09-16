return {
  {
    "milanglacier/minuet-ai.nvim",
    event = "InsertEnter",
    config = function()
      require("minuet").setup({
        provider = "openai_fim_compatible",
        -- recommended for local models: reduces load and speeds up responses
        n_completions = 1,
        -- start small; increase if your machine can handle a larger context
        context_window = 512,
        request_timeout = 3,
        throttle = 1000,
        debounce = 400,
        provider_options = {
          openai_fim_compatible = {
            -- Ollama doesn't need a real key, but Minuet requires the name
            -- of an env var that exists as a placeholder.
            api_key = "TERM",
            name = "Ollama",
            end_point = "http://localhost:11434/v1/completions",
            model = "qwen2.5-coder:3b",
            optional = {
              max_tokens = 128,
              top_p = 0.9,
            },
          },
        },
        -- ghost-text (virtual text) completion, similar UX to Copilot
        virtualtext = {
          auto_trigger_ft = { "*" },
          keymap = {
            accept = "<C-y>",
            accept_line = "<C-w>",
            next = "<M-.>",
            prev = "<M-,>",
            dismiss = "<C-\\>",
          },
        },
      })
    end,
  },
}
