local M = {}

local mappings = {
  g = {
    name = "Git",
    g = { "<cmd>lua require 'config.toggleterm'.lazygit_toggle()<cr>", "Lazygit" },
    l = { "<cmd>lua require 'gitsigns'.blame_line()<cr>", "Blame" },
    d = {
      "<cmd>Gitsigns diffthis HEAD<cr>",
      "Git Diff",
    },
  },
}


local opts = {
  mode = "n", -- NORMAL mode
  prefix = "<leader>",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = true, -- use `nowait` when creating keymaps
}

M.setup = function()
  local which_key = require "which-key"
  which_key.setup()
  which_key.register(mappings, opts)
end

return M
