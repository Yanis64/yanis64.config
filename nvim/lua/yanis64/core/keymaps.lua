vim.g.mapleader = " "

local keymap = vim.keymap -- for concieness

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
