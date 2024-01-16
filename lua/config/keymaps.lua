-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Util = require("lazyvim.util")

-- undo tree
vim.keymap.set("n", "<leader>U", vim.cmd.UndotreeToggle, { desc = "Undo Tree" })

-- move blocks of text up/down in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep cursor at same place when using 'J'
vim.keymap.set("n", "J", "mzJ`z")

-- keep curse in middle when doing big jumps up and down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- keep search results in middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- overrides lazyvim formatting command
vim.keymap.set({ "n", "v" }, "<C-f>", function()
    Util.format({ force = true })
end, { desc = "Format (Override)" })

-- overrides commenting code
vim.keymap.set("n", "<C-/>", "gcc", { remap = true, silent = true, desc = "Comment line" })
vim.keymap.set("i", "<C-/>", "<Esc>gccA<Space>", { remap = true, silent = true, desc = "Comment line" })
vim.keymap.set("x", "<C-/>", "gc", { remap = true, silent = true, desc = "Comment selection" })
