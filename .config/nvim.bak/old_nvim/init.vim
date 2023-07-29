"""""""""""""""""
"GENERAL SETTINGS
"""""""""""""""""

syntax on
set autoindent 
set smartindent
set ruler
set cursorline
set mouse=a
set clipboard=unnamedplus
set number "nu"
set relativenumber "rnu"
set hlsearch "hls"
set ts=4 "set tabstop=4
set sw=4 "shiftwidth=4"
let g:netrw_winsize=25

"filetype off
filetype plugin indent on 
"True color if available

if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set termguicolors
  set winblend=0
  set wildoptions=pum
  set pumblend=5
  set background=dark
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set t_Co=256
  " Use NeoSolarized
  "let g:neosolarized_termtrans=1
  "runtime ./colors/NeoSolarized.vim
  "colorscheme NeoSolarized
endif

colorscheme spaceduck
     



"""""""""""""""""""""""""""""""""""""
"PLUGINS
"""""""""""""""""""""""""""""""""""""

call plug#begin()
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'nvim-telescope/telescope.nvim'
	Plug 'navarasu/onedark.nvim'
	Plug 'lervag/vimtex'
	"Plug 'junegunn/goyo.vim'
	"Plug 'itchyny/lightline.vim'
	"Plug 'sheerun/vim-polyglot'
	Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
    Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
	Plug 'nvim-lualine/lualine.nvim'
	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'folke/which-key.nvim'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
call plug#end()


"""""""""""""""""""""""""""""""""""""""
"PLUGINS CONFIG
"""""""""""""""""""""""""""""""""""""""

lua << END

require('lualine').setup {
  options = { theme  = 'spaceduck' },
  ...
}



require("which-key").setup {}


require('telescope').setup{
	extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    }
  }
}
require('telescope').load_extension('fzf')
--- vim.cmd[[colorscheme tokyonight]]

END

"Telescope shortcuts
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>



"VIMTEX
set conceallevel=1
let g:tex_conceal='abdmg'

" This is necessary for VimTeX to load properly. The "indent" is optional.
" Note that most plugin managers will do this automatically.
filetype plugin indent on

" This enables Vim's and neovim's syntax-related features. Without this, some
" VimTeX features will not work (see ":help vimtex-requirements" for more
" info).
syntax enable

" Viewer options: One may configure the viewer either by specifying a built-in
" viewer method:
let g:vimtex_view_method = 'skim'

" Or with a generic interface:
let g:vimtex_view_general_viewer = 'skim'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'

" VimTeX uses latexmk as the default compiler backend. If you use it, which is
" strongly recommended, you probably don't need to configure anything. If you
" want another compiler backend, you can change it as follows. The list of
" supported backends and further explanation is provided in the documentation,
" see ":help vimtex-compiler".
"
"let g:vimtex_compiler_method = 'latexrun'
"
" Most VimTeX mappings rely on localleader and this can be changed with the
" following line. The default is usually fine and is the symbol "\".
"let mapleader = ","
let g:tex_flavor='latex'
let g:vimtex_quickfix_mode = 0



"let g:lightline = {
"	\ 'colorscheme': 'one',
"	\}



""""""""""""""""""""""""""""""""""
" KEYBINDINGS
""""""""""""""""""""""""""""""""""
map <Space> <Leader>

"keybindings/mapings (<Space>a to select all text)
nnoremap <Leader>a ggVG 
imap kj  <Esc>

" Complete brackets
inoremap {<CR>  {<CR>}<Esc>O
inoremap {} {}
inoremap {      {}<Left>
inoremap {{     {

"nnoremap <leader>w <C-w>v<C-w>l
nnoremap <tab> %
vnoremap <tab> %
nnoremap <F6> :sp<CR>:terminal<CR>


"Searching 
set hlsearch
set incsearch
set ignorecase
set smartcase


""""""""""""""""""""""""""""""
"FUNCTIONS
""""""""""""""""""""""""""""""

"C++ compile&run
autocmd filetype cpp nnoremap <F9> :w <bar> !clang++ -std=c++20 % -o output.out <CR>
autocmd filetype cpp nnoremap <F10> :!./output.out<CR>


hi Normal guibg=none ctermbg=none
hi LineNr guibg=none ctermbg=none
hi Folded guibg=none ctermbg=none
hi NonText guibg=none ctermbg=none
hi SpecialKey guibg=none ctermbg=none
hi VertSplit guibg=none ctermbg=none
hi SignColumn guibg=none ctermbg=none
hi EndOfBuffer guibg=none ctermbg=none


