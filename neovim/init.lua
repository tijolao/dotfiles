vim.cmd [[ packadd packer.nvim ]]

require('basic')

require('packer').startup(function()
    -- Packer can manage itself as an optional plugin
    use {'wbthomason/packer.nvim', opt = true}

    use { 'svermeulen/vimpeccable' }

    use { 'sheerun/vim-polyglot' }

    use { 'morhetz/gruvbox' }

    use { 'kyazdani42/nvim-web-devicons' }
    use { 'romgrk/barbar.nvim' }
    use {'glepnir/spaceline.vim'}

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
    use { 'hrsh7th/nvim-compe' }
    use { 'liuchengxu/vista.vim' }
    use { 'nvim-treesitter/nvim-treesitter' }

    use { 'tpope/vim-endwise' }
    use { 'jiangmiao/auto-pairs' }

    use { 'bfredl/nvim-miniyank' }

    use { 'b3nj5m1n/kommentary' }

end)

require('lsp_conf')
require('lsp_completion')
require('telescope_config')
require('barbar_conf')
require('treesiter_conf')
require('maps_conf')
