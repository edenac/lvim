-- last option (needed)
lvim.builtin.treesitter.ignore_install = { "haskell" }

-- rules
reload("user.options")
reload("user.plugins")
-- -- rules

-- -- kmaps
reload("user.keymaps")
reload("user.hotkmaps")
reload("user.nkmaps")
reload("user.ikmaps")
reload("user.vkmaps")
reload("user.tkmaps")
reload("user.whichkey")
-- -- kmaps

-- -- plugins-mods
reload("user.autocommands")
reload("user.lsp")
reload("user.smoothie")
reload("user.harpoon")
reload("user.cybu")
reload("user.surround")
reload("user.bookmark")
reload("user.todo-comments")
reload("user.jaq")
reload("user.fidget")
reload("user.lab")
reload("user.git")
reload("user.zen-mode")
reload("user.inlay-hints")
reload("user.telescope")
reload("user.bqf")
reload("user.dial")
reload("user.numb")
reload("user.treesitter")
reload("user.neogit")
reload("user.colorizer")
reload("user.lualine")
reload("user.scrollbar")
reload("user.chatgpt")
reload("user.hop")
reload("user.icons")
reload("user.neoscroll")
-- reload("user.live-server")

-- plugins-mods

-- reading after plugins-mods loaded (needed)
-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "jdtls" }) -- this is in ftplugin/java
