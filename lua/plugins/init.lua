	return {

	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.4",

		dependencies = {
			"ThePrimeagen/harpoon",
			"nvim-lua/plenary.nvim",
			"joshmedeski/telescope-smart-goto.nvim",
			"sharkdp/fd",
			"nvim-treesitter/nvim-treesitter",
			"debugloop/telescope-undo.nvim",
			"AckslD/nvim-neoclip.lua",
			"junegunn/fzf",
		},
	},

	"folke/which-key.nvim",
	{ "folke/neoconf.nvim", cmd = "Neoconf" }, --Whichkey
	"folke/neodev.nvim",
	"stevearc/dressing.nvim",
	{ "nvim-telescope/telescope-fzf-native.nvim", run = "make" },
	"rhysd/vim-clang-format",
	{ "nvim-telescope/telescope-live-grep-args.nvim" },
	"tpope/vim-commentary",
	{ "omnisharp-roslyn", "OmniSharp/omnisharp-vim" },
}
