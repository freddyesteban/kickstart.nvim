-- A snazzy buffer line (with tabpage integration) for Neovim built using lua. Buffers as tabs.
-- https://github.com/akinsho/bufferline.nvim
return {
  "akinsho/bufferline.nvim",
  branch = "main",
  event = { "BufRead", "BufWinEnter", "BufNewFile" },
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("bufferline").setup({
      options = {
        indicator = {
            style = 'underline',
        },
        offsets = {
          {
            filetype = "undotree",
            text = "Undotree",
            highlight = "PanelHeading",
            padding = 1,
          },
          {
            filetype = "NvimTree",
            text = "Explorer",
            highlight = "PanelHeading",
            padding = 1,
          },
          {
            filetype = "DiffviewFiles",
            text = "Diff View",
            highlight = "PanelHeading",
            padding = 1,
          },
          {
            filetype = "flutterToolsOutline",
            text = "Flutter Outline",
            highlight = "PanelHeading",
          },
          {
            filetype = "lazy",
            text = "Lazy",
            highlight = "PanelHeading",
            padding = 1,
          },
        }
      }
    })
  end
}
