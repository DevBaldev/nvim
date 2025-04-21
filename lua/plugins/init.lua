return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "fish",
        "python",
        "vim",
        "lua",
        "vimdoc",
        "c",
        "cpp",
        "rust",
        "html",
        "markdown",
      },
    },
  },

  {
    "mrcjkb/rustaceanvim",
    version = "^6",
    lazy = true,
  },
}
