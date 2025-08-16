-- In your plugins configuration file (e.g., plugins/ui.lua)
return {
  "norcalli/nvim-colorizer.lua",
  config = function()
    require("colorizer").setup()
  end,
}
