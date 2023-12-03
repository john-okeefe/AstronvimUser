return {
  "nvim-neorg/neorg",
  run = ":Neorg sync-parsers",
  dependencies = { "nvim-lua/plenary.nvim" },
  event = "VeryLazy",
  opts = {
    load = {
      ["core.defaults"] = {}, -- Loads default behaviour
      ["core.concealer"] = {}, -- Adds pretty icons to your documents
      ["core.keybinds"] = {}, -- Adds default keybindings
      ["core.completion"] = {
        config = {
          engine = "nvim-cmp",
        },
      }, -- Enables support for completion plugins
      ["core.journal"] = {}, -- Enables support for the journal module
      ["core.dirman"] = { -- Manages Neorg workspaces
        config = {
          workspaces = {
            personal = "~/Nextcloud/Documents/neorgNotes/Personal",
            bible = "~/Nextcloud/Documents/neorgNotes/Bible & Christianity",
            gaming = "~/Nextcloud/Documents/neorgNotes/Gaming",
            tech = "~/Nextcloud/Documents/neorgNotes/Technology",
            media = "~/Nextcloud/Documents/neorgNotes/Video & Audio Editing",
          },
          -- Automatically detect whenever we have entered a subdirectory of a workspace
          autodetect = true,

          -- Automatically change the directory to the root of the workspace every time
          autochdir = true,
        },
      },
    },
  },
}
