-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.colorscheme.rose-pine" },
  { import = "astrocommunity.colorscheme.tokyonight-nvim" },
  { import = "astrocommunity.editing-support.yanky-nvim" },
  { import = "astrocommunity.editing-support.multicursors-nvim" },
  { import = "astrocommunity.file-explorer.telescope-file-browser-nvim" },
  -- { import = "astrocommunity.diagnostics.trouble-nvim" },
  { import = "astrocommunity.indent.indent-blankline-nvim" },
  { import = "astrocommunity.markdown-and-latex.markview-nvim" },
  { import = "astrocommunity.motion.nvim-spider" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.prettier" },
  { import = "astrocommunity.pack.ps1" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.recipes.neovide" },
}
