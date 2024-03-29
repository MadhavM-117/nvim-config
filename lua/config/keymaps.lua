-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map({ "i", "v" }, "jk", "<Esc>", { desc = "Easy Escape from Insert Mode" })
map({ "i", "v" }, "kj", "<Esc>", { desc = "Easy Escape from Insert Mode" })
