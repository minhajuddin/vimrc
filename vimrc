" vim: set foldmethod=marker foldlevel=0:
" ============================================================================
" .vimrc of Khaja Minhajuddin

set nocompatible
"let g:loaded_syntastic_sass_sass_checker = 1 " disable syntastic for sass

" >>>>>>>>>>>>>	HELP {{{
" Installation
" 1. Install plug by running the following:
"  curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" 2. Open vim and run
"     PlugInstall
" 3. Install htmltidy from: https://github.com/htacg/tidy-html5
"}}}

">>>>>>>>>>>>>>>>>>>>		PLUGINS {{{
call plug#begin('~/.vim/plugged')
" Make sure you use single quotes
Plug 'szw/vim-tags'
Plug 'KabbAmine/zeavim.vim'
Plug 'bling/vim-airline' " awesome status bar
Plug 'bling/vim-bufferline'
Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'dyng/ctrlsf.vim'
Plug 'easymotion/vim-easymotion'
Plug 'gregsexton/gitv', { 'on': 'Gitv' }
Plug 'Keithbsmiley/investigate.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'maksimr/vim-jsbeautify'
Plug 'matchit.zip'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree' " file browser
Plug 'scrooloose/syntastic'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets' | Plug 'minhajuddin/snippets'
Plug 'tomasr/molokai' " colorscheme
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-dispatch' " async command execution
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --gocode-completer --tern-completer' }
Plug 'Yggdroot/indentLine'
Plug 'wincent/Command-T'
Plug 'kien/ctrlp.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-unimpaired'
Plug 'minhajuddin/vim-quickrun'
Plug 'kshenoy/vim-signature'
Plug 'bronson/vim-trailing-whitespace'
Plug 'godlygeek/tabular'
Plug 'mileszs/ack.vim'
Plug 'minhajuddin/zainu-vim'
Plug 'tacahiroy/ctrlp-funky'
Plug 'thinca/vim-ref'
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'benmills/vimux'
Plug 'jgdavey/vim-turbux'
Plug 'danro/rename.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'slashmili/alchemist.vim'
Plug 'marijnh/tern_for_vim', { 'do': 'npm install' }
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-projectionist'

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Language plugs
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Plug 'briancollins/vim-jst'
Plug 'cakebaker/scss-syntax.vim'
Plug 'digitaltoad/vim-pug'
Plug 'elixir-lang/vim-elixir'
Plug 'elzr/vim-json'
Plug 'evanmiller/nginx-vim-syntax'
Plug 'fatih/vim-go'
Plug 'groenewege/vim-less'
Plug 'honza/dockerfile.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'slim-template/vim-slim'
Plug 'thoughtbot/vim-rspec'
Plug 'tpope/vim-haml'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'wavded/vim-stylus'
Plug 'wting/rust.vim'
Plug 'lambdatoast/elm.vim'
Plug 'Matt-Deacalion/vim-systemd-syntax'
" Plug 'avdgaag/vim-phoenix'
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Unused plugs
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Plug 'chriskempson/vim-tomorrow-theme'
" Plug 'tpope/vim-speeddating'
" Plug 'tpope/vim-bundler'
" Plug 'Raimondi/delimitMate'
" Plug 'terryma/vim-multiple-cursors'
" Plug 'airblade/vim-gitgutter'
" Plug 'chrisbra/NrrwRgn'
" Plug 'junegunn/goyo.vim'
" Plug 'altercation/vim-colors-solarized'
" Plug 'mustache/vim-mustache-handlebars'
" Plug 'jceb/vim-orgmode'
" Plug 'ryanoasis/vim-devicons'
" Plug 'skalnik/vim-vroom'
" Plug 'junegunn/fzf',        { 'do': 'yes \| ./install' }
" Plug 'junegunn/fzf.vim'
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' } " fuzzy file finder
" Plug 'dbext.vim' " check more on this
" Plug 'nelstrom/vim-textobj-rubyblock'
" unused
" Plug 'kchmck/vim-coffee-script'
" Plug 'tpope/vim-liquid'
" Plug 'groenewege/vim-less'
" Plug 'mxw/vim-jsx'
" Plug 'leafgarland/typescript-vim'
" Plug 'tpope/vim-vinegar'
runtime macros/matchit.vim
call plug#end()
" }}}

" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"		AUTOCOMMANDS
" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
" <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"		VIM SETTINGS
" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
" TODO: Move these settings to: Plug 'minhajuddin/vimsettings'
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

let loaded_matchparen=1 " don't automatically highlight the matching parens
let mapleader      = ' '
let maplocalleader = ' '
set autowriteall " autosave files
set background=dark
set clipboard=unnamedplus " Yanks go on clipboard
set cmdheight=2
set completeopt=menuone,preview,longest
set cursorline
set diffopt=filler,vertical,iwhite
set encoding=utf-8
set expandtab
set fileencoding=utf8
set fillchars= " unset pipe as the vertical seperator
set foldlevel=3
set foldlevelstart=99
set foldmethod=syntax
set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo " These commands open folds
set grepformat=%f:%l:%c:%m,%f:%l:%m
set grepprg=grep\ -nH\ $*
set guioptions=aci
set hidden
set hlsearch " CTRL-L / CTRL-R W
set ignorecase smartcase
set lazyredraw                  " don't redraw while in macros
" set list
set matchtime=0 " to stop automatic moving of cursor to matched paren
set modeline " read modeline from footer to detect filetype?
set mouse=a
set mousehide
set noautoread
set nojoinspaces
set number " show line number
set selectmode=key
set shiftwidth=2
set shortmess=atI               " shorten messages and don
set showfulltag " When completing by tag, show the whole tag, not just the function name
set showmatch " Show matching braces
set showmode
set smartindent
set softtabstop=2
set splitbelow
set synmaxcol=200 " Syntax coloring lines that are too long just slows down the world
set tabstop=2
set timeoutlen=500
set virtualedit=block
set whichwrap=b,s
set wildchar=9 " tab as completion character
set wildignore+=node_modules,deps,*.gif,*.fla,*.png,*.swf,*.jpg,tmp/*,public/assets/*,*.ogv,*.ico,*.pdf,node_modules,_build,vendor/assets/bower,__*,data/*,rel/*,priv/static/*
set wildmode=list:longest,full
set wrap!
syntax sync fromstart


" search stuff
set gdefault            " Use 'g' flag by default with :s/foo/bar/.
set magic               " Use 'magic' patterns (extended regular expressions).

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Turn persistent undo on
"    means that you can undo even when you close a buffer/VIM
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
try
  set undodir=~/.vim_runtime/temp_dirs/undodir
  set undofile
catch
endtry
" <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"		PLUGIN SETTINGS
" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
" NERDTree
let NERDTreeChDirMode=2 " Change the NERDTree directory to the root node

let g:NERDShutUp = 1 " disable warnings from NERDCommenter

" ultisnips
let g:UltiSnipsExpandTrigger="<C-o>"
"let g:UltiSnipsJumpForwardTrigger="<C-n>"
"let g:UltiSnipsJumpBackwardTrigger="<C-p>"
let g:UltiSnipsEditSplit="vertical" " If you want :UltiSnipsEdit to split your window.

" help bufferline
let g:bufferline_echo = 0 " hide bufferline from command bar
let g:bufferline_show_bufnr = 1
let g:bufferline_rotate = 2
"let g:bufferline_fixed_index =  0 "always first

" help vim-airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'powerlineish'
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_inactive_collapse=1
let g:airline_mode_map = {
      \ '__' : '-',
      \ 'n'  : 'N',
      \ 'i'  : 'I',
      \ 'R'  : 'R',
      \ 'c'  : 'C',
      \ 'v'  : 'V',
      \ 'V'  : 'V',
      \ '' : 'V',
      \ 's'  : 'S',
      \ 'S'  : 'S',
      \ '' : 'S',
      \ }

let g:airline#extensions#hunks#enabled = 0

let g:airline#extensions#default#section_truncate_width = {
      \ 'a': 40,
      \ 'b': 80,
      \ 'c': 40,
      \ 'x': 60,
      \ 'y': 90,
      \ 'z': 50,
      \ }

" let g:airline_symbols.linenr = '' "hide linenr symbol
let g:airline_section_z = '%3v' " just show the column number instead of %, linenr and the linenr symbol
let g:airline#extensions#default#section_truncate_width = {}

" rainbow parans
let g:rbpt_colorpairs = [
      \ ['brown',       'RoyalBlue3'],
      \ ['Darkblue',    'SeaGreen3'],
      \ ['darkgray',    'DarkOrchid3'],
      \ ['darkgreen',   'firebrick3'],
      \ ['darkcyan',    'RoyalBlue3'],
      \ ['darkred',     'SeaGreen3'],
      \ ['darkmagenta', 'DarkOrchid3'],
      \ ['brown',       'firebrick3'],
      \ ['gray',        'RoyalBlue3'],
      \ ['black',       'SeaGreen3'],
      \ ['darkmagenta', 'DarkOrchid3'],
      \ ['Darkblue',    'firebrick3'],
      \ ['darkgreen',   'RoyalBlue3'],
      \ ['darkcyan',    'SeaGreen3'],
      \ ['darkred',     'DarkOrchid3'],
      \ ['red',         'firebrick3'],
      \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
" <<<<<

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" indent
let g:indentLine_char = '│'
let g:indentLine_color_gui = '#333333'
"let g:indentLine_char = "┊"
" <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<


" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"		MAPPINGS
" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"
" NERDTree
map <leader>nt :execute 'NERDTreeToggle'<cr>
" map <leader>nc :execute 'NERDTreeClose'<cr>
map <leader>nn :execute 'NERDTree'<cr>

"map <C-d> :execute 'source /home/minhajuddin/r/vimrc/vimrc \| PlugInstall'<cr>
map <C-d> :execute 'QuickRun'<cr>

nnoremap <leader>K :call investigate#Investigate()<CR>
" <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
" CUSTOM FUNCTIONS
" >>>>>
" TODO:

nnoremap Q @q "  Use Q to execute default register.

" Org mode stuff
let g:org_agenda_files = ['~/org/*.org']


"let g:airline#extensions#tabline#show_close_button = 0
"let g:airline#extensions#tabline#enabled = 2
"let g:airline#extensions#tabline#fnamemod = ':t'
"let g:airline#extensions#tabline#left_sep = ''
"let g:airline#extensions#tabline#left_alt_sep = ''
"let g:airline#extensions#tabline#right_sep = ''
"let g:airline#extensions#tabline#right_alt_sep = ''
"let g:airline#extensions#tabline#buffer_nr_show = 1

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

"Ack stuff
let g:ackprg="ack-grep -H --nocolor --nogroup --column"
nnoremap <leader>a :execute 'Ack'<cr>
" Disable YCM
"let g:loaded_youcompleteme = 1
" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"
"
"
" Golang stuff
let g:go_fmt_command = "goimports"

let g:UltiSnipsSnippetsDir = "/home/minhajuddin/.vim/plugged/snippets/UltiSnips"
" Syntastic
let g:syntastic_eruby_ruby_quiet_messages =
      \ {'regex': 'possibly useless use of a variable in void context'}


let g:elm_format_autosave = 1

let g:tagbar_type_elixir = {
    \ 'ctagstype' : 'elixir',
    \ 'kinds' : [
        \ 'f:functions',
        \ 'functions:functions',
        \ 'c:callbacks',
        \ 'd:delegates',
        \ 'e:exceptions',
        \ 'i:implementations',
        \ 'a:macros',
        \ 'o:operators',
        \ 'm:modules',
        \ 'p:protocols',
        \ 'r:records'
    \ ]
\ }

let g:alchemist_tag_disable = 1
