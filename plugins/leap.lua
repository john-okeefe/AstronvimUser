return {
  {
    "ggandor/leap.nvim",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("leap").add_default_mappings()
    end
  }
}
