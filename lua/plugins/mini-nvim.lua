return {
  {
    "echasnovski/mini.nvim",
    version = false,
    config = function()
      require('mini.icons').setup()
      local statusline = require('mini.statusline')
      statusline.setup({ use_icons = true })
      require('mini.pairs').setup()
    end,
  },
}
