-- Additional Plugins
-- Using Packer:
lvim.plugins = {
  "sharkdp/fd",
  "nvim-treesitter/playground",
  "nvim-treesitter/nvim-treesitter-textobjects",
  -- "p00f/nvim-ts-rainbow",
  "karb94/neoscroll.nvim",
  "opalmay/vim-smoothie",
  "j-hui/fidget.nvim",
  "windwp/nvim-ts-autotag",
  "kylechui/nvim-surround",
  "MattesGroeger/vim-bookmarks",
  "NvChad/nvim-colorizer.lua",
  "ghillb/cybu.nvim",
  "moll/vim-bbye",
  "folke/todo-comments.nvim",
  "windwp/nvim-spectre",
  "mattn/vim-gist",
  "mattn/webapi-vim",
  "folke/zen-mode.nvim",
  "lvimuser/lsp-inlayhints.nvim",
  "lunarvim/darkplus.nvim",
  "lunarvim/templeos.nvim",
  "kevinhwang91/nvim-bqf",
  "is0n/jaq-nvim",
  "ggandor/leap.nvim",
  "nacro90/numb.nvim",
  "sindrets/diffview.nvim",
  "simrat39/rust-tools.nvim",
  "olexsmir/gopher.nvim",
  "leoluz/nvim-dap-go",
  "mfussenegger/nvim-dap-python",
  "jose-elias-alvarez/typescript.nvim",
  "phaazon/hop.nvim",
  "mxsdev/nvim-dap-vscode-js",
  "TimUntersberger/neogit",
  "ruifm/gitlinker.nvim",
  "monaqa/dial.nvim",
  "petertriho/nvim-scrollbar",
  "MunifTanjim/nui.nvim",
  "jackMort/ChatGPT.nvim",
  "renerocksai/telekasten.nvim",
  "cbochs/grapple.nvim",
  "cbochs/portal.nvim",
  "ThePrimeagen/harpoon",
  {
    "christianchiarulli/telescope-tabs",
    branch = "chris"
  },
  "monaqa/dial.nvim",
  {
    "0x100101/lab.nvim",
    build = "cd js && npm ci",
  },
  {
    "jinh0/eyeliner.nvim",
    config = function()
      require("eyeliner").setup {
        highlight_on_key = true,
      }
    end,
  },
  {
    "saecki/crates.nvim",
    version = "v0.3.0",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("crates").setup {
        null_ls = {
          enabled = true,
          name = "crates.nvim",
        },
      }
    end,
  },
  {
    url = "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
    config = function()
      require("lsp_lines").setup()
    end,
  },
  {
    "folke/noice.nvim",
    config = function()
      require("noice").setup{}
    end,
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
      }
  },
  {
    'barrett-ruth/live-server.nvim',
    config = true
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
  },
}
