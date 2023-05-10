return {
  {
    "nvim-pack/nvim-spectre",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("spectre").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  }
}
