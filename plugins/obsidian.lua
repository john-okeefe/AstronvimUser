return {
  "epwalsh/obsidian.nvim",
  -- the obsidian vault in this default config  ~/obsidian-vault
  -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand':
  -- event = { "bufreadpre " .. vim.fn.expand "~" .. "/my-vault/**.md" },
  event = {
    "BufReadPre  */Nextcloud/Documents/Notes/*.md",
    "BufNewFile  */Nextcloud/Documents/Notes/*.md",
  },
  keys = {
    {
      "gf",
      function()
        if require("obsidian").util.cursor_on_markdown_link() then
          return "<cmd>ObsidianFollowLink<CR>"
        else
          return "gf"
        end
      end,
      noremap = false,
      expr = true,
    },
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",
    "nvim-telescope/telescope.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "personal",
        path = vim.env.HOME .. "/Nextcloud/Documents/Notes/Personal",
      },
      {
        name = "christianity",
        path = vim.env.HOME .. "/Nextcloud/Documents/Notes/Bible & Christianity",
      },
      {
        name = "gaming",
        path = vim.env.HOME .. "/Nextcloud/Documents/Notes/Gaming",
      },
      {
        name = "obsidianthub",
        path = vim.env.HOME .. "/Nextcloud/Documents/Notes/obsidian-hub-0.2.1",
      },
      {
        name = "technology",
        path = vim.env.HOME .. "/Nextcloud/Documents/Notes/Technology",
      },
      {
        name = "media",
        path = vim.env.HOME .. "/Nextcloud/Documents/Notes/Video & Audio Editing",
      },
    },
    use_advanced_uri = true,
    finder = "telescope.nvim",
    mappings = {},

    templates = {
      subdir = "templates",
      date_format = "%Y-%m-%d-%a",
      time_format = "%H:%M",
    },

    note_frontmatter_func = function(note)
      -- This is equivalent to the default frontmatter function.
      local out = { id = note.id, aliases = note.aliases, tags = note.tags }
      -- `note.metadata` contains any manually added fields in the frontmatter.
      -- So here we just make sure those fields are kept in the frontmatter.
      if note.metadata ~= nil and require("obsidian").util.table_length(note.metadata) > 0 then
        for k, v in pairs(note.metadata) do
          out[k] = v
        end
      end
      return out
    end,

    -- Optional, by default when you use `:ObsidianFollowLink` on a link to an external
    -- URL it will be ignored but you can customize this behavior here.
    follow_url_func = vim.ui.open or require("astronvim.utils").system_open,
  },
}
