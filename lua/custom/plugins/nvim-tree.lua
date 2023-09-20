-- https://github.com/nvim-tree/nvim-tree.lua
return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = { "BufRead", "BufWinEnter", "BufNewFile" },
  config = function()
    require("nvim-tree").setup()
  end
}
