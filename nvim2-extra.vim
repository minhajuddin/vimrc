" colorscheme
filetype plugin indent on
syntax enable
set background=dark
colorscheme molokai

" misc
set hidden " stop complaining about unsaved changes
let loaded_matchparen=1 " don't automatically highlight the matching parens
let mapleader      = ' '
let maplocalleader = ' '
set autowriteall " autosave files
set clipboard=unnamedplus " Yanks go on clipboard
set cmdheight=2
set cursorline
set encoding=utf-8
set expandtab
set hlsearch " CTRL-L / CTRL-R W
set ignorecase smartcase
set lazyredraw                  " don't redraw while in macros
set fileencoding=utf8
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
set showmatch " Show matching braces
set showmode
set smartindent
set softtabstop=2
set splitbelow
set synmaxcol=500 " Syntax coloring lines that are too long just slows down the world
set tabstop=2
set timeoutlen=500
set virtualedit=block
set wildchar=9 " tab as completion character
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

"Ack stuff
let g:ackprg = 'rg --vimgrep --no-heading'
nnoremap <leader>a :execute 'Ack'<cr>

" ctrlp
" let g:ctrlp_map = '<c-p>'
" let g:ctrlp_cmd = 'CtrlP'
" let g:ctrlp_map = '' " to enable cpsm mappings
" let g:ctrlp_working_path_mode = '0'
" let g:ctrlp_match_func = {'match': 'cpsm#CtrlPMatch'}
" let g:cpsm_query_inverting_delimiter = ' '
" let g:ctrlp_user_command = 'rg --files %s'
" let g:ctrlp_switch_buffer = 'et'
" nnoremap <leader>ff :CtrlPFunky<cr>
" " narrow the list down with a word under cursor
" nnoremap <leader>fu :execute 'CtrlPFunky ' . expand('<cword>')<cr>
" let g:ctrlp_funky_syntax_highlight = 1
" " let g:cpsm_match_empty_query = 0
" nnoremap <silent> <C-p> :CtrlP<CR>
" nnoremap <silent> <C-b> :CtrlPBuffer<CR>
"

" FZF mappings
nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <C-b> :Tags<CR>
nnoremap <silent> <C-u> :Buffers<CR>


" coc
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> K :call CocAction('doHover')<CR>
nnoremap <silent> <leader>fo  :<C-u>CocList outline<CR>

nnoremap <silent> <C-l> :nohlsearch<CR><C-l>

vmap <leader>ft  <Plug>(coc-format-selected)
nmap <leader>ft  <Plug>(coc-format-selected)

" VRC
let g:vrc_allow_get_request_body = 1
let g:vrc_elasticsearch_support = 1
let g:vrc_trigger = '<C-d>'
let g:vrc_output_buffer_name = '__VRC_OUTPUT.<filetype>'
let g:vrc_show_command = 1
" let g:vrc_include_response_header = 1
let g:vrc_auto_format_response_enabled = 1
"let s:vrc_auto_format_response_patterns = {
"\   'json': 'jq .',
"\}

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" " Set a language to use its alternate delimiters by default
" let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
" let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1


" vimtest
let test#strategy = "vimux"
nnoremap <leader>tl :TestLast<cr>
nnoremap <leader>tf :TestFile<cr>
nnoremap <leader>tt :TestNearest<cr>:VimuxZoomRunner<cr>

autocmd BufNewFile,BufRead *.html.erb set filetype=html.eruby

let g:UltiSnipsExpandTrigger="<c-o>"
let g:UltiSnipsEditSplit="vertical" " If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsSnippetsDir = "/home/minhajuddin/r/code_snippets/"
" let g:UltiSnipsSnippetDirectories=["UltiSnips", "/home/minhajuddin/r/code_snippets/"]
"let g:UltiSnipsJumpForwardTrigger="<C-n>"
"let g:UltiSnipsJumpBackwardTrigger="<C-p>"

set colorcolumn=80
" set cursorcolumn!
autocmd FileType markdown setlocal textwidth=80

