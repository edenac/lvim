lvim.format_on_save = true

-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
-- lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false
-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true


-- set a formatter, this will override the language server formatting capabilities (if it exists)
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { command = "google_java_format", filetypes = { "java" } },
}

require("user.plugins")
require("user.options")

-- kmaps
require("user.keymaps")
require("user.hotkmaps")
require("user.nkmaps")
require("user.ikmaps")
require("user.vkmaps")
require("user.tkmaps")
require("user.whichkey")
-- kmaps

require("user.autocommands")
require("user.lsp")
require("user.neoscroll")
require("user.harpoon")
require("user.cybu")
require("user.surround")
require("user.bookmark")
require("user.todo-comments")
require("user.jaq")
require("user.lab")
require("user.git")
require("user.zen-mode")
require("user.inlay-hints")
require("user.telescope")
require("user.bqf")
require("user.dial")
require("user.numb")
require("user.treesitter")
require("user.colorizer")
require("user.hop")
require("user.fidget")
require("user.lualine")
require("user.icons")
-- require("user.nvimtree") --tratando de quitar la e del menu
