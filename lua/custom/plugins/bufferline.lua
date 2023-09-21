-- A snazzy buffer line (with tabpage integration) for Neovim built using lua. Buffers as tabs.
-- https://github.com/akinsho/bufferline.nvim
return {
  "akinsho/bufferline.nvim",
  version = "main",
  event = { "BufRead", "BufWinEnter", "BufNewFile" },
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = true
}
