-- Normal mode kmaps
M = {}

local opts = { noremap = true, silent = true }
local nkmap = vim.keymap.set
-- Control key --

-- Tabs --

-- TODO: cambiar rapido entre pestañas de manera normal con c-1,2,3,4 si no se puede con control no hacerlo
-- nkmap("n", "q", "<cmd>Telescope buffers<cr>:normal Control t", opts)
-- nkmap("n", "q", "<cmd>Telescope buffers<cr>:normal j", opts)
-- nkmap("n","<c-2>","<cmd><cr>a",opts)
-- nkmap("n","<c-3>","<cmd><cr>b",opts)
-- nkmap("n","<c-4>","<cmd><cr>d",opts)


nkmap("n", "<c-w>", "<cmd>BufferKill<cr>", opts)

-- tab nueva
nkmap("n", "<c-t>", "<cmd>vsplit tabnew<cr>", opts)
nkmap("n", "<c-n>", "<cmd>tabnew<cr>", opts)

-- Better window navigation
nkmap("n", "<c-h>", "<C-w>h", opts)
nkmap("n", "<c-j>", "<C-w>j", opts)
nkmap("n", "<c-k>", "<C-w>k", opts)
nkmap("n", "<c-l>", "<C-w>l", opts)

nkmap("n", "<C-Space>", "<cmd>WhichKey \\<space><cr>", opts)
-- nkmap("n", "<C-i>", ":<cr>", opts)

-- Resize with arrows
nkmap("n", "<C-Up>", ":resize -2<CR>", opts)
nkmap("n", "<C-Down>", ":resize +2<CR>", opts)
nkmap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
nkmap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

nkmap("n", "<C-z>", "<cmd>ZenMode<cr>", opts)

nkmap("n", "<C-s>", ":w<cr>", opts)

nkmap("n", "<c-p>", "<cmd>ChatGPT<cr>", opts)
-- Control key --


-- Alt key --

-- copy|expand line up&down
nkmap("n", "<m-J>", "yyp", opts)
nkmap("n", "<m-K>", "yyP", opts)

-- Better tabs/buffers navigation
nkmap("n", "<m-tab>", "<c-6>", opts)

nkmap("n", "<m-v>", "<cmd>lua require('lsp_lines').toggle()<cr>", opts)

-- nkmap("n", "<m-/>", "<cmd>lua require('Comment.api').toggle_current_linewise()<CR>", opts)

nkmap("n", "<m-q>", ":call QuickFixToggle()<cr>", opts)

nkmap("n", "<m-h>", "<Plug>(CybuPrev)", opts)
nkmap("n", "<m-l>", "<Plug>(CybuNext)", opts)




nkmap("n", "<m-r>", ":silent only | Jaq<cr>", opts)

--lab
nkmap("n", "<m-4>", ":Lab code run<cr>", opts)
nkmap("n", "<m-5>", ":Lab code stop<cr>", opts)
nkmap("n", "<m-6>", ":Lab code panel<cr>", opts)

-- portal (jumping between buffers history)
nkmap("n", "<m-i>", "<cmd> Portal jumplist backward<cr>", opts)
nkmap("n", "<m-o>", "<cmd> Portal jumplist forward<cr>", opts)

-- intentar ir adelante y atras en el salto de manera inmediata para moverme en los documentos de manera mas rapida justo como en nvim original con solo lua desde scratch el vim normal
-- nkmap("n", "<c-o>", "<cmd> Portal jumplist backward<cr>:normal j <cr>", opts)
-- nkmap("n", "<c-O>", "<cmd> Portal jumplist forward<cr>j", opts)
-- Alt key --


-- Silent key --

-- nvim-treetoggle
nkmap("n", "<F2>", "<cmd>NvimTreeToggle<cr>,opt")

-- ending line manipulating
nkmap("n", "¿", "$", opts)
nkmap("n", "d¿", "ld$", opts)
nkmap("n", "y¿", "y$", opts)
nkmap("n", "c¿", "c$", opts)

nkmap("n", "Q", "<cmd>Bdelete!<CR>", opts)

nkmap("n", "-", ":lua require'lir.float'.toggle()<cr>", opts)
nkmap("n", "ge", [[:silent execute '!subl ' . shellescape(expand('<cfile>'), 1)<CR>]], opts)
nkmap("n", "gx", [[:silent execute '!$BROWSER ' . shellescape(expand('<cfile>'), 1)<CR>]], opts)
nkmap("n", "<F7>", "<cmd>TSHighlightCapturesUnderCursor<cr>", opts)

nkmap(
  "n",
  "<F6>",
  [[:echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>]]
  ,
  opts
)

nkmap("n", "<F11>", "<esc><cmd>w<cr>:TermExec cmd='clear; java %'<cr> ", opts) --run-in java

-- hop
nkmap("n", "L", ":HopWordCurrentLine<cr>", { silent = true })
nkmap("n", "H", ":HopChar2<cr>", { silent = true })

-- Silent key --

return M
