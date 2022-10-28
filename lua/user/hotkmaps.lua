M = {}

local opts = { noremap = true, silent = true }
local hkeymap = vim.keymap.set
hkeymap("n", ",w", "<cmd>w<cr>", opts)
hkeymap("n", ",q", "<cmd>q<cr>", opts)
hkeymap("n", ",a", "<cmd>wq<cr>", opts)
hkeymap("n", ",y", "<cmd>history<cr>", opts)
hkeymap("n", ",;", "<cmd>Alpha<cr>", opts)
hkeymap("n", ",e", "<cmd>NvimTreeToggle<cr>", opts)
hkeymap("n", ",W", "<cmd>wq!<cr>", opts)
hkeymap("n", ",Q", "<cmd>q!<cr>", opts)
hkeymap("n", ",s", ":lcd %:p:h<cr>:saveas ", opts)

return M
