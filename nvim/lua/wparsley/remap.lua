vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- <leader>p to paste without copying deleted text
vim.keymap.set("x", "<leader>p", [["_dP]])

-- <leader>y to yank text to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
-- <leader>d deletes without copying text
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- dunno what the Q key does in normal mode but apparently it sucks
-- so we send it to the void
vim.keymap.set("n", "Q", "<nop>")

-- <leader>s starts find/replacing the word under your cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- <leader> <leader> runs :so
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
