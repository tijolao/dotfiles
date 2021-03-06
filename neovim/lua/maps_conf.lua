local opts = {noremap=true}

vim.api.nvim_set_keymap('n', 'p', '<Plug>(miniyank-autoput)', {})
vim.api.nvim_set_keymap('n', 'P', '<Plug>(miniyank-autoPut)', {})
vim.api.nvim_set_keymap('n', '<c-p>', '<Plug>(miniyank-cycle)', {})
vim.api.nvim_set_keymap('n', '<c-n>', '<Plug>(miniyank-cycleback)', {})

-- Windows mapping
vim.api.nvim_set_keymap('t', '<a-j>', '<c-\\><c-n><c-w>j', opts)
vim.api.nvim_set_keymap('t', '<a-k>', '<c-\\><c-n><c-w>k', opts)
vim.api.nvim_set_keymap('t', '<a-h>', '<c-\\><c-n><c-w>h', opts)
vim.api.nvim_set_keymap('t', '<a-l>', '<c-\\><c-n><c-w>l', opts)
vim.api.nvim_set_keymap('t', '<Esc><Esc>', '<c-\\><c-n>', opts)

vim.api.nvim_set_keymap('n', '<a-j>', '<c-w>j', opts)
vim.api.nvim_set_keymap('n', '<a-k>', '<c-w>k', opts)
vim.api.nvim_set_keymap('n', '<a-h>', '<c-w>h', opts)
vim.api.nvim_set_keymap('n', '<a-l>', '<c-w>l', opts)
vim.api.nvim_set_keymap('v', '<a-j>', '<c-\\><c-n><c-w>j', opts)
vim.api.nvim_set_keymap('v', '<a-k>', '<c-\\><c-n><c-w>k', opts)
vim.api.nvim_set_keymap('v', '<a-h>', '<c-\\><c-n><c-w>h', opts)
vim.api.nvim_set_keymap('v', '<a-l>', '<c-\\><c-n><c-w>l', opts)
vim.api.nvim_set_keymap('i', '<a-j>', '<c-\\><c-n><c-w>j', opts)
vim.api.nvim_set_keymap('i', '<a-k>', '<c-\\><c-n><c-w>k', opts)
vim.api.nvim_set_keymap('i', '<a-h>', '<c-\\><c-n><c-w>h', opts)
vim.api.nvim_set_keymap('i', '<a-l>', '<c-\\><c-n><c-w>l', opts)
vim.api.nvim_set_keymap('c', '<a-j>', '<c-\\><c-n><c-w>j', opts)
vim.api.nvim_set_keymap('c', '<a-k>', '<c-\\><c-n><c-w>k', opts)
vim.api.nvim_set_keymap('c', '<a-h>', '<c-\\><c-n><c-w>h', opts)
vim.api.nvim_set_keymap('c', '<a-l>', '<c-\\><c-n><c-w>l', opts)
