-- Status line and bufferline - https://github.com/nvim-lualine/lualine.nvim
return   {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup({
      winbar = {
        lualine_c = {
          {
              "navic",
              color_correction = nil,
              navic_opts = nil
          }
        }
      }
    })
  end
}