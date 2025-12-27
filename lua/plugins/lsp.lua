return {
  {
    "neovim/nvim-lspconfig",
    dependencies = { "folke/lazydev.nvim" },
    config = function()
      vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { ctermfg = 9, bold = true, bg = "none" })
      vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { ctermfg = 11, bg = "none" })
      vim.api.nvim_set_hl(0, "DiagnosticError", { ctermfg = 9, bg = "none" })
      
      vim.api.nvim_set_hl(0, "Normal", { bg = "none", ctermbg = "none" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none", ctermbg = "none" })
      vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none", ctermbg = "none" })

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
