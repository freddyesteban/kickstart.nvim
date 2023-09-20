-- https://github.com/akinsho/toggleterm.nvim
return {
  "akinsho/toggleterm.nvim",
  version = "*",
  branch = "main",
  config = function ()
    require("toggleterm").setup({
      open_mapping = [[<c-\>]],
    })
  end
}
