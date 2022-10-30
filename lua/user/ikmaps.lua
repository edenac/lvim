-- Insert mode ikmaps
M = {}

local opts = { noremap = true, silent = true }
local ikmap = vim.keymap.set

-- control key
ikmap("i", "<c-s>", "<esc><cmd>w<cr>a", opts)
ikmap("i", "<c-del>", "<esc>lcw", opts)
ikmap("i", "<c-s-del>", "<esc>ld$a", opts)
ikmap("i", "<c-d>", "<esc>ddO", opts)
ikmap("i", "<c-z>", "<esc>ui", opts)
ikmap("i", "<c-y>", "<esc><c-r>i", opts) -- no es exacto pero ejecuta el redo pues el cursor no mantiene la posicion una vez se ejecuta el redo
ikmap("i", "<c-q>", "<esc>:q<cr>", opts)
ikmap("i", "<c-w>", "<esc>:BufferKill<cr>", opts)

-- control key

-- alt key
ikmap("i", "<m-bs>", "<esc>ldbi", opts)
ikmap("i", "<m-0>", "<esc>ld0i", opts)
ikmap("i", "<m-'>", "<esc>:normal gcc<cr>A", opts) -- asi puedo hacer el run-java directo desde el inoremap y de cualquier lenguaj

-- alt key

-- silent key
ikmap("i", "<F11>", "<esc><cmd>w<cr>:TermExec cmd='clear; java %'<cr> ", opts) --run-in java

-- silent key
return M
