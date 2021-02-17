if not pcall(require, 'vimp') then
   vim.cmd [[ echom 'Cannot load `vimpp`' ]]
   return
end

-- Magic buffer-picking mode
vimp.nnoremap({'silent'}, '<C-s>', [[ :BufferPick<CR> ]])
-- Sort automatically by...
vimp.nnoremap({'silent'}, '<Space>bd', [[ :BufferOrderByDirectory<CR> ]])
vimp.nnoremap({'silent'}, '<Space>bl', [[ :BufferOrderByLanguage<CR> ]])
-- Move to previous/next            
vimp.nnoremap({'silent'}, '<leader>,', [[ :BufferPrevious<CR> ]])
vimp.nnoremap({'silent'}, '<leader>.', [[ :BufferNext<CR> ]])
-- Re-order to previous/next        
vimp.nnoremap({'silent'}, '<leader><', [[ :BufferMovePrevious<CR> ]])
vimp.nnoremap({'silent'}, '<leader>>', [[ :BufferMoveNext<CR> ]])
-- Goto buffer in position...
vimp.nnoremap({'silent'}, '<leader>1', [[ :BufferGoto 1<CR> ]])
vimp.nnoremap({'silent'}, '<leader>2', [[ :BufferGoto 2<CR> ]])
vimp.nnoremap({'silent'}, '<leader>3', [[ :BufferGoto 3<CR> ]])
vimp.nnoremap({'silent'}, '<leader>4', [[ :BufferGoto 4<CR> ]])
vimp.nnoremap({'silent'}, '<leader>5', [[ :BufferGoto 5<CR> ]])
vimp.nnoremap({'silent'}, '<leader>6', [[ :BufferGoto 6<CR> ]])
vimp.nnoremap({'silent'}, '<leader>7', [[ :BufferGoto 7<CR> ]])
vimp.nnoremap({'silent'}, '<leader>8', [[ :BufferGoto 8<CR> ]])
vimp.nnoremap({'silent'}, '<leader>9', [[ :BufferLast<CR> ]])
-- Close buffer                    
vimp.nnoremap({'silent'}, '<leader>c', [[ :BufferClose<CR> ]])
