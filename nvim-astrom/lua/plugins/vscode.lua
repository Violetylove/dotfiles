if not vim.g.vscode then return {} end
return {
  "AstroNvim/astrocore",
  opts = function(_, opts)
    local maps = assert(opts.mappings)

    maps.i["jk"] = "<Esc>"
  end,
}
