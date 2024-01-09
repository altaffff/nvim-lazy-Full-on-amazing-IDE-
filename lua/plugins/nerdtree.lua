return {
	{
		'preservim/nerdtree',
		dependencies = {
            'Xuyuanp/nerdtree-git-plugin','ryanoasis/vim-devicons','vwxyutarooo/nerdtree-devicons-syntax' ,  'jeetsukumaran/vim-buffergator'},


		config = function()
vim.keymap.set("n","<leader>n",vim.cmd.NERDTreeFocus)
vim.keymap.set("n", "<C-n>", vim.cmd.NERDTree)
vim.keymap.set("n","<C-f>", vim.cmd.NERDTreeFind)


end


		},
}
