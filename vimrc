set nocompatible
" filetype indent plugin on
" Temporary fix to ignore current vim files while experimenting
set runtimepath-=~/.vim
set runtimepath-=~/.vim/after
set runtimepath+=~/newvim/

" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"		HELP
" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
" Installation
" 1. Install plug by running the following:
"  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" 2. Open vim and run
"     PlugInstall
" 3. Install htmltidy from: https://github.com/htacg/tidy-html5
" <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"		PLUGINS
" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
call plug#begin('~/.vim/plugged')
" Make sure you use single quotes

Plug 'tomasr/molokai' " colorscheme
Plug 'scrooloose/nerdtree' " file browser
Plug 'bling/vim-airline' " awesome status bar
Plug 'bling/vim-bufferline'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-abolish'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-fugitive'
Plug 'easymotion/vim-easymotion'
Plug 'matchit.zip'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-repeat'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' } " fuzzy file finder
" Plug 'majutsushi/tagbar'
" Plug 'dbext.vim' " check more on this
" languages
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-haml'
Plug 'thoughtbot/vim-rspec'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'elzr/vim-json'
Plug 'cakebaker/scss-syntax.vim'
Plug 'tpope/vim-markdown'
Plug 'elixir-lang/vim-elixir'
Plug 'nginx.vim'
Plug 'tpope/vim-dispatch' " async command execution
Plug 'maksimr/vim-jsbeautify'
" runtime macros/matchit.vim
" Plug 'nelstrom/vim-textobj-rubyblock'
" unused
" Plug 'kchmck/vim-coffee-script'
" Plug 'tpope/vim-liquid'
" Plug 'groenewege/vim-less'
" Plug 'mxw/vim-jsx'
" Plug 'leafgarland/typescript-vim'

"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

"" On-demand loading
"Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

"" Using git URL
"Plug 'https://github.com/junegunn/vim-github-dashboard.git'

"" Plugin options
"Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

"" Plugin outside ~/.vim/plugged with post-update hook
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }

"" Unmanaged plugin (manually installed and updated)
"Plug '~/my-prototype-plugin'

"" Add plugins to &runtimepath

" All my settings are present in vimsettings
" Plug 'minhajuddin/vimsettings'
call plug#end()
" <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"		AUTOCOMMANDS
" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
" <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"		VIM SETTINGS
" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
" TODO Move these settings to: Plug 'minhajuddin/vimsettings'
colorscheme molokai

" settings for gvim
if has("gui_running")
  " maximizes the gvim window
  set guifont=Source\ Code\ Pro\ for\ Powerline\ 12
  " set guifont=Bitstream\ Vera\ Sans\ Mono\ for\ Powerline\ 11
  set lines=999 columns=999
  " No menus and no toolbar
  set guioptions-=m
  set guioptions-=T
endif

" settings for terminal vim
if !has("gui_running")
  set t_Co=256
endif

set laststatus=2 " always show the status bar even when there is only one window
set lazyredraw                  " don't redraw while in macros
set shortmess=atI               " shorten messages
set noautoread " don't reload file if it has changed on disk
set autowriteall " autosave files


" <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"		PLUGIN SETTINGS
" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
" NERDTree
let NERDTreeChDirMode=2 " Change the NERDTree directory to the root node

" help bufferline
let g:bufferline_echo = 0 " hide bufferline from command bar
let g:bufferline_show_bufnr = 1

" help vim-airline
let g:airline_powerline_fonts = 1

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<


" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"		MAPPINGS
" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
let mapleader=","
" NERDTree
map <leader>nt :execute 'NERDTreeToggle'<cr>
" map <leader>nc :execute 'NERDTreeClose'<cr>
map <leader>nn :execute 'NERDTree'<cr>

map <C-d> :execute 'source /home/minhajuddin/r/vimrc/vimrc \| PlugClean \| PlugInstall'<cr>

" <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
