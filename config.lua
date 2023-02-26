lvim.builtin.treesitter.ignore_install = { "haskell" }
-- rules
require("user.plugins")
require("user.options")
-- rules

-- kmaps
require("user.keymaps")
require("user.hotkmaps")
require("user.nkmaps")
require("user.ikmaps")
require("user.vkmaps")
require("user.tkmaps")
require("user.whichkey")
-- kmaps

-- plugins-mods
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
-- plugins-mods

-- reading after plugins loaded
lvim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "jdtls" })
