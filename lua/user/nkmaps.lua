-- Normal mode kmaps
M = {}

local opts = { noremap = true, silent = true }
local nkmap = vim.keymap.set

-- Control key --

-- Tabs --

-- TODO: Hacer comandos para cambiar rapido entre pestañas de manera normal
-- keymap("n","<c-1>","<cmd>BufferLinePick<cr>c",opts)
-- keymap("n","<c-2>","<cmd>BufferLinePick<cr>a",opts)
-- keymap("n","<c-3>","<cmd>BufferLinePick<cr>b",opts)
-- keymap("n","<c-4>","<cmd>BufferLinePick<cr>d",opts)


-- tab nueva
nkmap("n", "<c-t>", "<cmd>vsplit tabnew<cr>", opts)
nkmap("n", "<c-n>", "<cmd>tabnew<cr>", opts)

-- Better window navigation
nkmap("n", "<c-h>", "<C-w>h", opts)
nkmap("n", "<c-j>", "<C-w>j", opts)
nkmap("n", "<c-k>", "<C-w>k", opts)
nkmap("n", "<c-l>", "<C-w>l", opts)

nkmap("n", "<C-Space>", "<cmd>WhichKey \\<space><cr>", opts)
nkmap("n", "<C-i>", ":<cr>", opts)

-- Resize with arrows
nkmap("n", "<C-Up>", ":resize -2<CR>", opts)
nkmap("n", "<C-Down>", ":resize +2<CR>", opts)
nkmap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
nkmap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

nkmap("n", "<C-z>", "<cmd>ZenMode<cr>", opts)

-- Control key --


-- Alt key --

-- copy|expand line up&down
nkmap("n", "<m-J>", "yyp", opts)
nkmap("n", "<m-K>", "yyP", opts)

-- Better tabs/buffers navigation
nkmap("n", "<m-tab>", "<c-6>", opts)

nkmap("n", "<m-v>", "<cmd>lua require('lsp_lines').toggle()<cr>", opts)

nkmap("n", "<m-/>", "<cmd>lua require('Comment.api').toggle_current_linewise()<CR>", opts)

nkmap("n", "<m-q>", ":call QuickFixToggle()<cr>", opts)

-- Alt key --


-- Silent key --

-- nvim-treetoggle
nkmap("n", "<F2>", "<cmd>NvimTreeToggle<cr>,opt")

-- ending line manipulating
nkmap("n", "¿", "$", opts)
nkmap("n", "d¿", "ld$", opts)
nkmap("n", "y¿", "y$", opts)

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

-- Silent key --

return M
