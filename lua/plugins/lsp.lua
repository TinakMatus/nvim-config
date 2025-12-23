return {
  {
    "neovim/nvim-lspconfig",
    dependencies = { "folke/lazydev.nvim" },
    config = function()
      require("lazydev").setup()
      vim.lsp.enable("lua_ls")
      vim.lsp.enable("pyright")
    end,
  }
}
