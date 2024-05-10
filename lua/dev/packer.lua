-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

-- Extra go functionality 
use {
  "olexsmir/gopher.nvim",
  requires = { -- dependencies
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
}

-- fuzy finder 
use {
	'nvim-telescope/telescope.nvim', tag = '0.1.5',
	-- or                            , branch = '0.1.x',
	requires = { {'nvim-lua/plenary.nvim'} }
}

-- multiple cursor 
use( 'terryma/vim-multiple-cursors' )

-- color scheme. 
use { 
    "rebelot/kanagawa.nvim", as = "kanagawa"
}

-- folding in nvim. 
use {'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'}
use {'neoclide/coc.nvim', branch = 'master'}

-- treesiter 
use( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'} )
use( 'nvim-treesitter/playground' )
use( 'theprimeagen/harpoon' )

-- maybe delete this 
use( 'mbbill/undotree')

-- git wrapper 
use( 'tpope/vim-fugitive')

-- Edit and review github issues and pull requests from nvim 
-- delete? 
use{ 'pwntester/octo.nvim', 
    requires =  
    { 
        'nvim-telescope/telescope.nvim',
        'nvim-tree/nvim-web-devicons',
        'nvim-lua/plenary.nvim', 
    }, 
}

-- C# lsp 
use( 'Decodetalkers/csharpls-extended-lsp.nvim')

-- Format style when saving 
use( 'stevearc/conform.nvim' )

-- games 
use( 'theprimeagen/vim-be-good')

-- Maybe delete this or figure out how to use it 
use( 'natecraddock/workspaces.nvim')

-- Copilot 
use( 'github/copilot.vim' )
use{ 'CopilotC-Nvim/CopilotChat.nvim', 
    requires =  
    { 
        'nvim-lua/plenary.nvim', 
    }, 
}
-- highlights nvim plantuml 
use 'javiorfo/nvim-nyctophilia'
use 'javiorfo/nvim-soil'

-- Debugger 
use{ 'rcarriga/nvim-dap-ui',
    requires = 
        {
            'leoluz/nvim-dap-go', 
            'mfussenegger/nvim-dap', 
            'nvim-neotest/nvim-nio',
            'Samsung/netcoredbg', 
        } 
    }
    
-- LSP 
use {	'VonHeikemen/lsp-zero.nvim',
	branch = 'v3.x',
	requires = {
		--- Uncomment the two plugins below if you want to manage the language servers from neovim
		{'williamboman/mason.nvim'},
		{'williamboman/mason-lspconfig.nvim'},

		-- LSP Support
		{'neovim/nvim-lspconfig'},

		-- Autocompletion
		{'hrsh7th/nvim-cmp'},
		{'hrsh7th/cmp-nvim-lsp'},
		{'L3MON4D3/LuaSnip'},
	}
}


end)


