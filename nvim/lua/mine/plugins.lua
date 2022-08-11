vim.api.nvim_create('BufWritePost',{
	group = vim.api.nvim_create_augrup('PACKER', {clear = true}}, 
	pattern = 'plugins.lua',
	command = 'source <afile> | PackerCompile',
	})
return require('packer').startup(function()
	use('wbthomason/packer.nvim')
    use 'junegunn/vim-easy-align'
    use 'junegunn/fzf', { 'do': { -> fzf#install() } }
    use 'junegunn/fzf.vim'
    use 'junegunn/goyo.vim' 
    use 'kylechui/nvim-surround'
    use 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    use 'tpope/vim-commentary'
    -- Themes
    use 'whatyouhide/vim-gotham'
    use 'jacoborus/tender.vim'
    use 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
    use 'wadackel/vim-dogrun'
    use 'ryanoasis/vim-devicons'
    use 'kyazdani42/nvim-web-devicons'
    -- LaTEX related
    use 'lervag/vimtex'
    -- Markdown related
    use 'yaegassy/coc-marksman', {'do': 'yarn nstall --frozen-lockfile'}
    use 'JamshedVesuna/vim-markdown-preview'
    use 'godlygeek/tabular'
    use 'preservim/vim-markdown'
    -- Tags, NERDTree, and others
    use 'mhinz/vim-startify'
    use 'ludovicchabant/vim-gutentags'
    use 'preservim/nerdtree'
    use 'nvim-lua/plenary.nvim'
    --Orgmode
    use 'nvim-neorg/neorg' |     -- LSP stuff?
    use 'neoclide/coc.nvim', {'branch': 'release'}
    -- Snippets
    use 'sirver/ultisnips'
    use 'ckunte/latex-snippets-vim', { 'tag': '*' }
end)
