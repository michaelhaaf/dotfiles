local overrides = require "custom.plugins.overrides"

return {

  ----------------------------------------- default plugins ------------------------------------------

  ["folke/which-key.nvim"] = {
    disable = false,
    override_options = overrides.whichkey,
  },

  ["goolord/alpha-nvim"] = {
    disable = false,
    override_options = overrides.alpha,
  },

  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  -- override default configs
  ["nvim-tree/nvim-tree.lua"] = {
    override_options = overrides.nvimtree,
  },

  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = overrides.treesitter,
  },

  ["lukas-reineke/indent-blankline.nvim"] = {
    override_options = overrides.blankline,
  },

  ["williamboman/mason.nvim"] = {
    override_options = overrides.mason,
  },

  --------------------------------------------- custom plugins ----------------------------------------------

  -- autoclose tags in html, jsx only
  ["windwp/nvim-ts-autotag"] = {
    ft = { "html", "javascriptreact" },
    after = "nvim-treesitter",
    config = function()
      local present, autotag = pcall(require, "nvim-ts-autotag")

      if present then
        autotag.setup()
      end
    end,
  },

  -- format & linting
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },

  -- distraction free modes
  ["Pocco81/TrueZen.nvim"] = {
    cmd = {
      "TZAtaraxis",
      "TZMinimalist",
      "TZFocus",
    },
    config = function()
      require "custom.plugins.truezen"
    end,
  },

  -- get highlight group under cursor
  ["nvim-treesitter/playground"] = {
    cmd = "TSCaptureUnderCursor",
    config = function()
      require("nvim-treesitter.configs").setup()
    end,
  },

  -- I rarely use shade.nvim/autosave.nvim so made commands to enable them

  -- dim inactive windows
  ["andreadev-it/shade.nvim"] = {
    module = "shade",
    config = function()
      require "custom.plugins.shade"
    end,
  },

  -- autosave
  ["Pocco81/AutoSave.nvim"] = {
    module = "autosave",
    config = function()
      require("autosave").setup()
    end,
  },

  -- notes & todo stuff
  ["nvim-neorg/neorg"] = {
    tag = "0.0.12",
    ft = "norg",
    after = "nvim-treesitter",
    setup = function()
      require("custom.plugins.neorg").autocmd()
    end,
    config = function()
      require("custom.plugins.neorg").setup()
    end,
  },

  -- basic diagrams for flow charts etc
  ["jbyuki/venn.nvim"] = {
    disable = false,
    module = "venn.nvim",
    config = function()
      require("custom.plugins.venn").setup()
    end,
  },

  -- surround
  ["kylechui/nvim-surround"] = {
    tag = "*",
    config = function()
      require("nvim-surround").setup()
    end,
  },

  -- unicode
  ["chrisbra/unicode.vim"] = {},

  -- zen, context highlighting
  ["folke/twilight.nvim"] = {
    config = function()
      require("twilight").setup()
    end,
  },

  -- zen, context highlighting
  ["Pocco81/true-zen.nvim"] = {
    config = function()
      require("true-zen").setup {
        integrations = {
          twilight = true
        }
      }
    end,
  },

  -- markdown preview
  ["iamcco/markdown-preview.nvim"] = {
    run = function() vim.fn["mkdp#util#install"]() end,
  },

  -- better text object support
  ["wellle/targets.vim"] = {},

  -- leap
  ["ggandor/leap.nvim"] = {
    config = function()
      require("leap").add_default_mappings()
    end,
  },

  -- better markdown tables
  ["dhruvasagar/vim-table-mode"] = {},

  -- .yuck editting
  ["elkowar/yuck.vim"] = {},
}
