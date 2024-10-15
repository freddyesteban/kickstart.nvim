-- Map Ctrl + s to save file
vim.keymap.set('n', '<C-s>', ':w<cr>', { desc = '[S]ave [File]' })

-- Map Ctrl + e to exit file
vim.keymap.set('n', '<C-e>', ':q<cr>', { desc = '[Q]uit [File]' })

-- Map Ctrl + c to clear highlighting
vim.keymap.set('n', '<C-c>', ':nohl<cr>', { desc = '[C]lear [H]ighlighting' })

-- Map Ctrl + a to highlight all text
vim.keymap.set('n', '<C-a>', 'ggVG<cr>', { desc = '[H]ighlight [A]all [T]ext' })

-- [[ Better window management ]]
-- Move between panes to left/bottom/top/right
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = '[N]avigate [P]ane [L]eft' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = '[N]avigate [P]ane [D]own' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = '[N]avigate [P]ane [U]p' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = '[N]avigate [P]ane [R]ight' })

-- nvim-tree - disable netrw at the very start of your init.lua
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1

-- Set listchars for whitespace rendering
-- vim.opt.list = true
-- vim.opt.listchars = vim.opt.listchars + "space:·,tab:>-"
