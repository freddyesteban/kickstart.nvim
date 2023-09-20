-- https://github.com/akinsho/bufferline.nvim
return {
  "akinsho/bufferline.nvim",
  version = "main",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("bufferline").setup()
  end
}