local M = {}

M.plugins = require "custom.plugins"

M.ui = {
  -- theme stuff
  theme = "pastelDark",
  theme_toggle = { "onedark", "one_light" },

  -- highlight groups!
  hl_add = require("custom.highlights").new_hlgroups,
  hl_override = require("custom.highlights").overriden_hlgroups,

  transparency=true
}

M.mappings = require "custom.mappings"

return M
