-- customize mason plugins
return {
	-- use mason-lspconfig to configure LSP installations
	{
		"williamboman/mason-lspconfig.nvim",
		-- overrides `require("mason-lspconfig").setup(...)`
		opts = function(_, opts)
			-- add more things to the ensure_installed table protecting against community packs modifying it
			opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
				"awk_ls",
				"bashls",
				"lua_ls",
				"vimls",
				"yamlls",
				"jsonls",
				"html",
				"cssls",
				"emmet_ls",
				"pyright",
			})
		end,
	},
	-- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
	{
		"jay-babu/mason-null-ls.nvim",
		-- overrides `require("mason-null-ls").setup(...)`
		opts = function(_, opts)
			-- add more things to the ensure_installed table protecting against community packs modifying it
			opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
				"autopep8",
				"prettierd",
				"stylua",
				"ktlint",
				"shellcheck",
				"eslint_d",
				"beautysh",
				"refactoring",
				"gitsigns",
				"checkmake",
				"actionlint",
				"flake8",
				"markdownlint_cli2",
				"stylelint",
				"typos",
			})
		end,
	},
	{
		"jay-babu/mason-nvim-dap.nvim",
		-- overrides `require("mason-nvim-dap").setup(...)`
		opts = function(_, opts)
			-- add more things to the ensure_installed table protecting against community packs modifying it
			opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
				-- "python",
			})
		end,
	},
}
