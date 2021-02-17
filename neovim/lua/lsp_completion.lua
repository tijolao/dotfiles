if not pcall(require, 'vimp') then
   vim.cmd [[ echom 'Cannot load `vimp`' ]]
   return
end

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
        return vim.fn['compe#complete']()
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


require'compe'.setup {
  enabled = true;
  autocomplete = true;
  debug = false;
  min_length = 1;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  incomplete_delay = 400;
  allow_prefix_unmatch = false;

  source = {
    path = true;
    buffer = true;
    vsnip = true;
    nvim_lsp = true;
    nvim_lua = true;
    your_awesome_source = {};
  };
}
