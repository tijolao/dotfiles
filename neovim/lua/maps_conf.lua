if not pcall(require, 'vimp') then
   vim.cmd [[ echom 'Cannot load `vimp`' ]]
   return
end

vimp.nmap('p', '<Plug>(miniyank-autoput)')
vimp.nmap('P', '<Plug>(miniyank-autoPut)')
vimp.nmap('<c-p>', '<Plug>(miniyank-cycle)')
vimp.nmap('<c-n>', '<Plug>(miniyank-cycleback)')

local home = os.getenv("HOME")
vim.g.miniyank_filename = home .. "/.miniyank.mpack"
