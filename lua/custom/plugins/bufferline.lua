-- https://github.com/akinsho/bufferline.nvim
return {
  "akinsho/bufferline.nvim",
  version = "main",
  event = { "BufRead", "BufWinEnter", "BufNewFile" },
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("bufferline").setup()
  end
}