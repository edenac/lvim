-- hotkmaps, fast shortcuts w/space only
M = {}

local opts = { noremap = true, silent = true }
local hkmap = vim.keymap.set

-- normal mode
hkmap("n", "<space>w", "<cmd>w<cr>", opts)
hkmap("n", "<space>q", "<cmd>q<cr>", opts)
hkmap("n", "<space>a", "<cmd>wq<cr>", opts)
hkmap("n", "<space>y", "<cmd>history<cr>", opts)
hkmap("n", "<space>;", "<cmd>Alpha<cr>", opts)
hkmap("n", "<space>e", "<cmd>NvimTreeToggle<cr>", opts)
hkmap("n", "<space>W", "<cmd>wq!<cr>", opts)
hkmap("n", "<space>Q", "<cmd>q!<cr>", opts)
hkmap("n", "<space>s", ":lcd %:p:h<cr>:saveas ", opts)
hkmap("n", "<space>c", "<cmd>BufferKill<cr>", opts)
hkmap("n", "<space>v", "<cmd>vsplit<cr>", opts)
hkmap("n", "<space>h", "<cmd>split<cr>", opts)
hkmap("n", "<space>n", "<cmd>tabnew<cr>", opts)
hkmap("n", "<space>,", "<cmd>nohlsearch<cr>", opts)
hkmap("n", "<space>g", "<cmd>lua require 'lvim.core.terminal'.lazygit_toggle()<cr>", opts)
hkmap("n", "<space>j", "<cmd>w<cr><cmd>TermExec cmd='clear; java %'<cr>", opts)
hkmap("n", "<space>t", ":TermExec cmd='clear'<cr>", opts)
hkmap("n", "<space>b", ":Bookmark<cr>", opts)

-- normal mode

return M
