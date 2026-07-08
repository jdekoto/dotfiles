return {
  "RRethy/base16-nvim",
  lazy = false, -- Make sure it loads immediately on startup
  priority = 1000, -- Load it before other UI components
  config = function()
    local base16 = require("base16-colorscheme")
    
    -- Enable base16 integration hooks for your plugins
    base16.with_config({
      telescope = true,
      notify = true,         -- Fixes notifications (nvim-notify / Noice)
      cmp = true,            -- Fixes autocomplete menus
      illuminate = true,     -- Fixes matching word highlights
      indentblankline = true, -- Fixes code indentation guides
    })

    -- Bootstrap matugen and load the color profile
    local ok, matugen = pcall(require, "matugen")
    if ok then
      matugen.setup()
    end
  end,
}

