---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- Configure core features of AstroNvim
    features = {
      large_buf = { size = 1024 * 500, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
      autopairs = true, -- enable autopairs at start
      cmp = true, -- enable completion at start
      diagnostics_mode = 3, -- diagnostic mode on start (0 = off, 1 = no signs/virtual text, 2 = no virtual text, 3 = on)
      highlighturl = true, -- highlight URLs at start
      notifications = true, -- enable notifications at start
    },
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {
      virtual_text = true,
      underline = true,
    },
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
        relativenumber = true, -- sets vim.opt.relativenumber
        clipboard = "unnamedplus",
        list = true,
        listchars = {
          space = "·",
        },
        number = true, -- sets vim.opt.number
        spell = false, -- sets vim.opt.spell
        signcolumn = "yes", -- sets vim.opt.signcolumn to yes
        wrap = false, -- sets vim.opt.wrap
        guifont = "Maple Mono NF CN:h12",
      },
      g = { -- vim.g.<key>
      },
    },
    mappings = {
      -- first key is the mode
      n = {

        [";"] = { "$", desc = "End of line" },
        ["<C-A>"] = { "ggVG", desc = "Selcet All" },
        ["<Leader>ap"] = { '"0p', desc = "Paste Yanked" },

        -- navigate buffer tabs
        ["<Tab>"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
        ["<S-Tab>"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },

        -- close buffer
        ["<Leader>bd"] = {
          function()
            require("astroui.status.heirline").buffer_picker(
              function(bufnr) require("astrocore.buffer").close(bufnr) end
            )
          end,
          desc = "Close buffer from tabline",
        },

        ["<Leader>lz"] = { "<cmd>Lazy<cr>", desc = "Lazy dashboard" },
        -- setting a mapping to false will disable it
        -- ["<C-S>"] = false,
      },
      v = {
        [";"] = { "$", desc = "End of line" },
      },
    },
  },
}