let NERDTreeChDirMode=2 " Change the NERDTree directory to the root node
" NERDTree
map <leader>nt :execute 'NERDTreeToggle'<cr>
" map <leader>nc :execute 'NERDTreeClose'<cr>
map <leader>nn :execute 'NERDTree'<cr>
autocmd FileType nerdtree setlocal nocursorcolumn
autocmd FileType markdown setlocal textwidth=80

nnoremap <leader>q :execute 'QuickRun'<cr>

" Buffer line
set showtabline=2


let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             ['gitstatus', 'readonly', 'filename', 'modified']]
      \ },
      \ 'component_function': {
      \   'gitstatus': 'GetGitInfo'
      \ },
      \ 'tabline': {
      \   'left': [ ['buffers']  ],
      \   'right': [ []  ]
      \ },
      \ 'component_expand': {
      \   'buffers': 'lightline#bufferline#buffers'
      \ },
      \ 'component_type': {
      \   'buffers': 'tabsel'
      \ },
      \ 'mode_map': {
      \ 'n' : 'N',
      \ 'i' : 'I',
      \ 'R' : 'R',
      \ 'v' : 'V',
      \ 'V' : 'VL',
      \ "\<C-v>": 'VB',
      \ 'c' : 'C',
      \ 's' : 'S',
      \ 'S' : 'SL',
      \ "\<C-s>": 'SB',
      \ 't': 'T',
      \ }
      \ }

fu! GetGitInfo() abort
    let gitBranch = get(g:, 'coc_git_status', "")
    " let gitCount  = get(b:, 'coc_git_status', "")
    " return trim(gitBranch . gitCount)
    return gitBranch
endf

autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()

let g:lightline#bufferline#show_number = 2

nmap <Leader>1 <Plug>lightline#bufferline#go(1)
nmap <Leader>2 <Plug>lightline#bufferline#go(2)
nmap <Leader>3 <Plug>lightline#bufferline#go(3)
nmap <Leader>4 <Plug>lightline#bufferline#go(4)
nmap <Leader>5 <Plug>lightline#bufferline#go(5)
nmap <Leader>6 <Plug>lightline#bufferline#go(6)
nmap <Leader>7 <Plug>lightline#bufferline#go(7)
nmap <Leader>8 <Plug>lightline#bufferline#go(8)
nmap <Leader>9 <Plug>lightline#bufferline#go(9)
nmap <Leader>0 <Plug>lightline#bufferline#go(10)
nmap <Leader>c1 <Plug>lightline#bufferline#delete(1)
nmap <Leader>c2 <Plug>lightline#bufferline#delete(2)
nmap <Leader>c3 <Plug>lightline#bufferline#delete(3)
nmap <Leader>c4 <Plug>lightline#bufferline#delete(4)
nmap <Leader>c5 <Plug>lightline#bufferline#delete(5)
nmap <Leader>c6 <Plug>lightline#bufferline#delete(6)
nmap <Leader>c7 <Plug>lightline#bufferline#delete(7)
nmap <Leader>c8 <Plug>lightline#bufferline#delete(8)
nmap <Leader>c9 <Plug>lightline#bufferline#delete(9)
nmap <Leader>c0 <Plug>lightline#bufferline#delete(10)

set laststatus=2

" Coc
autocmd CursorHold * silent call CocActionAsync('highlight')



