-- Additional Plugins
lvim.plugins = {
  -- Using Packer:
 {
    "cbochs/portal.nvim",
    config = function()
        require("portal").setup()
    end,
    requires = {
        "cbochs/grapple.nvim",  -- Optional: provides the "grapple" query item
        "ThePrimeagen/harpoon", -- Optional: provides the "harpoon" query item
    },
  },
  "ellisonleao/gruvbox.nvim",
  "sharkdp/fd",
  'Mofiqul/dracula.nvim',
  "nvim-treesitter/playground",
  "nvim-treesitter/nvim-treesitter-textobjects",
  "p00f/nvim-ts-rainbow",
  "mfussenegger/nvim-jdtls",
  "karb94/neoscroll.nvim",
  "j-hui/fidget.nvim",
  "windwp/nvim-ts-autotag",
  "kylechui/nvim-surround",
  "christianchiarulli/harpoon",
  "MattesGroeger/vim-bookmarks",
  "NvChad/nvim-colorizer.lua",
  "ghillb/cybu.nvim",
  "moll/vim-bbye",
  "folke/todo-comments.nvim",
  "windwp/nvim-spectre",
  "f-person/git-blame.nvim",
  "ruifm/gitlinker.nvim",
  "mattn/vim-gist",
  "mattn/webapi-vim",
  "folke/zen-mode.nvim",
  "lvimuser/lsp-inlayhints.nvim",
  "lunarvim/darkplus.nvim",
  "lunarvim/templeos.nvim",
  "kevinhwang91/nvim-bqf",
  "is0n/jaq-nvim",
  "hrsh7th/cmp-emoji",
  "ggandor/leap.nvim",
  "nacro90/numb.nvim",
  "TimUntersberger/neogit",
  "sindrets/diffview.nvim",
  "simrat39/rust-tools.nvim",
  "olexsmir/gopher.nvim",
  "leoluz/nvim-dap-go",
  "mfussenegger/nvim-dap-python",
  "jose-elias-alvarez/typescript.nvim",
  "mxsdev/nvim-dap-vscode-js",
  {
    "saecki/crates.nvim",
    tag = "v0.3.0",
    requires = { "nvim-lua/plenary.nvim" },
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
    "jinh0/eyeliner.nvim",
    config = function()
      require("eyeliner").setup {
        highlight_on_key = true,
      }
    end,
  },
  { "christianchiarulli/telescope-tabs", branch = "chris" },
  "monaqa/dial.nvim",
  {
    "0x100101/lab.nvim",
    run = "cd js && npm ci",
  },
  { "tzachar/cmp-tabnine", run = "./install.sh" },
  {
    "zbirenbaum/copilot.lua",
    event = { "VimEnter" },
    config = function()
      vim.defer_fn(function()
        require("copilot").setup {
          plugin_manager_path = os.getenv "LUNARVIM_RUNTIME_DIR" .. "/site/pack/packer",
        }
      end, 100)
    end,
  },
  {
    "zbirenbaum/copilot-cmp",
    after = { "copilot.lua" },
    config = function()
      require("copilot_cmp").setup()
    end,
  },
  {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  },
  {
    "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
    config = function()
      require("lsp_lines").setup()
    end,
  },

  -- 'https://github.com/terryma/vim-multiple-cursors', --" CTRL + N for multiple cursors:
  "phaazon/hop.nvim",
  -- Packer
  {
    "folke/noice.nvim",
    event = "VimEnter",
    config = function()
      require("noice").setup()
    end,
    requires = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
    },
  }, -- https://github.com/jose-elias-alvarez/typescript.nvim
  -- "rmagatti/auto-session",
  -- "rmagatti/session-lens"
  -- "wesQ3/vim-windowswap"
}
