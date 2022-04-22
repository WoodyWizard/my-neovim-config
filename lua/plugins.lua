
vim.cmd [[packadd packer.nvim]]

packer = require 'packer'
packer.init {

}


local use = packer.use
packer.reset()


packer.startup(function()

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

use 'nvim-lualine/lualine.nvim'

use {
	'nvim-treesitter/nvim-treesitter',
	run = ':TSUpdate'
}
    
    
    
use {
  'romgrk/barbar.nvim',
  requires = {'kyazdani42/nvim-web-devicons'}
}

end)






