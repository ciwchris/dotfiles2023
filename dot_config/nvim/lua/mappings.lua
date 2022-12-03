--Saving
vim.api.nvim_set_keymap("n", "<leader>w", ":w!<cr>", { noremap = true})
--Unloading buffer
vim.api.nvim_set_keymap("n", "<leader>d", ":bd!<cr>", { noremap = true})
--Spell
vim.api.nvim_set_keymap("n", "<leader>sn", "]s", {})
vim.api.nvim_set_keymap("n", "<leader>sp", "[s", {})
vim.api.nvim_set_keymap("n", "<leader>sa", "zg", {})
vim.api.nvim_set_keymap("n", "<leader>s?", "z=", {})

--Copy and paste
vim.api.nvim_set_keymap("v", "<leader>y", '"*y', {})
vim.api.nvim_set_keymap("v", "<leader>d", '"*d', {})
vim.api.nvim_set_keymap("v", "<leader>p", '"*p', {})

