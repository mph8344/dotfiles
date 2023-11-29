-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')

-- New tab
keymap.set("n", "te", ":tabedit")
keymap.set("n", "tc", ":tabclose<Return>")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

keymap.set("n", "<leader><Left>", "<C-w>h")
keymap.set("n", "<leader><Up>", "<C-w>k")
keymap.set("n", "<leader><Down>", "<C-w>j")
keymap.set("n", "<leader><Right>", "<C-w>l")

-- Quick exit all
keymap.set("n", "<leader><C-r>", ":xa")

-- Change Buffers
keymap.set("n", "<C-b>", ":bp<Return>", opts)
keymap.set("n", "<C-n>", ":bn<Return>", opts)
