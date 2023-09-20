-- Not LSP but provides Go tooling
-- https://github.com/olexsmir/gopher.nvim
return {
  "olexsmir/gopher.nvim",
  ft = "go",
  config = function(_, opts)
    require("gopher").setup(opts)
  end,
  build = function()
    vim.cmd [[silent! GoInstallDeps]]
  end
}