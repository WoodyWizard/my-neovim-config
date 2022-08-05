call plug#begin('~/.vim/plugged')
	Plug 'simrat39/rust-tools.nvim'
	Plug 'nvim-lua/popup.nvim'
	Plug 'nvim-lua/plenary.nvim'
	" Color scheme used in the GIFs!
	Plug 'arcticicestudio/nord-vim'
	" Theme For Neovim
	Plug 'EdenEast/nightfox.nvim'
	Plug 'elvessousa/sobrio'
	Plug 'lervag/wiki.vim'
	Plug 'rainglow/vim'
	Plug 'alaviss/nim.nvim'
	Plug 'prabirshrestha/asyncomplete.vim'
call plug#end()



lua require('init')





set termguicolors
colorscheme rose-pine
set completeopt=menuone,noinsert,noselect
:set number
:set cursorline
:set relativenumber
:set rnu
:set omnifunc
set encoding=UTF-8
let g:wiki_root = '~/wiki'
set shortmess+=c
set mouse+=a
set omnifunc=v:lua.vim.lsp.omnifunc

filetype indent on


au User asyncomplete_setup call asyncomplete#register_source({
    \ 'name': 'nim',
    \ 'whitelist': ['nim'],
    \ 'completor': {opt, ctx -> nim#suggest#sug#GetAllCandidates({start, candidates -> asyncomplete#complete(opt['name'], ctx, start, candidates)})}
    \ })


nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>












