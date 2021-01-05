local tb = require('telescope.builtin')

if not pcall(require, 'vimp') then
   vim.cmd [[ echom 'Cannot load `vimp`' ]]
   return
end

vimp.nnoremap('<leader>f', tb.find_files)
vimp.nnoremap('<Leader>b', tb.buffers)
vimp.nnoremap('<Leader>r', tb.live_grep)
vimp.nnoremap('<Leader>g', tb.lsp_references)
vimp.nnoremap('<Leader>q', tb.quickfix)
vimp.nnoremap('<Leader>l', tb.loclist)
