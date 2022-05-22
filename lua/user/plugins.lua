vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    -- Packer can manage itself
    use "wbthomason/packer.nvim"
    -- Color scheme
    use "joshdick/onedark.vim"
    use { "nvim-lualine/lualine.nvim",
    requires = {"kyazdani42/nvim-web-devicons", opt = true},
    config = function()
        require("lualine").setup()
    end, }
    use "mhinz/vim-startify"
    use { "kyazdani42/nvim-tree.lua" }
    use {"folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = function()
        require("todo-comments").setup {}
    end}
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate"
    }
    use "neovim/nvim-lspconfig"
    use "williamboman/nvim-lsp-installer"
end)
