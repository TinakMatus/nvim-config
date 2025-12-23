return {
  {
    "neovim/nvim-lspconfig",
    dependencies = { "folke/lazydev.nvim" },
    config = function()
      require("lazydev").setup()
      vim.lsp.enable("lua_ls")
    end,
  }
}