" WIKI
let g:vimwiki_list = [{'path': '~/r/wiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

function! VimwikiLinkHandler(link)
  " Use Vim to open external files with the 'vfile:' scheme.  E.g.:
  "   1) [[vfile:~/Code/PythonProject/abc123.py]]
  "   2) [[vfile:./|Wiki Home]]
  let link = a:link
  if link =~# '^vfile:'
    let link = link[1:]
  else
    return 0
  endif
  let link_infos = vimwiki#base#resolve_link(link)
  if link_infos.filename == ''
    echomsg 'Vimwiki Error: Unable to resolve link!'
    return 0
  else
    exe 'tabnew ' . fnameescape(link_infos.filename)
    return 1
  endif
endfunction

" Terraform
let g:terraform_align=1
let g:terraform_fold_sections=1
let g:terraform_fmt_on_save=1


" Split join
let g:splitjoin_split_mapping = ''
let g:splitjoin_join_mapping = ''

nmap sj :SplitjoinSplit<cr>
nmap sk :SplitjoinJoin<cr>

" Stop vim unimpaired from taking over CtrlP  Not Committed Yet
" https://github.com/tpope/vim-unimpaired/issues/158
" autocmd VimEnter * unmap <silent><expr> co

let g:indentLine_char       = '▏'

tnoremap <Esc><Esc> <C-\><C-n>
nmap <Leader>te :sp term://bash<cr>
tnoremap <C-W>h <C-\><C-N><C-w>h
tnoremap <C-W>j <C-\><C-N><C-w>j
tnoremap <C-W>k <C-\><C-N><C-w>k
tnoremap <C-W>l <C-\><C-N><C-w>l

" Autosave
let g:auto_save = 0
" let g:auto_save_events = ["InsertLeave", "TextChanged"]

" CodeLens
nmap cl <Plug>(coc-codelens-action)<cr>
nmap ca <Plug>(coc-codeaction-cursor)<cr>

nmap gh :GBrowse!<cr>
vmap gh :GBrowse!<cr>
nmap gc <Plug>(coc-git-commit)

" Vista Tagbar
"
" How each level is indented and what to prepend.
" This could make the display more compact or more spacious.
" e.g., more compact: ["▸ ", ""]
" Note: this option only works for the kind renderer, not the tree renderer.
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]

" Executive used when opening vista sidebar without specifying it.
" See all the avaliable executives via `:echo g:vista#executives`.
let g:vista_default_executive = 'coc'
" let g:vista_default_executive = 'coc'

" " Set the executive for some filetypes explicitly. Use the explicit executive
" " instead of the default one for these filetypes when using `:Vista` without
" " specifying the executive.
" let g:vista_executive_for = {
"   \ 'cpp': 'vim_lsp',
"   \ 'php': 'vim_lsp',
"   \ }
"
" " Declare the command including the executable and options used to generate ctags output
" " for some certain filetypes.The file path will be appened to your custom command.
" " For example:
" let g:vista_ctags_cmd = {
"       \ 'haskell': 'hasktags -x -o - -c',
"       \ }

" To enable fzf's preview window set g:vista_fzf_preview.
" The elements of g:vista_fzf_preview will be passed as arguments to fzf#vim#with_preview()
" For example:
let g:vista_fzf_preview = ['right:50%']
"
" Ensure you have installed some decent font to show these pretty symbols, then you can enable icon for the kind.
let g:vista#renderer#enable_icon = 1

" The default icons can't be suitable for all the filetypes, you can extend it as you wish.
let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }

" autocmd BufNewFile,BufRead *.py call vista#sidebar#Open()

" Treesitter config
" lua <<EOF
" require'nvim-treesitter.configs'.setup {
"   ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
"   ignore_install = { "javascript" }, -- List of parsers to ignore installing
"   highlight = {
"     enable = true,              -- false will disable the whole extension
"     disable = { "c", "rust" },  -- list of language that will be disabled
"   },
" }
" EOF
"


" Find files using Telescope command-line sugar.
" nnoremap <leader>ff <cmd>Telescope find_files<cr>
" nnoremap <leader>fg <cmd>Telescope live_grep<cr>
" nnoremap <leader>fb <cmd>Telescope buffers<cr>
" nnoremap <leader>ff <cmd>Telescope help_tags<cr>

" " Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').current_buffer_tags()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fz <cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<cr>
nnoremap <leader>ft <cmd>lua require('telescope.builtin').treesitter()<cr>

" git commands
nnoremap <leader>gb <cmd>lua require('telescope.builtin').git_bcommits()<cr>
nnoremap <leader>gc <cmd>lua require('telescope.builtin').git_commits()<cr>
nnoremap <leader>gs <cmd>lua require('telescope.builtin').git_status()<cr>

" repeat the last macro
nmap <leader>m @@
 
" To trace gutentags issues
" let g:gutentags_trace = 1
autocmd BufWritePre *.py execute ':Black'
