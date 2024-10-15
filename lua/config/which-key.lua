local M = {}

-- Not currently used

local mappings = {
  g = {
    name = "Git",
    g = { "<cmd>lua require 'config.toggleterm'.lazygit_toggle()<cr>", "Lazygit" },
    l = { "<cmd>lua require 'gitsigns'.blame_line()<cr>", "Blame" },
    d = {
      "<cmd>Gitsigns diffthis HEAD<cr>",
      "Git Diff",
    },
    f = { "<cmd>Telescope git_files<cr>", "Search Git Files" },
    b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
  },
  l = {
    name = "LSP",
    a = { "<cmd>lua vim.lsp.code_action()<cr>", "Code Action" },
    A = { "<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>", "Workspace Add Folder" },
    e = { "<cmd>Telescope quickfix<cr>", "Telescope Quickfix" },
    d = { "<cmd>Telescope diagnostics bufnr=0 theme=get_ivy<cr>", "Buffer Diagnostics" },
    w = { "<cmd>Telescope diagnostics<cr>", "Diagnostics" },
    i = { "<cmd>LspInfo<cr>", "Info" },
    I = { "<cmd>Mason<cr>", "Mason Info" },
    j = {
      "<cmd>lua vim.diagnostic.goto_next()<cr>",
      "Next Diagnostic",
    },
    k = {
      "<cmd>lua vim.diagnostic.goto_prev()<cr>",
      "Prev Diagnostic",
    },
    o = {
      "<cmd>lua vim.diagnostic.open_float()<cr>",
      "Open Floating Diagnostic Message",
    },
    l = { "<cmd>lua vim.lsp.codelens.run()<cr>", "CodeLens Action" },
    L = {
      "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>", "Worspace List Folders"
    },
    q = { "<cmd>lua vim.diagnostic.setloclist()<cr>", "Quickfix" },
    r = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename" },
    R = { "<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>", "Workspace Remove Folder" },
    s = { "<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols" },
    S = {
      "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>",
      "Workspace Symbols",
    },
    t = { "<cmd>lua vim.lsp.buf.type_definition()<cr>", "Type Definition" },
  },
  s = {
    name = "Search",
    b = {
      "<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown({winblend = 10, previewer = false}))<cr>", "Fuzzily search in current buffer"
    },
    d = { "<cmd>Telescope diagnostics<cr>", "Search Diagnostics" },
    c = { "<cmd>Telescope colorscheme<cr>", "Colorscheme" },
    f = { "<cmd>Telescope find_files<cr>", "Search Files" },
    w = { "<cmd>Telescope grep_string<cr>", "Search current word" },
    g = { "<cmd>Telescope live_grep<cr>", "Search by Grep" },
    r = { "<cmd>Telescope resume<cr>", "Search Resume" },
    h = { "<cmd>Telescope help_tags<cr>", "Find Help" },
    H = { "<cmd>Telescope highlights<cr>", "Find highlight groups" },
    M = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
    R = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
    t = { "<cmd>Telescope live_grep<cr>", "Text" },
    k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
    C = { "<cmd>Telescope commands<cr>", "Commands" },
    l = { "<cmd>Telescope resume<cr>", "Resume last search" },
    p = {
      "<cmd>lua require('telescope.builtin').colorscheme({enable_preview = true})<cr>",
      "Colorscheme with Preview",
    },
  },
  t = { "<cmd>NvimTreeToggle<cr>", "Toggle Nvim Tree" },
  v = {
    name = "Vim",
    s = { "<cmd>w<cr>", "Save file" },
    q = { "<cmd>q<cr>", "Quit file" },
    w = { "<cmd>set list!<cr>", "Toggle whitespace" },
  }
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
