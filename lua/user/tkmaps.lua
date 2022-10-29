-- Terminal Mode kmaps
M = {}

local opts = { noremap = true, silent = true }
local tkmap = vim.keymap.set

-- control key

--necesary to dont close the terminal with navigation keys
tkmap("t", "<c-h>", "history<cr>", opts)
tkmap("t", "<c-l>", "clear<cr>", opts)
tkmap("t", "<c-j>", "<cr>", opts)
tkmap("t", "<c-k>", "", opts)

-- control key

return M
