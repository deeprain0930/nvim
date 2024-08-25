return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	config = function()
		local treesitter = require("nvim-treesitter.configs")

		treesitter.setup({
            sync_install = true,
            ignore_install = { "" },
            auto_install = true,
            modules = {},
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			indent = { enable = false },
			autotag = {
				enable = true,
			},
			ensure_installed = {
				"json",
				"javascript",
				"typescript",
				"tsx",
				"yaml",
				"html",
				"css",
				"markdown",
				"markdown_inline",
				"bash",
				"lua",
				"vim",
				"dockerfile",
				"gitignore",
				"c",
				"rust",
                "go",
                "cpp",
                "python",
                "cmake",
                "lua",
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = '+',
					node_incremental = '+',
					scope_incremental = '-',
					node_decremental = "_",
				},
			},
			rainbow = {
				enable = true,
				extended_mode = true,
			},
			context_commentstring = {
				enable = true,
				enable_autocmd = false,
			},
		})
	end,
}
