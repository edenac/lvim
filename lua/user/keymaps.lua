M = {}
lvim.leader = "space"

local opts = { noremap = true, silent = true }
-- For the description on keymaps, I have a function getOptions(desc) which returns noremap=true, silent=true and desc=desc. Then call: keymap(mode, keymap, command, getOptions("some randome desc")

local keymap = vim.keymap.set

-- TODO: Hacer comandos para cambiar rapido entre pestañas de manera normal
-- keymap("n","<c-1>","<cmd>BufferLinePick<cr>c",opts)
-- keymap("n","<c-2>","<cmd>BufferLinePick<cr>a",opts)
-- keymap("n","<c-3>","<cmd>BufferLinePick<cr>b",opts)
-- keymap("n","<c-4>","<cmd>BufferLinePick<cr>d",opts)


-- insert-mode (inoremap) kmaps
keymap("i", "<c-s>", "<esc><cmd>w<cr>a", opts)
keymap("i", "<c-del>", "<esc>lcw", opts)
keymap("i", "<c-s-del>", "<esc>ld$a", opts)
keymap("i", "<m-bs>", "<esc>d0i", opts)
keymap("i", "<c-d>", "<esc>dd", opts)
keymap("i", "<m-'>", "<esc>:normal gcc<cr>A", opts) -- asi puedo hacer el run-java directo desde el inoremap y de cualquier lenguaj
keymap("i", "<F11>", "<esc><cmd>w<cr>:TermExec cmd='clear; java %'<cr> ", opts) --run-in java


-- imap <m-bs> <C-R>=expand('')<CR> <Esc>:normal ldb<CR>i
-- copy|expand line up&down
keymap("n", "<m-J>", "yyp", opts)
keymap("n", "<m-K>", "yyP", opts)

-- ending line manipulating
keymap("n", "¿", "$", opts)
keymap("n", "d¿", "ld$", opts)
keymap("n", "y¿", "y$", opts)

-- keymap("n","<m-c>","<cmd>BufferKill<cr>",opts)
keymap("n", "<m-,>", "<cmd>nohlsearch<cr>", opts)
keymap("n", "<C-Space>", "<cmd>WhichKey \\<space><cr>", opts)
keymap("n", "<C-i>", "<C-i>", opts)

-- Normal --
-- Better window navigation
keymap("n", "<c-h>", "<C-w>h", opts)
keymap("n", "<c-j>", "<C-w>j", opts)
keymap("n", "<c-k>", "<C-w>k", opts)
keymap("n", "<c-l>", "<C-w>l", opts)
keymap("n", "<m-tab>", "<c-6>", opts)

-- Tabs --
-- keymap("n", "\\", ":tabnew %<cr>", opts)
-- keymap("n", "\\", ":tabnew %<cr>", opts)
-- keymap("n", "<s-\\>", ":tabclose<cr>", opts)
-- keymap("n", "<s-\\>", ":tabonly<cr>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

keymap("v", "p", '"_dP', opts)
-- keymap("v", "P", '"_dP', opts)

keymap("n", "Q", "<cmd>Bdelete!<CR>", opts)

keymap(
  "n",
  "<F6>",
  [[:echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>]]
  ,
  opts
)
keymap("n", "<F7>", "<cmd>TSHighlightCapturesUnderCursor<cr>", opts)
keymap("n", "<C-z>", "<cmd>ZenMode<cr>", opts)
keymap("n", "-", ":lua require'lir.float'.toggle()<cr>", opts)
keymap("n", "gx", [[:silent execute '!$BROWSER ' . shellescape(expand('<cfile>'), 1)<CR>]], opts)
keymap("n", "<m-v>", "<cmd>lua require('lsp_lines').toggle()<cr>", opts)

keymap("n", "<m-/>", "<cmd>lua require('Comment.api').toggle_current_linewise()<CR>", opts)
keymap("x", "<m-/>", '<ESC><CMD>lua require("Comment.api").toggle_linewise_op(vim.fn.visualmode())<CR>', opts)

vim.api.nvim_set_keymap(
  "n",
  "<tab>",
  "<cmd>lua require('telescope').extensions.harpoon.marks(require('telescope.themes').get_dropdown{previewer = false, initial_mode='normal', prompt_title='Harpoon'})<cr>"
  ,
  opts
)
vim.api.nvim_set_keymap(
  "n",
  "<s-tab>",
  "<cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown{previewer = false, initial_mode='normal'})<cr>"
  ,
  opts
)

vim.cmd [[
  function! QuickFixToggle()
    if empty(filter(getwininfo(), 'v:val.quickfix'))
      copen
    else
      cclose
    endif
  endfunction
]]

keymap("n", "<m-q>", ":call QuickFixToggle()<cr>", opts)

keymap("t", "<c-h>", "history<cr>", opts)
keymap("t", "<c-l>", "clear<cr>", opts)
keymap("t", "<c-j>", "<cr>", opts)
keymap("t", "<c-k>", "", opts)

M.show_documentation = function()
  local filetype = vim.bo.filetype
  if vim.tbl_contains({ "vim", "help" }, filetype) then
    vim.cmd("h " .. vim.fn.expand "<cword>")
  elseif vim.tbl_contains({ "man" }, filetype) then
    vim.cmd("Man " .. vim.fn.expand "<cword>")
  elseif vim.fn.expand "%:t" == "Cargo.toml" then
    require("crates").show_popup()
  else
    vim.lsp.buf.hover()
  end
end
vim.api.nvim_set_keymap("n", "K", ":lua require('user.keymaps').show_documentation()<CR>", opts)

return M
