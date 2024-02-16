return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
  -- for nord fox theme
  { import = "astrocommunity.colorscheme.nightfox-nvim" },
  -- flash movement
  { import = "astrocommunity.motion.flash-nvim" },
  -- noice: cmdline and nice notice
  { import = "astrocommunity.utility.noice-nvim" },
  -- cmp-cmdline: command completion
  { import = "astrocommunity.completion.cmp-cmdline" },
  -- diffview
  { import = "astrocommunity.git.diffview-nvim" },
  -- telescope extensions
  { import = "astrocommunity.fuzzy-finder.telescope-zoxide" },
}
