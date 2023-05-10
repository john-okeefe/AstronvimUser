return {
  {
    "folke/tokyonight.nvim",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("tokyonight").setup {
        style = "night",
      }
    end
  }
}
