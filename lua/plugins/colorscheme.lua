return {
  {
    "AlphaTechnolog/pywal.nvim",
    name = "pywal",
    priority = 1000,
    config = function()
      local pywal = require("pywal")
      pywal.setup({

        transparent_background = true, 
      })
      vim.cmd.colorscheme "pywal"

      local groups = {
        "Normal",
        "NormalFloat",
        "FloatBorder",
        "TelescopeNormal",
        "TelescopeBorder",
        "NvimTreeNormal",
        "LineNr",
        "CursorLineNr",
        "SignColumn"
      }

      for _, group in ipairs(groups) do
        vim.api.nvim_set_hl(0, group, { bg = "none", ctermbg = "none" })
      end
    end,
  }
}
