" Global settings
filetype plugin indent on
set nobackup
set nowritebackup
set termguicolors
set updatetime=300
set cursorline
set number
set relativenumber
set ruler
set shiftwidth=4
set tabstop=4
set expandtab
set signcolumn=yes
set wrap
set linebreak
set incsearch
set ignorecase
set nohlsearch
set smartcase
set wildmenu
set wildmode=list:longest
set mouse=a
set display=lastline
set splitright

"Shortcuts 
" Coc-snippets / Enter to confirm and TAB to explore options
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
if has('nvim')
      inoremap <silent><expr> <c-space> coc#refresh()
  else
        inoremap <silent><expr> <c-@> coc#refresh()
    endif
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

"NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"Other keybindings
if has('nvim')
      inoremap <silent><expr> <tab> coc#refresh()
  else
        inoremap <silent><expr> <c-@> coc#refresh()
    endif
" Ctrl-Backspace during Insert Mode
inoremap <C-BS> <C-W>
" Ctrl-<insert key> during Normal map to close other window
nnoremap <C-S-w> ZZ
" Ctrl-Del during Insert mode to delete whole words
inoremap <C-delete> <C-o>daw

" Plugin settings
" The essentials
call plug#begin()
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim' 
Plug 'kylechui/nvim-surround'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'tpope/vim-commentary'
" Themes
Plug 'whatyouhide/vim-gotham'
Plug 'jacoborus/tender.vim'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'wadackel/vim-dogrun'
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
" LaTEX related
Plug 'lervag/vimtex'
" Markdown related
Plug 'yaegassy/coc-marksman', {'do': 'yarn install --frozen-lockfile'}
" Tags, NERDTree, and others
Plug 'mhinz/vim-startify'
Plug 'ludovicchabant/vim-gutentags'
Plug 'preservim/nerdtree'
"Orgmode
Plug 'nvim-neorg/neorg' | Plug 'nvim-lua/plenary.nvim'
" LSP stuff?
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Snippets
Plug 'honza/vim-snippets'
call plug#end()

"Lua settings
lua << EOF
-- Nvim Treesitter Lua config
require('nvim-treesitter.configs').setup {
            ensure_installed = {"norg"},
                        highlight = {enable = true,}
                                 }
-- Neorg Lua config
require('neorg').setup {
        load = {
            ["core.defaults"] = {},
            ["core.norg.dirman"] = {
                  config = {
                     workspaces = {
                       work = "~/notes/work",
                       home = "~/notes/home",
                        }
                    }
                }
            }
        }
-- Nvim surround Lua config
require("nvim-surround").setup()
EOF

"Lightline settings
let g:lightline = { 'colorscheme': 'gotham' }
let g:vimtex_view_general_viewer = 'SumatraPDF'

"Vim Markdown settings
let g:vim_markdown_new_list_item_indent = 2
let g:vim_markdown_auto_insert_bullets = 0
let g:vim_markdown_new_list_item_indent = 0
