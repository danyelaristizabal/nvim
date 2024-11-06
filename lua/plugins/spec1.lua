return {
    -- treesiter 
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
    },
    -- gopher 
    {
        "olexsmir/gopher.nvim",
        ft = "go",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-treesitter/nvim-treesitter",
        },
        build = function()
            vim.cmd.GoInstallDeps()
        end,
        opts = {},
    },   
    -- autocompletion
    {
        "neoclide/coc.nvim",
        branch = "release",
        build = "yarn install --frozen-lockfile",
    },    
    -- fuzy finder 
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    -- color scheme. 
    { "rebelot/kanagawa.nvim", as = "kanagawa"},
    -- folding in nvim. 
    {'kevinhwang91/nvim-ufo', dependencies = {'kevinhwang91/promise-async'}},
    {'theprimeagen/harpoon'},
    -- maybe delete this 
    {'mbbill/undotree'},
    -- git wrapper 
    {'tpope/vim-fugitive'},
    -- Edit and review github issues and pull requests from nvim 
    {'pwntester/octo.nvim', dependencies =  
        { 
            'nvim-telescope/telescope.nvim',
            'nvim-tree/nvim-web-devicons',
            'nvim-lua/plenary.nvim', 
        }
    },
    -- C# lsp 
    {'Decodetalkers/csharpls-extended-lsp.nvim'},
    -- Format style when saving 
    {
        'stevearc/conform.nvim',
        branch = 'nvim-0.9',
        opts = {},
    }, 
    -- games 
    {'theprimeagen/vim-be-good'},
    -- Maybe delete this or figure out how to use it 
    {'natecraddock/workspaces.nvim'},
    -- Copilot 
    {'github/copilot.vim'},
    {'CopilotC-Nvim/CopilotChat.nvim', dependencies =  { 'nvim-lua/plenary.nvim'}},
    -- File manager    
    {"stevearc/oil.nvim"},
    -- tmux navigator with vim 
    {
        'christoomey/vim-tmux-navigator',
        config = function()
            vim.api.nvim_set_keymap('n', '<c-h>', '<cmd>TmuxNavigateLeft<cr>', { noremap = true, silent = true })
            vim.api.nvim_set_keymap('n', '<c-j>', '<cmd>TmuxNavigateDown<cr>', { noremap = true, silent = true })
            vim.api.nvim_set_keymap('n', '<c-k>', '<cmd>TmuxNavigateUp<cr>', { noremap = true, silent = true })
            vim.api.nvim_set_keymap('n', '<c-l>', '<cmd>TmuxNavigateRight<cr>', { noremap = true, silent = true })
            vim.api.nvim_set_keymap('n', '<c-\\>', '<cmd>TmuxNavigatePrevious<cr>', { noremap = true, silent = true })
        end
    },
    -- LSP 
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        dependencies = {
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},
            {'neovim/nvim-lspconfig'},
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    },
}
