set nocompatible
set hidden
set list
set lcs+=space:·
set number
set cursorline
set tabstop=2
set shiftwidth=2
set encoding=utf8
set termguicolors
set clipboard+=unnamedplus
set mouse=

call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'akinsho/toggleterm.nvim', {'tag':'*'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'airblade/vim-gitgutter'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'vim-airline/vim-airline'
Plug 'nvim-lua/plenary.nvim'
Plug 'olimorris/codecompanion.nvim'
Plug 'karb94/neoscroll.nvim'
Plug 'github/copilot.vim'

call plug#end()

" Theme
colorscheme onehalfdark

" No Comment Italic
lua vim.api.nvim_set_hl(0, "Comment", { fg = "#5c6370", italic = false })

" indent-blankline
lua require("ibl").setup{}

" Toggle Term C-j
lua require("toggleterm").setup{ open_mapping = [[<C-j>]], direction = 'float' }

" Smooth Scroll
lua require('neoscroll').setup{}

" Ai Editor
" lua require('codecompanion').setup{}

" Vim Airline
let g:airline_section_z = ''

au Filetype * setlocal ts=2 sts=2 sw=2
autocmd TermOpen * setlocal nonumber norelativenumber
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" [Vim Config]
cnoreabbrev evimcon e $MYVIMRC<CR>
cnoreabbrev svimcon so $MYVIMRC<CR>

" [COC CONF]
nnoremap <silent><expr> <c-space> coc#refresh()
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


" [No Arrow]
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
