return {
  "akinsho/toggleterm.nvim",
  opts = function(_, opts)
    return require("astronvim.utils").extend_tbl(opts, {
      shell = "/usr/bin/fish",
    })
  end,
}
