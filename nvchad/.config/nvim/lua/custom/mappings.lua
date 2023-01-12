local M = {}

M.general = {
	n = {
		[";"] = { ":", "command mode", opts = { nowait = true } },
	},

	i = {
		["jk"] = { "<ESC>", "escape vim" },
	},
}

M.markdownpreview = {
	n = {
		["<leader>mm"] = { "<cmd> MarkdownPreview <CR>", "preview markdown" },
		["<leader>ms"] = { "<cmd> MarkdownStop <CR>", "stop markdown" },
		["<leader>mt"] = { "<cmd> MarkdownToggle <CR>", "toggle markdown" },
	},
}

M.venn = {
	n = {
		["vn"] = {
			function()
				require("custom.plugins.venn").toggle_maps()
			end,
			"toggle venn mappings",
		},
	},
}

M.truzen = {
	n = {
		["<leader>ta"] = { "<cmd> TZAtaraxis <CR>", "truzen ataraxis" },
		["<leader>tm"] = { "<cmd> TZMinimalist <CR>", "truzen minimal" },
		["<leader>tf"] = { "<cmd> TZFocus <CR>", "truzen focus" },
	},
}

M.treesitter = {
	n = {
		["<leader>cu"] = { "<cmd> TSCaptureUnderCursor <CR>", "find media" },
	},
}

M.shade = {
	n = {
		["<leader>s"] = {
			function()
				require("shade").toggle()
			end,

			"toggle shade.nvim",
		},
	},
}

M.navigation = {
	n = {
		["H"] = { "^", "beginning of line" },
		["L"] = { "$", "end of line" },
	},
}

M.gitsigns = {
	v = {
		["<leader>hs"] = { ":Gitsigns stage_hunk<CR>" },
		["<leader>hr"] = { ":Gitsigns reset_hunk<CR>" },
	},

	n = {
		["<leader>hs"] = { ":Gitsigns stage_hunk<CR>" },
		["<leader>hr"] = { ":Gitsigns reset_hunk<CR>" },
		["<leader>hS"] = { "<cmd>Gitsigns stage_buffer<CR>" },
		["<leader>hu"] = { "<cmd>Gitsigns undo_stage_hunk<CR>" },
		["<leader>hR"] = { "<cmd>Gitsigns reset_buffer<CR>" },
		["<leader>hp"] = { "<cmd>Gitsigns preview_hunk<CR>" },
		["<leader>tb"] = { "<cmd>Gitsigns toggle_current_line_blame<CR>" },
		["<leader>hd"] = { "<cmd>Gitsigns diffthis<CR>" },
		["<leader>td"] = { "<cmd>Gitsigns toggle_deleted<CR>" },
	},

	i = {
		["ih"] = { ":<C-U>Gitsigns select_hunk<CR>" },
	},
	o = {
		["ih"] = { ":<C-U>Gitsigns select_hunk<CR>" },
	},
}

return M
