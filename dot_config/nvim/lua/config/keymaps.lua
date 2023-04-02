-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "gb", "<C-O>")

-- allows you to move selected code in visual mode up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- normal "J" except your cursor stays in place
vim.keymap.set("n", "J", "mzJ`z")
-- normal <C-d/u> but stay centered
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
--normal search next but stay centered
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- when highlighting and pasting, don't lose you past buffer
vim.keymap.set("x", "<leader>p", [["_dP]])

-- system clipboard paste
--vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])

-- yank into system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- delete to void buffer
vim.keymap.set({ "n", "v" }, "x", [["_dl]], { desc = "x but delete to void buffer" })
vim.keymap.set({ "n", "v" }, "s", [["_dli]], { desc = "Delete to void buffer and insert" })
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete to void buffer" })



vim.keymap.set("n", "Q", "<nop>")
--vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
--vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
--vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

--replace word under cursor (expand this to visual highlighted)
--vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod u+x %<CR>", { silent = true, desc = "Set current buffer as executable" })

--open packer file
--vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/lua/shanconr/packer.lua<CR>");

-- WIP append , to EOL
--vim.keymap.set("n", "<leader>,", "mzg_lxa,<ESC>`z")



--telescope
local builtin = require('telescope.builtin')
vim.keymap.set("n", "<leader>fh", function() builtin.find_files({ hidden = true }) end, { desc = "Find hidden files" })
vim.keymap.set("n", "<leader>/", function() builtin.live_grep({ hidden = true }) end, { desc = "Grep hidden files" })

--harpoon

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
vim.keymap.set("n", "<leader>nvc", "<cmd>E ~/.config/nvim/<CR>", { silent = true, desc = "Open nvim config" })
vim.keymap.set("n", "<leader>rnvc", "<cmd>so ~/.config/nvim/init.lua<CR>", { silent = true, desc = "Reload nvim config" })

vim.keymap.set("n", "<leader>ja", mark.add_file, { desc = "Add file to harpoon" })
vim.keymap.set("n", "<leader>jh", ui.toggle_quick_menu, { desc = "Open harpoon list" })

vim.keymap.set("n", "<leader>jj", function()
    ui.nav_file(1)
end, { desc = "harpoon 1" })
vim.keymap.set("n", "<leader>jk", function()
    ui.nav_file(2)
end, { desc = "harpoon 2" })
vim.keymap.set("n", "<leader>jl", function()
    ui.nav_file(3)
end, { desc = "harpoon 3" })
vim.keymap.set("n", "<leader>j;", function()
    ui.nav_file(4)
end, { desc = "harpoon 4" })
