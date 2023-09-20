-- winbar/statusline plugin that shows your current code context. Breadcrums for code.
-- https://github.com/SmiteshP/nvim-navic
return   {
  "SmiteshP/nvim-navic",
  dependencies = { "neovim/nvim-lspconfig" },
  config = function()
    require("nvim-navic").setup()
  end
}