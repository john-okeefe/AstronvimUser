return {
  {
    "folke/neodev.nvim",
    version = "*",
    event = "VeryLazy",
    config = function()
      require("neodev").setup({})
    end
  }
}
