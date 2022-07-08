-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function()
    -- Packer can manage itself
    use "wbthomason/packer.nvim"
    -- color scheme
    use 'joshdick/onedark.vim'
    -- information line bottom
    use {
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true},
    }
    -- Табы вверху
    use {
        'akinsho/bufferline.nvim',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function()
            require("bufferline").setup{}
        end,
    }
    -- Collection of configurations for built-in LSP client
    use {
        "williamboman/nvim-lsp-installer",
        "neovim/nvim-lspconfig",
    }
    -- autocomplete
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    -- autocomplete for paths
    use 'hrsh7th/cmp-path'
    -- file manager
    use {'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function() require("nvim-tree").setup {} end,
    }
end)
