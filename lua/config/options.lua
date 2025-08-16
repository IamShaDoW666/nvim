-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.o.guicursor =
  "n-v-c:block,i:block-Cursor/blinkwait40-blinkon20-blinkoff40,r:block,o:block,a:block,sm:block,v:block,ve:block"
-- Set the default scrolloff values
vim.opt.scrolloff = 999
vim.opt.sidescrolloff = 8

-- Create an autocommand group to prevent stacking duplicates
local group = vim.api.nvim_create_augroup("CenterCursor", { clear = true })

-- Dynamically disable scrolloff at the top and bottom of the file
vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, {
  group = group,
  pattern = "*",
  callback = function()
    local last_line = vim.fn.line("$")
    local current_line = vim.fn.line(".")
    if current_line == 1 or current_line == last_line then
      vim.opt.scrolloff = 0
    else
      vim.opt.scrolloff = 999
    end
  end,
})
