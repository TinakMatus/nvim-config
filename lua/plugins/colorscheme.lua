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
        "Normal", "NormalFloat", "FloatBorder", "TelescopeNormal", "TelescopeBorder", 
        "NvimTreeNormal", "LineNr", "CursorLineNr", "SignColumn",
        "StatusLine", "StatusLineNC", "MsgArea", "WinSeparator",
        "MiniStatuslineModeNormal",
        "MiniStatuslineModeInsert",
        "MiniStatuslineModeVisual",
        "MiniStatuslineModeReplace",
        "MiniStatuslineModeCommand",
        "MiniStatuslineModeOther",
      }

      for _, group in ipairs(groups) do
        vim.api.nvim_set_hl(0, group, { bg = "none", ctermbg = "none" }) 
      end

      vim.api.nvim_set_hl(0, "MiniStatuslineModeNormal", { ctermfg = 15, bold = true })
      vim.api.nvim_set_hl(0, "MiniStatuslineModeInsert", { ctermfg = 11, bold = true })
      vim.api.nvim_set_hl(0, "MiniStatuslineModeVisual", { ctermfg = 13, bold = true })
    end,
  }
}
