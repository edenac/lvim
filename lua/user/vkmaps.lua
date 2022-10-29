-- Visual mode kmaps

M = {}

local opts = { noremap = true, silent = true }
local vkmap = vim.keymap.set

--Silent keys

-- Stay in indent mode
vkmap("v", "<", "<gv", opts)
vkmap("v", ">", ">gv", opts)

-- vkmap("v", "p", '"_dP', opts)
-- keymap("v", "P", '"_dP', opts)

--Silent keys

return M
