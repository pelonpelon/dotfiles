" Word processor mode (:WP)
func! WordProcessorMode()
  "setlocal formatoptions=1
  setlocal ft=markdown.wiki
  setlocal spell spelllang=en_us
  set thesaurus+=/Users/pelon/.vim/thesaurus/mthesaur.txt
  set complete+=s
  set formatprg=par
  setlocal wrap
  setlocal spell
  setlocal linebreak
  setlocal formatoptions=t1
  setlocal textwidth=76
  setlocal tabstop=4
  setlocal softtabstop=4
  setlocal shiftwidth=4
  map j gj
  map k gk
  setlocal smartindent
  setlocal expandtab
  call pencil#init()
  call lexical#init()
  call litecorrect#init()
  call textobj#quote#init()
  call textobj#sentence#init()
  " manual reformatting shortcuts
  nnoremap <buffer> <silent> Q gqap
  xnoremap <buffer> <silent> Q gq
  nnoremap <buffer> <silent> <leader>Q vapJgqap
  " force top correction on most recent misspelling
  nnoremap <buffer> <f1> e[s1z=<c-o>
  inoremap <buffer> <f1> <c-g>u<Esc>[s1z=`]A<c-g>u
  " replace typographical quotes (reedes/vim-textobj-quote)
  map <silent> <buffer> <leader>qc <Plug>ReplaceWithCurly
  map <silent> <buffer> <leader>qs <Plug>ReplaceWithStraight
  " highlight words (reedes/vim-wordy)
  noremap <silent> <buffer> <F8> :<C-u>NextWordy<cr>
  xnoremap <silent> <buffer> <F8> :<C-u>NextWordy<cr>
  inoremap <silent> <buffer> <F8> <C-o>:NextWordy<cr>
  let g:lexical#dictionary_key = '<Leader>k'
  let g:lexical#thesaurus_key = '<Leader>t'
  " nnoremap <Leader>t :ThesaurusQueryLookupCurrentWord<CR>
  " vnoremap <Leader>t y:ThesaurusQueryReplace <C-r>"<CR>
endfu
com! WP call WordProcessorMode()
com! MD call WordProcessorMode()


