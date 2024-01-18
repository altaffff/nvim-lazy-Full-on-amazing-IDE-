return {
	"mfussenegger/nvim-lint",
	"sonarlint-language-server",

	lazy = true,
	event = { "BufReadPre", "BufNewFile" }, -- to disable, comment this out
	config = function()
		local lint = require("lint")

		lint.linters_by_ft = {
			typescript = { "eslint_d" },
			svelte = { "eslint_d" },

			csharp = { "omnisharp", "csharpier", "sonarlint-language-server" },
			json = { "eslint", "fixjson" },
			jsonc = { "eslint", "fixjson" },
			sh = { "shellcheck", "shfmt" },
			css = { "prettier_d" },
			c = { "clangformat", "cpplint" },
			cpp = { "cpplint", "sonarlint-language-server" },
		}

		local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
			group = lint_augroup,
			callback = function()
				lint.try_lint()
			end,
		})

		vim.keymap.set("n", "<leader>l", function()
			lint.try_lint()
		end, { desc = "Trigger linting for current file" })
	end,
}
