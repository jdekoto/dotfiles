 local M = {}

function M.setup()
  require('base16-colorscheme').setup({
    base00 = '#15130e',
    base01 = '#211f1a',
    base02 = '#2c2a24',
    base03 = '#979080',
    base04 = '#cdc6b4',
    base05 = '#e8e2d8',
    base06 = '#e8e2d8',
    base07 = '#e8e2d8',
    base08 = '#ffb4ab',
    base09 = '#b2d090',
    base0A = '#d2c69f',
    base0B = '#dbc675',
    base0C = '#b2d090',
    base0D = '#dbc675',
    base0E = '#d2c69f',
    base0F = '#93000a',
  })

  local hi = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  hi('TelescopeNormal',         { fg = '#e8e2d8',          bg = '#15130e' })
  hi('TelescopeBorder',         { fg = '#979080',             bg = '#15130e' })
  hi('TelescopePromptNormal',   { fg = '#e8e2d8',          bg = '#15130e' })
  hi('TelescopePromptBorder',   { fg = '#979080',             bg = '#15130e' })
  hi('TelescopePromptPrefix',   { fg = '#dbc675',             bg = '#15130e' })
  hi('TelescopePromptCounter',  { fg = '#cdc6b4',  bg = '#15130e' })
  hi('TelescopePromptTitle',    { fg = '#15130e',             bg = '#dbc675' })
  hi('TelescopePreviewTitle',   { fg = '#15130e',             bg = '#d2c69f' })
  hi('TelescopeResultsTitle',   { fg = '#15130e',             bg = '#b2d090' })
  hi('TelescopeSelection',      { fg = '#e8e2d8',          bg = '#2c2a24' })
  hi('TelescopeSelectionCaret', { fg = '#dbc675',             bg = '#2c2a24' })
  hi('TelescopeMatching',       { fg = '#dbc675',             bold = true })
end

 -- Register a signal handler for SIGUSR1 (matugen updates)
 local signal = vim.uv.new_signal()
 signal:start(
   'sigusr1',
   vim.schedule_wrap(function()
     package.loaded['matugen'] = nil
     require('matugen').setup()
   end)
 )

 return M
