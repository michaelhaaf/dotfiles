-- overriding default plugin configs!

local M = {}

M.treesitter = {
	ensure_installed = {
		"vim",
		"html",
		"css",
		"javascript",
		"json",
		"toml",
		"markdown",
		"c",
		"bash",
		"lua",
		"norg",
		"python",
	},
}

M.nvimtree = {
	view = {
		adaptive_size = true,
		hide_root_folder = false,
	},

	git = {
		enable = true,
	},

	renderer = {
		add_trailing = true,
		highlight_git = true,
		icons = {
			show = {
				git = true,
			},
		},
	},
}

M.blankline = {
	filetype_exclude = {
		"help",
		"terminal",
		"alpha",
		"packer",
		"lspinfo",
		"TelescopePrompt",
		"TelescopeResults",
		"nvchad_cheatsheet",
		"lsp-installer",
		"norg",
		"",
	},
}

M.whichkey = {
	plugins = {
		spelling = {
			enabled = true,
		},
	},
}

M.alpha = {
	header = {
		val = {
			"           ▄ ▄                   ",
			"       ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     ",
			"       █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     ",
			"    ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     ",
			"  ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ",
			"  █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄ ",
			"▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █ ",
			"█▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █ ",
			"    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█     ",
		},
	},
}

M.mason = {
	ensure_installed = {
		-- lua stuff
		"lua-language-server",
		"stylua",

		-- web dev
		"css-lsp",
		"html-lsp",
		"typescript-language-server",
		"deno",
		"emmet-ls",
		"json-lsp",
		"prettier",
		"xo",

		-- shell
		"shfmt",
		"shellcheck",
		"beautysh",

		-- python/c
		"flake8",
		"autopep8",
		"clang-format",
		"rustfmt",

		-- documentation
		"proselint",
	},
}

return M
