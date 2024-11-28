require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("i", "<C-l>", function()
    vim.fn.feedkeys(vim.fn["copilot#Accept"](), "")
end, { desc = "Copilot Accept", silent = true, expr = true, noremap = true })

-- From insert mode to normal mode 
local opts = { noremap = true, silent = true }
map('i', 'jj', '<Esc>', opts)

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
