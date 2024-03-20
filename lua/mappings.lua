require("nvchad.mappings")

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

map("n", "<leader>fm", function()
	require("conform").format()
end, { desc = "File Format with conform" })

map("i", "jk", "<ESC>", { desc = "Escape insert mode" })

-- ------------------------------------------------------
-- multiple modes
map({ "i" }, "<C-j>", "<Down>", { desc = "Move down" })
map({ "i" }, "<C-k>", "<Up>", { desc = "Move up" })

-- Terminals
map({ "n", "t" }, "<leader>gl", function()
	require("nvchad.term").toggle({ pos = "float", id = "floa", cmd = "lazygit" })
end, { desc = "Terminal Lazygit" })

-- Debug
map("n", "<leader>Db", "<cmd>DapToggleBreakpoint<CR>", { desc = "Toggle Breakpoint" })

-- RUST - Crates
map("n", "<leader>rc", "RUST", { desc = "RUST / Crates" })
map("n", "<leader>rcu", function()
	require("crates").upgrade_all_crates()
end, { desc = "Upgrade ALL Crates" })
