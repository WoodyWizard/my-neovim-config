
vim.cmd [[packadd packer.nvim]]

packer = require 'packer'
packer.init {

}


local use = packer.use
packer.reset()


packer.startup(function()

-- use {
--   'nvim-lualine/lualine.nvim',
--   requires = {'kyazdani42/nvim-web-devicons', opt = true}
-- }


use {
    	'neovim/nvim-lspconfig',
	-- 'simrat39/rust-tools.nvim',
	"williamboman/nvim-lsp-installer",
	'hrsh7th/nvim-cmp' ,
	'hrsh7th/cmp-path',
	'hrsh7th/cmp-cmdline',
	'hrsh7th/cmp-buffer',
	'hrsh7th/cmp-nvim-lsp', 
	'saadparwaiz1/cmp_luasnip', 
	'L3MON4D3/LuaSnip',
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
    
    
use {'romgrk/barbar.nvim', config = function() require'bufferline'.setup{animation = false} end}



use {
  "ray-x/lsp_signature.nvim",
}

use {'glepnir/dashboard-nvim'}

-- use {"akinsho/toggleterm.nvim", tag = 'v1.*', config = function()
--   require("toggleterm").setup()
-- end}


use {
    "nvim-neorg/neorg",
    config = function()
        require('neorg').setup {

        }
    end,
}

use "savq/melange"

use({
    'rose-pine/neovim',
    as = 'rose-pine',
    tag = 'v1.*',
})


use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}


end)






