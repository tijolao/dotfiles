if not pcall(require, 'vimp') then
   vim.cmd [[ echom 'Cannot load `vimp`' ]]
   return
end

vim.o.shortmess = vim.o.shortmess .. 'c'
vim.o.completeopt = "menuone,noselect,noinsert"
vim.o.infercase = true
-- Function to check if there is a space behind de cursor
local function check_back_space()
    local col = vim.fn.col'.' - 1
    local line = vim.fn.getline'.'
    local char = string.sub(line, col, col)
    return col == 0 or string.find(char, '%s')
end

-- Using <Tab> for triggering completion
vimp.inoremap({'silent', 'expr'}, '<Tab>', function()
    if vim.fn.pumvisible() == 1 then
        return [[<C-n>]]
    elseif check_back_space() then
        return [[<Tab>]]
    else
        return vim.fn['completion#trigger_completion']()
    end
end)

-- Using <Tab> and <S-Tab> for navigating completion list
vimp.inoremap({'expr'}, '<S-Tab>', function()
    if vim.fn.pumvisible() == 1 then
        return [[<C-p>]]
    else
        return [[<S-Tab>]]
    end
end)
