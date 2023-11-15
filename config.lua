-- last option (needed)
lvim.builtin.treesitter.ignore_install = { "haskell" }

-- rules
reload("user.options")
reload("user.plugins")
-- -- rules

-- -- kmaps
reload("user.hotkmaps")
reload("user.ikmaps")
reload("user.keymaps")
reload("user.nkmaps")
reload("user.tkmaps")
reload("user.vkmaps")
reload("user.whichkey")
-- -- kmaps

-- -- plugins-mods
reload("user.autocommands")
reload("user.bookmark")
reload("user.bqf")
reload("user.chatgpt")
reload("user.colorizer")
reload("user.cybu")
reload("user.dial")
reload("user.fidget")
reload("user.git")
reload("user.harpoon")
reload("user.hop")
reload("user.icons")
reload("user.inlay-hints")
reload("user.jaq")
reload("user.lab")
reload("user.lsp")
reload("user.lualine")
reload("user.neogit")
reload("user.neoscroll")
reload("user.numb")
reload("user.scrollbar")
reload("user.smoothie")
reload("user.surround")
reload("user.telescope")
reload("user.todo-comments")
reload("user.treesitter")
reload("user.zen-mode")

-- plugins-mods

-- reading after plugins-mods loaded (needed)
-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "jdtls" }) -- this is in ftplugin/java
