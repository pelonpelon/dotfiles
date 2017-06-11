
" Flash next (n) search in RED
function HLNext (blinktime)
highlight RedOnRed ctermfg=red ctermbg=red
let [bufnum, lnum, col, off] = getpos('.')
let matchlen = strlen(matchstr(strpart(getline('.'),col-1),@/))
echo matchlen
let ring_pat = (lnum > 1 ? '\%'.(lnum-1).'l\%>'
\ . max([col-4,1]) .'v\%<'.(col+matchlen+3).'v.\|' : '')
\ . '\%'.lnum.'l\%>'.max([col-4,1]) .'v\%<'.col.'v.'
\ . '\|'
\ . '\%'.lnum.'l\%>'.max([col+matchlen-1,1])
\ . 'v\%<'.(col+matchlen+3).'v.'
\ . '\|'
\ . '\%'.(lnum+1).'l\%>'.max([col-4,1])
\ . 'v\%<'.(col+matchlen+3).'v.'
let ring = matchadd('RedOnRed', ring_pat, 101)
redraw
exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm'
call matchdelete(ring)
redraw
endfunction
nnoremap <silent> n n:call HLNext(0.4)<cr>
nnoremap <silent> N N:call HLNext(0.4)<cr>


command! -complete=shellcmd -nargs=+ Shell call s:RunShellCommand(<q-args>)
function! s:RunShellCommand(cmdline)
  let isfirst = 1
  let words = []
  for word in split(a:cmdline)
    if isfirst
      let isfirst = 0  " don't change first word (shell command)
    else
      if word[0] =~ '\v[%#<]'
        let word = expand(word)
      endif
      let word = shellescape(word, 1)
    endif
    call add(words, word)
  endfor
  let expanded_cmdline = join(words)
  botright new
  setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap
  call setline(1, 'You entered:  ' . a:cmdline)
  call setline(2, 'Expanded to:  ' . expanded_cmdline)
  call append(line('$'), substitute(getline(2), '.', '=', 'g'))
  silent execute '$read !'. expanded_cmdline
  1
endfunction

" Stolen from tpope's unimpaired because I don't like the rest

function! s:setup_paste() abort
  let s:paste = &paste
  let s:mouse = &mouse
  set paste
  set mouse=
endfunction

nnoremap <silent> <Plug>unimpairedPaste :call <SID>setup_paste()<CR>

nnoremap <silent> yo  :call <SID>setup_paste()<CR>o
nnoremap <silent> yO  :call <SID>setup_paste()<CR>O

augroup unimpaired_paste
  autocmd!
  autocmd InsertLeave *
        \ if exists('s:paste') |
        \   let &paste = s:paste |
        \   let &mouse = s:mouse |
        \   unlet s:paste |
        \   unlet s:mouse |
        \ endif
augroup END
