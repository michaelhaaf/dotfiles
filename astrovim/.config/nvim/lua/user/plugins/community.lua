return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.colorscheme.rose-pine",  enabled = true },
  { import = "astrocommunity.colorscheme.catppuccin", enabled = true },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
}
