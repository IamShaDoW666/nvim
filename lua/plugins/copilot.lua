return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  build = ":Copilot setup",
  opts = {
    panel = {
      enabled = false, -- Disable the panel by default
      auto_refresh = true,
      keymap = {
        jump_prev = "[[",
        jump_next = "]]",
        accept = "<CR>",
        quit = "q",
        open = "<M-CR>",
      },
    },
    suggestion = {
      enabled = false, -- <<< Set this to false to disable suggestions by default
      auto_trigger = true,
      debounce = 75,
      keymap = {
        accept = "<C-l>",
        accept_word = "<M-l>",
        accept_line = "<M-CR>",
        next = "<M-]",
        prev = "<M-[",
        dismiss = "<C-]>",
      },
    },
    filetypes = {
      -- You can also fine-tune which filetypes Copilot is enabled for,
      -- but setting 'enabled = false' above is the primary way to disable by default.
      -- If 'enabled = false' is set, these filetype settings generally won't matter unless
      -- you explicitly enable it later for specific filetypes.
      -- If you want it enabled by default for specific filetypes but not others,
      -- remove `suggestion.enabled = false` and use this:
      -- ["*"] = false, -- Disable for all by default
      -- ["lua"] = true, -- Enable for Lua
      -- ["python"] = true, -- Enable for Python
    },
    copilot_node_command = "node", -- Node.js executable path.
    server_opts = {
      -- Set the server log level to debug for more detailed logging.
      -- capabilities = {...},
      settings = {
        advanced = {
          debug = {
            -- logging = { level = "debug" },
          },
        },
      },
    },
  },
  setup = function()
    -- vim.g.copilot_no_tab_map = true -- disable tab for auto completion
  end,
}
