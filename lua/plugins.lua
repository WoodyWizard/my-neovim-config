
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

use {"akinsho/toggleterm.nvim"}

use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
}
use { "nvim-telescope/telescope-file-browser.nvim" }


use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}

use "oberblastmeister/neuron.nvim"
use 'nvim-lua/popup.nvim'

end)






