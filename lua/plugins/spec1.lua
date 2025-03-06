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
    -- File manager    
    {"stevearc/oil.nvim"},
    -- tmux navigator with vim 
    {
        'christoomey/vim-tmux-navigator',
        cmd = {
            'TmuxNavigateLeft',
            'TmuxNavigateDown',
            'TmuxNavigateUp',
            'TmuxNavigateRight',
            'TmuxNavigatePrevious',
            'TmuxNavigatorProcessList'
        },
        keys = {
            { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
            { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
            { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
            { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
            { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
        }, 
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
    {
        "vim-test/vim-test",
        dependencies = {
            "preservim/vimux",
        },
        config = function() 
            vim.keymap.set("n", "<leader>tn", ":TestNearest<CR>", {})
            vim.keymap.set("n", "<leader>T", ":TestSuite<CR>", {})
            vim.cmd("let test#strategy = 'vimux'")
        end, 
    },
    {
        "CopilotC-Nvim/CopilotChat.nvim",
        dependencies = {
            { "github/copilot.vim" }, -- or zbirenbaum/copilot.lua
            { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
        },
        build = "make tiktoken", -- Only on MacOS or Linux
        opts = {
            -- See Configuration section for options
        },
        -- See Commands section for default commands if you want to lazy load on them
    },
    {
        "yetone/avante.nvim",
        event = "VeryLazy",
        lazy = false,
        version = false, -- Set this to "*" to always pull the latest release version, or set it to false to update to the latest code changes.
        opts = {
            -- add any opts here
            -- for example
            provider = "claude",
            claude = {
                endpoint = "https://api.anthropic.com",
                model = "claude-3-5-sonnet-20241022",
                temperature = 0,
                max_tokens = 4096,
            },
        },
        -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
        build = "make",
        -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
        dependencies = {
            "stevearc/dressing.nvim",
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            --- The below dependencies are optional,
            "echasnovski/mini.pick", -- for file_selector provider mini.pick
            "nvim-telescope/telescope.nvim", -- for file_selector provider telescope
            "hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
            "ibhagwan/fzf-lua", -- for file_selector provider fzf
            "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
            "zbirenbaum/copilot.lua", -- for providers='copilot'
            {
                -- support for image pasting
                "HakonHarnes/img-clip.nvim",
                event = "VeryLazy",
                opts = {
                    -- recommended settings
                    default = {
                        embed_image_as_base64 = false,
                        prompt_for_file_name = false,
                        drag_and_drop = {
                            insert_mode = true,
                        },
                        -- required for Windows users
                        use_absolute_path = true,
                    },
                },
            },
            {
                -- Make sure to set this up properly if you have lazy=true
                'MeanderingProgrammer/render-markdown.nvim',
                opts = {
                    file_types = { "markdown", "Avante" },
                },
                ft = { "markdown", "Avante" },
            },
        },
    }, 
}
