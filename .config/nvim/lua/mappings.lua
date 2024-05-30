require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<C-h>", "<cmd>TmuxNavigateLeft<cr>", { silent = true, noremap = true })
map("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>", { silent = true, noremap = true })
map("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>", { silent = true, noremap = true })
map("n", "<C-l>", "<cmd>TmuxNavigateRight<cr>", { silent = true, noremap = true })
map("n", "<C-\\>", "<cmd>TmuxNavigatePrevious<cr>", { silent = true, noremap = true })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

