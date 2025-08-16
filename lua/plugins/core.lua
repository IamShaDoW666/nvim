return {
  {
    "folke/snacks.nvim",
    ---@type snacks.Config
    opts = {
      dashboard = {
        preset = {
          pick = function(cmd, opts)
            return LazyVim.pick(cmd, opts)()
          end,
          header = [[
 _    _      _                           ___  ____ _             
| |  | |    | |                          |  \/  (_) |            
| |  | | ___| | ___ ___  _ __ ___   ___  | .  . |_| | __ _ _ __  
| |/\| |/ _ \ |/ __/ _ \| '_ ` _ \ / _ \ | |\/| | | |/ _` | '_ \ 
\  /\  /  __/ | (_| (_) | | | | | |  __/ | |  | | | | (_| | | | |
 \/  \/ \___|_|\___\___/|_| |_| |_|\___| \_|  |_/_|_|\__,_|_| |_|
  _                _      _       
 | |              | |    (_)      
 | |     ___   ___| | __  _ _ __  
 | |    / _ \ / __| |/ / | | '_ \ 
 | |___| (_) | (__|   <  | | | | |
 |______\___/ \___|_|\_\ |_|_| |_|
]],

       -- stylua: ignore
       ---@type snacks.dashboard.Item[]
       keys = {
         { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
         { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
         { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
         { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
         { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
         { icon = " ", key = "s", desc = "Restore Session", section = "session" },
         { icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
         { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
         { icon = " ", key = "q", desc = "Quit", action = ":qa" },
       },
        },
      },
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
}
