set termguicolors " use true colors in the terminal

call plug#begin('~/.vim/plugged2')
" ----------------------------------------------------------------------


" syntax
" Ruby
Plug 'shaunsingh/solarized.nvim'
Plug 'vim-ruby/vim-ruby',    { 'for': 'ruby' }
Plug 'tpope/vim-bundler',    { 'for': 'ruby' }
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock', { 'for': ['ruby', 'elixir', 'eelixir'] }
Plug 'Olical/conjure'
" Rust
Plug 'racer-rust/vim-racer', { 'for': 'rust' }
Plug 'ttys3/nvim-blamer.lua', {'branch': 'main'}

Plug 'github/copilot.vim'

Plug 'altercation/vim-colors-solarized'
Plug 'vim-scripts/DrawIt'

Plug 'ludovicchabant/vim-gutentags'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'Yggdroot/indentLine'

Plug 'ryanoasis/vim-devicons'
Plug 'michaelb/sniprun', {'do': 'bash install.sh'}
Plug 'nvie/vim-flake8'


Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'ray-x/lsp_signature.nvim'

" Elixir
Plug 'elixir-lang/vim-elixir', { 'for': ['elixir', 'eelixir'] }

" Plug 'liuchengxu/vista.vim'

" JS
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'mxw/vim-jsx',             { 'for': ['javascript', 'javascript.jsx'] }
" Plug 'yamatsum/nvim-web-nonicons'

" Plug '907th/vim-auto-save'
" HTML
Plug 'mattn/emmet-vim', { 'for': ['html', 'javascript', 'javascript.jsx', 'typescript', 'javascript.tsx', 'eelixir'] }

Plug 'hashivim/vim-terraform', { 'for': 'terraform' }
Plug 'cespare/vim-toml', { 'for': 'toml' }

Plug 'github/copilot.vim'

" ctrlp
" has a dependency on ctags and ripgrep
" Plug 'ctrlpvim/ctrlp.vim' " main
" Plug 'nixprime/cpsm', { 'do': './install.sh' } " path based matcher: https://github.com/nixprime/cpsm
" Plug 'tacahiroy/ctrlp-funky' " for function matches
" Plug 'ivalkeen/vim-ctrlp-tjump' " for tag jump
"
" Plug 'nvim-lua/popup.nvim'
" Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-telescope/telescope.nvim'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" language servers
Plug 'neoclide/coc.nvim', { 'branch': 'release' } " TODO: understand coc
Plug 'amiralies/coc-elixir', {'do': 'yarn install && yarn prepack'}
Plug 'iamcco/coc-tailwindcss',  {'do': 'yarn install --frozen-lockfile && yarn run build'} " TODO: this hasn't been set up properly
Plug 'neoclide/coc-solargraph', { 'do': 'gem install solargraph' }
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" tpope
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive' " git
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-rails' " rails stuff
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rhubarb' " Gbrowse
Plug 'tpope/vim-surround' " surround
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-endwise',    { 'for': ['ruby', 'elixir'] }
Plug 'tpope/vim-tbone'
Plug 'psf/black'

" misc
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } " On-demand loading , File browser
Plug 'jiangmiao/auto-pairs'
Plug 'diepm/vim-rest-console'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdcommenter'
Plug 'vimwiki/vimwiki'
Plug 'godlygeek/tabular'
Plug 'tomasr/molokai' " colorscheme
Plug 'huyvohcmc/atlas.vim'
Plug 'vim-test/vim-test'
Plug 'kassio/neoterm'
Plug 'unblevable/quick-scope' " highlights words to help find them using f F and family
Plug 'mileszs/ack.vim'
" Plug 'jremmen/vim-ripgrep'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets' " Group dependencies, vim-snippets depends on ultisnips, snippets
Plug 'benmills/vimux'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'minhajuddin/vim-quickrun'
Plug 'mfussenegger/nvim-treehopper'

runtime macros/matchit.vim
" ----------------------------------------------------------------------
call plug#end()
" source extra settings
source ~/r/dot3/nvim2-extra.vim
source ~/r/dot3/nvim.functions.vim
luafile ~/r/dot3/nvim.extra.lua
source ~/nvim.local.vim
