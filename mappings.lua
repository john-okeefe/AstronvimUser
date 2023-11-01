return {
  n = {
    [";;"] = {
      function()
        local view = vim.fn.winsaveview()
        vim.cmd [[norm A;]]
        vim.fn.winrestview(view)
      end,
      desc = "Insert semicolon at end of line",
    },
  },
  i = {
    [";;"] = {
      function()
        local view = vim.fn.winsaveview()
        vim.cmd [[norm A;]]
        vim.fn.winrestview(view)
      end,
      desc = "Insert semicolon at end of line",
    },
  }
}
