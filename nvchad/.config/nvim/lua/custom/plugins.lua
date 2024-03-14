local plugins = {
	-- OVERRIDING DEFAULTS --
	{
		"williamboman/mason.nvim",
		opts = require("custom.configs.mason"),
		dependencies = { "williamboman/mason-lspconfig.nvim" },
	},
	{
		"nvim-treesitter/nvim-treesitter",
		opts = require("custom.configs.treesitter"),
	},
	{
		"nvim-telescope/telescope.nvim",
		opts = require("custom.configs.telescope"),
	},
	{
		"nvim-tree/nvim-tree.lua",
		opts = require("custom.configs.nvimtree"),
	},

	-- SETTING UP LANGUAGE SERVERS --
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("plugins.configs.lspconfig")
			require("custom.configs.lspconfig")
		end,
	},

	-- AUTO-FORMATTING --
	{
		"stevearc/conform.nvim",
		event = { "BufWritePre", "BufNewFile" },
		config = function()
			require("custom.configs.conform")
		end,
	},

	-- LINTING --
	{
		"mfussenegger/nvim-lint",
		opts = require("custom.configs.nvimlint"),
	},

	-- CUSTOM --
	{
		"folke/flash.nvim",
		event = "VeryLazy",
		vscode = true,
	},
	{
		"folke/persistence.nvim",
		event = "BufReadPre",
		opts = { options = vim.opt.sessionoptions:get() },
	},
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		event = { "BufReadPost" },
		config = true,
		opts = require("custom.configs.todocomments"),
	},
	{
		"RRethy/vim-illuminate",
		opts = require("custom.configs.illuminate"),
	},
	{
		"wakatime/vim-wakatime",
		event = "VeryLazy",
	},
	{
		"nvim-neorg/neorg",
		build = ":Neorg sync-parsers",
		ft = "norg",
		cmd = "Neorg",
		opts = require("custom.configs.neorg"),
		dependencies = {
			{ "nvim-lua/plenary.nvim" },
			{ dir = "$HOME/code/projects/list_colors" }, -- custom module testing
		},
	},
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		ft = { "markdown" },
		build = function()
			vim.fn["mkdp#util#install"]()
		end,
	},
	{
		"echasnovski/mini.indentscope",
		version = false, -- wait till new 0.7.0 release to put it back on semver
		lazy = false,
		opts = {
			-- symbol = "▏",
			symbol = "│",
			options = { try_as_border = true },
		},
		init = function()
			vim.api.nvim_create_autocmd("FileType", {
				pattern = {
					"help",
					"alpha",
					"dashboard",
					"neo-tree",
					"Trouble",
					"trouble",
					"lazy",
					"mason",
					"notify",
					"toggleterm",
					"lazyterm",
				},
				callback = function()
					vim.b.miniindentscope_disable = true
				end,
			})
		end,
	},
	{
		"nvim-lua/plenary.nvim",
		lazy = true,
	},
}

return plugins
