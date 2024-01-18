local opts = {
	ensure_installed = {

		"bashls",
		"csharp_ls",
		"solidity",
		"tailwindcss",
		"omnisharp",
		"lua_ls",
		"jsonls",
		"clangd",
	},

	automatic_installation = true,
}

return {
	"williamboman/mason-lspconfig.nvim",
	opts = opts,
	event = "BufReadPre",
	dependencies = "williamboman/mason.nvim",
}
