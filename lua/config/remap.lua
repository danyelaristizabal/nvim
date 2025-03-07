
vim.g.mapleader = " "

-- netwrc vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.api.nvim_set_keymap('n', '<leader>pv', ':Oil<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>gu', ':r !uuidgen<CR>0v$y', { noremap = true, silent = true })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

-- terminal 
vim.api.nvim_set_keymap('n', '<leader>t', ':vsplit | terminal<CR>', {noremap = true, silent = true})

-- copilotChat 
vim.api.nvim_set_keymap('n', '<leader>cp', ':CopilotChat<CR>', {noremap = true, silent = true})

-- copilotChat 
vim.api.nvim_set_keymap('n', '<leader>at', ':AvanteToggle<CR>', {noremap = true, silent = true})

-- paste and copy again to buffer  
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : copy to clipboard (took me 4 months to understand it)
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])

-- next greatest remap ever : not sure what it does 
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })


vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
