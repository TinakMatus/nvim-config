return {
  {
    "AlphaTechnolog/pywal.nvim",
    name = "pywal",
    priority = 1000,
    config = function()
      local pywal = require("pywal")
      pywal.setup({
        -- This ensures Neovim NEVER paints a background color
        transparent_background = true, 
      })
      vim.cmd.colorscheme "pywal"
      
      -- FORCE transparency for everything (borders, floats, etc.)
      local groups = { "Normal", "NormalFloat", "FloatBorder", "TelescopeNormal", "TelescopeBorder", "NvimTreeNormal" }
      for _, group in ipairs(groups) do
        vim.api.nvim_set_hl(0, group, { bg = "none", ctermbg = "none" })
      end
    end,
  }
}
