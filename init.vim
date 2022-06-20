call plug#begin('~/.vim/plugged')

	Plug 'simrat39/rust-tools.nvim'
	Plug 'nvim-lua/popup.nvim'
	Plug 'nvim-lua/plenary.nvim'
	" Color scheme used in the GIFs!
	Plug 'arcticicestudio/nord-vim'
	" Theme For Neovim
	Plug 'EdenEast/nightfox.nvim'
	Plug 'lervag/wiki.vim'
	Plug 'rainglow/vim'
	
call plug#end()



lua require('init')






colorscheme nightfox
set completeopt=menuone,noinsert,noselect
:set number
:set cursorline
:set relativenumber
:set rnu
set encoding=UTF-8
let g:wiki_root = '~/wiki'
set shortmess+=c
set mouse+=a



nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>












