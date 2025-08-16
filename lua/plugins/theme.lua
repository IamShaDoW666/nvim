if true then
  return {}
end
return {
  "folke/tokyonight.nvim",
  lazy = true,
  enable = false,
  opts = {
    style = "night",
    transparent = true,
    styles = {
      sidebars = "transparent",
      floats = "transparent",
    },
  },
}
