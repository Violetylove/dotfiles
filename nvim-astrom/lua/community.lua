-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.bars-and-lines.bufferline-nvim" },
  { import = "astrocommunity.bars-and-lines.lualine-nvim" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.colorscheme.rose-pine" },
  { import = "astrocommunity.colorscheme.tokyonight-nvim" },
  { import = "astrocommunity.completion.cmp-cmdline" },
  -- { import = "astrocommunity.debugging." },
  { import = "astrocommunity.indent.mini-indentscope" },
  { import = "astrocommunity.motion.flash-nvim" },
  -- { import = "astrocommunity.pack.cpp" },
  -- { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.recipes.neovide" },
  { import = "astrocommunity.recipes.vscode" },
}
