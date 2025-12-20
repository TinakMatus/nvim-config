return {
  {
    "sainnhe/everforest",
    lazy = false,
    priority = 1000,
    config = function()
      -- Choice of 'soft', 'medium', or 'hard'
      vim.g.everforest_background = "soft" 
      -- Better contrast for Treesitter
      vim.g.everforest_better_performance = 1
      
      -- Tell Neovim we want the light version
      vim.opt.background = "dark"
      
      vim.cmd([[colorscheme everforest]])
    end,
  },
}
