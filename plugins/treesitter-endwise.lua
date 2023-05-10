return {
  {
    "RRethy/nvim-treesitter-endwise",
    version = "*",
    event = "VeryLazy",
    config = function()
      require("nvim-treesitter.configs").setup({
        endwise = {
          enable = true,
        }
      })
    end
  }
}
