" -------------Zoom-------------
" Opens current buffer in a new window if there are more than one windows open
" Otherwise closes the current buffer
function! ToggleZainabZoom()
  " to save the cursor position
  let l:winview = winsaveview()

  if winnr('$') == 1
    " if there is just one window open
    " close this window
    :close
  else
    " open the current window in a new tab
    :tabe %
  endif

  " restore cursor position
  call winrestview(l:winview)
endfunction

nnoremap <leader>xi :call ToggleZainabZoom()<cr>

set nofsync

" -------------Scratch-------------
" Open scratch file from dropbox
" You can symlink scratch into Dropbox so that it is
" synced across multiple machines which you use
function! OpenScratch()
  exec 'sp '. $HOME . '/.scratch/'. split(getcwd(), '/')[-1]
endfunction
nnoremap <leader>xx :call OpenScratch()<cr>

" -------------Quick TODO-------------
" Open a global quick todo file
" You can symlink quick.todo into Dropbox so that it is
" synced across multiple machines which you use
function! OpenQuickTodo()
  exec 'tabnew '. $HOME . '/quick.todo'
endfunction
nnoremap <leader>xd :call OpenQuickTodo()<cr>

" -------------Ctags-------------
" run ctags
nnoremap <leader>xc :execute '!ctags -R &> /dev/null \| echo creating-tags-file'<cr>

" -------------Reformat-------------
" reformat the file
function! ReformatCode()
  " to save the cursor position
  let l:winview = winsaveview()
  if &ft == "elixir"
    :w
    :MixFormat
  elseif &ft == "javascript"
    :call JsBeautify()
    echo "JS beautified!"
  elseif &ft == "json"
    :call JsonBeautify()
    echo "JSON beautified!"
  elseif &ft == "html"
    :call HtmlBeautify()
    echo "HTML beautified!"
  elseif &ft == "css"
    :call CSSBeautify()
    echo "CSS beautified!"
  elseif &ft == "scss"
    :call CSSBeautify()
    echo "CSS beautified!"
  elseif &ft == "jsx"
    :call JsxBeautify()
    echo "Jsx beautified!"
  else
    :exe 'normal gg=G'
  endif
  call winrestview(l:winview)
endfunction
nnoremap <leader>xf :call ReformatCode()<cr>

" -------------Execute current line as vim-------------
nnoremap <leader>xv :execute getline(".")<cr>

" -- Close current buffer --
"nnoremap <leader>xd :close<cr>
nnoremap <C-c> :close<cr>

" computes the value of the current line
nnoremap <leader>xe :!bc<cr>

" computes the value of the current line
nnoremap <leader>xw :<cr>

" tab navigation
nnoremap <C-j> :tabp<cr>
nnoremap <C-k> :tabn<cr>


"nnoremap <C-b> :CtrlPBuffer<cr>

"nnoremap <leader>xn :CtrlPFunky<cr>

nnoremap <leader>xp :lcd %:p:h<cr>

" Move to zainu
let g:no_turbux_mappings = 1
map <leader>xt <Plug>SendTestToTmux
map <leader>xT <Plug>SendFocusedTestToTmux

" Fenced code blocks
let g:markdown_fenced_languages = []

let g:markdown_fenced_languages = ['bash=sh', 'css', 'elixir', 'erb=eruby', 'go', 'html', 'javascript', 'js=javascript', 'json=javascript', 'python', 'ruby', 'sql', 'vim']

nnoremap <leader>z <Plug>ZVMotion
