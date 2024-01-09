vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) --Open Explorer

vim.keymap.set("v", "<S-j>", ":m '>+1<CR>gv=gv") --Move The  Code Down
vim.keymap.set("v", "<S-k>", ":m '<-2<CR>gv=gv") --Move The  Code Up

vim.keymap.set("x", "<leader>p", [["_dP]]) --Copy/Paste Related

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]]) --Copy To Clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]]) --Copy Only In Within VIM

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]) --Replace Words
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true }) --Make anything executable very useful
vim.keymap.set("v", "<", "<gv^", opts) --Move Selected To Left
vim.keymap.set("v", ">", ">gv^", opts) --Move Selected To Right

vim.keymap.set("n", "<F8>", vim.cmd.ClangFormat) --Clang Formatter

-- Keep window centered when going up/down
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Keybindings Text Document
vim.cmd([[
  command! Keybindings if len(filter(range(1, bufnr('$')), 'bufexists(v:val) && buflisted(v:val) && bufname(v:val) =~ "\\v/keybindings\\.txt$"')) > 0
    \ | bdelete keybindings.txt
    \ | else
    \ | e ~/.config/nvim/lua/config/keybindings.txt
    \ | endif
]])

vim.api.nvim_set_keymap("n", "<F12>", ":Keybindings<CR>", { noremap = true })
