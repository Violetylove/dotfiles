return {
  "folke/flash.nvim",
  keys = {
    { "f", mode = { "n" }, function() require("flash").jump() end, desc = "Flash" },
    { "F", mode = { "n" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
  },
}
