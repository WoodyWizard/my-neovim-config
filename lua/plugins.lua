
vim.cmd [[packadd packer.nvim]]

packer = require 'packer'
packer.init {

}


local use = packer.use
packer.reset()


packer.startup(function()

use {
    'neovim/nvim-lspconfig',
    opt = true,
    event = "BufReadPre",
    wants = { "nvim-lsp-installer" },
    config = function()
    	require("config.lsp").setup()
    end,
    requires = {
    "williamboman/nvim-lsp-installer",
    'hrsh7th/nvim-cmp' ,
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-nvim-lsp' ,
    'saadparwaiz1/cmp_luasnip' ,
    'L3MON4D3/LuaSnip',
    },
}

use {
  'lewis6991/gitsigns.nvim',
  requires = {
    'nvim-lua/plenary.nvim'
  },
  config = function()
    require('gitsigns').setup()
  end
}
use {'yamatsum/nvim-nonicons'}
use {'kyazdani42/nvim-tree.lua'}

use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
}
use { "nvim-telescope/telescope-file-browser.nvim" }

use "oberblastmeister/neuron.nvim"
use 'nvim-lua/popup.nvim'


use {
	'nvim-treesitter/nvim-treesitter',
	run = ':TSUpdate'
}
    
    
use {'romgrk/barbar.nvim', config = function() require'bufferline'.setup{animation = false} end, wants = 'nvim-web-devicons'}

use {
  'nvim-lualine/lualine.nvim',
  requires = {'kyazdani42/nvim-web-devicons', opt = true}
}

use {
  "ray-x/lsp_signature.nvim",
}

use {'glepnir/dashboard-nvim'}

end)






