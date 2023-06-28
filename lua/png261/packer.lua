vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'vimwiki/vimwiki'
    use 'tpope/vim-fugitive'

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use({
        'sainnhe/gruvbox-material', as = 'gruvbox-material',
    })

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    use { 'nvim-treesitter/nvim-treesitter-textobjects' }

    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            -- Snippet Collection (Optional)
            { 'rafamadriz/friendly-snippets' },
        }
    }

    use 'sbdchd/neoformat'
    use 'jiangmiao/auto-pairs'
    -- use 'tpope/vim-surround'
    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    })
    use 'tpope/vim-commentary'
    use 'tpope/vim-repeat'
    use({
        "lewis6991/gitsigns.nvim",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("gitsigns").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    })
    use({
        "m4xshen/hardtime.nvim",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            local config = {
                max_time = 1000,
                max_count = 2,
                disable_mouse = true,
                hint = true,
                notification = true,
                allow_different_key = false,
                resetting_keys = {
                    ["1"] = { "n", "v" },
                    ["2"] = { "n", "v" },
                    ["3"] = { "n", "v" },
                    ["4"] = { "n", "v" },
                    ["5"] = { "n", "v" },
                    ["6"] = { "n", "v" },
                    ["7"] = { "n", "v" },
                    ["8"] = { "n", "v" },
                    ["9"] = { "n", "v" },
                    ["c"] = { "n" },
                    ["C"] = { "n" },
                    ["d"] = { "n" },
                    ["x"] = { "n" },
                    ["X"] = { "n" },
                    ["y"] = { "n" },
                    ["Y"] = { "n" },
                    ["p"] = { "n" },
                    ["P"] = { "n" },
                },
                restricted_keys = {
                    ["h"] = { "n", "v" },
                    ["j"] = { "n", "v" },
                    ["k"] = { "n", "v" },
                    ["l"] = { "n", "v" },
                    ["-"] = { "n", "v" },
                    ["+"] = { "n", "v" },
                    ["gj"] = { "n", "v" },
                    ["gk"] = { "n", "v" },
                    ["<CR>"] = { "n", "v" },
                    ["<C-M>"] = { "n", "v" },
                    ["<C-N>"] = { "n", "v" },
                    ["<C-P>"] = { "n", "v" },
                },
                disabled_keys = {
                    ["<UP>"] = { "", "i" },
                    ["<DOWN>"] = { "", "i" },
                    ["<LEFT>"] = { "", "i" },
                    ["<RIGHT>"] = { "", "i" }
                },
                disabled_filetypes = { "qf", "netrw", "NvimTree", "lazy", "mason" },
            }
            require("hardtime").setup(config)
        end
    })
end)
