return {
  {
    "neovim/nvim-lspconfig",
    dependencies = { "folke/lazydev.nvim" },
    config = function()

      vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { fg = "#FF0000", bold = true })
      vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { fg = "#FFA500" })
      vim.api.nvim_set_hl(0, "DiagnosticError", { fg = "#FF0000" })


      require("lazydev").setup()

      vim.diagnostic.config({
        virtual_text = {
          prefix = '●',
        },
        signs = true,
        underline = true,
        update_in_insert = true,
      })

      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          vim.lsp.completion.enable(true, args.data.client_id)
        end,
      })

      vim.lsp.enable("lua_ls")
      vim.lsp.enable("pyright")
      vim.lsp.enable("clangd")
    end,
  }
}


