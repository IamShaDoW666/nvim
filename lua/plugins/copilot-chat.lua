return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim", branch = "master" },
    },
    build = "make tiktoken",
    opts = {
      model = "gpt-4.1", -- AI model to use
      temperature = 0.6, -- Lower = focused, higher = creative
      window = {
        layout = "vertical", -- 'vertical', 'horizontal', 'float'
        width = 0.5, -- 50% of screen width
      },
      auto_insert_mode = true, -- Enter insert mode when opening
    },
    keys = {
      {
        "<leader>zc",
        ":CopilotChatToggle<CR>",
        mode = { "n", "v" },
        desc = "Toggle Copilot Chat window",
      },
      { "<leader>zq", ":CopilotChatQuickfix<CR>", mode = "v", desc = "Open Copilot Chat Quickfix" },
      { "<leader>zo", ":CopilotChatOptimize<CR>", mode = "v", desc = "Open Copilot Chat Optimize" },
      { "<leader>zr", ":CopilotChatReview<CR>", mode = "v", desc = "Review Code" },
      { "<leader>ze", ":CopilotChatExplain<CR>", mode = "v", desc = "Explain Code" },
      { "<leader>zf", ":CopilotChatFix<CR>", mode = "v", desc = "Fix Code" },
    },
  },
}
