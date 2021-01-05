vim.cmd [[ packadd packer.nvim ]]

require('basic')

require('packer').startup(function()
    -- Packer can manage itself as an optional plugin
    use {'wbthomason/packer.nvim', opt = true}

    use { 'svermeulen/vimpeccable' }

    use { 'morhetz/gruvbox' }

    use { 'kyazdani42/nvim-web-devicons' }
    use { 'romgrk/barbar.nvim' }
    use { 'glepnir/spaceline.vim' }

    use { 'junegunn/fzf', run = function() vim.fn['fzf#install']() end }


    use { 'nvim-lua/popup.nvim' }
    use { 'nvim-lua/plenary.nvim' }
    use { 'nvim-telescope/telescope.nvim' }

    -- To delete surrounding chars easily
    use { 'tpope/vim-surround' }

    -- Repeate some ops
    use { 'tpope/vim-repeat' }

    -- Open the file on the last position before closed
    use { 'dietsche/vim-lastplace' }

    -- Shows the vim undo tree
    use { 'mbbill/undotree' }


    -- jump to a char based on 2 chars
    use { 'justinmk/vim-sneak' }

    -- LSP and Tree-sitter
    use { 'neovim/nvim-lspconfig' }
    use { 'nvim-lua/completion-nvim' }
    use { 'liuchengxu/vista.vim' }
    use { 'nvim-treesitter/nvim-treesitter' }

    use { 'tpope/vim-endwise' }
    use { 'jiangmiao/auto-pairs' }

end)

require('lsp_completion')
require('telescope_config')
require('barbar_conf')

local treesitter = require'nvim-treesitter.configs'
local nvim_lsp = require('lspconfig')

vim.o.termguicolors = true
vim.cmd('colorscheme gruvbox')




treesitter.setup{
    highlight = {
        enable = true
    },
    incremental_selection = {
        enable = true,
        keymaps = {                       -- mappings for incremental selection (visual mappings)
        init_selection = 'gnn',         -- maps in normal mode to init the node/scope selection
        node_incremental = "grn",       -- increment to the upper named parent
        scope_incremental = "grc",      -- increment to the upper scope (as defined in locals.scm)
        scope_decremental = "grm",      -- decrement to the previous scope
    }
},
}

local on_attach = function(_, bufnr)
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
    -- require'diagnostic'.on_attach()
    require'completion'.on_attach()
    local opts = { noremap=true, silent=true }
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>e', '<cmd>lua vim.lsp.util.show_line_diagnostics()<CR>', opts)
end


vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    -- This will disable virtual text, like doing:
    -- let g:diagnostic_enable_virtual_text = 0
    virtual_text = false,

    -- This is similar to:
    -- let g:diagnostic_show_sign = 1
    -- To configure sign display,
    --  see: ":help vim.lsp.diagnostic.set_signs()"
    signs = true,

    -- This is similar to:
    -- "let g:diagnostic_insert_delay = 1"
    update_in_insert = false,
  }
)

local servers = {'gopls', 'rust_analyzer', 'sumneko_lua', 'tsserver', 'vimls', 'pyls', 'jsonls', 'clangd'}
for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup {
        on_attach = on_attach,
    }
end
