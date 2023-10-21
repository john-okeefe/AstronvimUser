return {
  "epwalsh/obsidian.nvim",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",
    "nvim-telescope/telescope.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "personal",
        path = vim.fn.expand "~" .. "/Nextcloud/Documents/Notes/Personal",
      },
      {
        name = "christianity",
        path = vim.fn.expand "~" .. "/Nextcloud/Documents/Notes/Bible & Christianity",
      },
      {
        name = "gaming",
        path = vim.fn.expand "~" .. "/Nextcloud/Documents/Notes/Gaming",
      },
      {
        name = "obsidianthub",
        path = vim.fn.expand "~" .. "/Nextcloud/Documents/Notes/obsidian-hub-0.2.1",
      },
      {
        name = "technology",
        path = vim.fn.expand "~" .. "/Nextcloud/Documents/Notes/Technology",
      },
      {
        name = "media",
        path = vim.fn.expand "~" .. "/Nextcloud/Documents/Notes/Video & Audio Editing",
      },
    },
    completion = {
      nvim_cmp = true,
      min_chars = 2,
      new_notes_location = "current_dir",
      prepend_note_id = true,
    },
    mappings = {
      ["gf"] = {
        action = function() return require("obsidian").util.gf_passthrough() end,
        opts = { noremap = false, expr = true, buffer = true },
      },
    },
    overwrite_mappings = true,
  },
  disable_frontmatter = true,
  open_app_foreground = true,
  finder = "telescope.nvim",
  require("nvim-treesitter.configs").setup {
    ensure_installed = { "markdown", "markdown_inline" },
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = { "markdown" },
    },
  },
}
