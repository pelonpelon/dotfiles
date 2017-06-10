""" UltiSnips """
"set runtimepath+=~/.vim/ultisnips_rep

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"function! g:UltiSnips_Complete()
  "call UltiSnips#ExpandSnippet()
  "if g:ulti_expand_res == 0
    "if pumvisible()
      "return "\<C-n>"
    "else
      "call UltiSnips#JumpForwards()
      "if g:ulti_jump_forwards_res == 0
        "return "\<TAB>"
      "endif
    "endif
  "endif
  "return ""
"endfunction

"au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"
"let g:UltiSnipsExpandTrigger           = '<tab>'
"let g:UltiSnipsJumpForwardTrigger      = '<tab>'
"let g:UltiSnipsJumpBackwardTrigger     = '<s-tab>'
"let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']
"let g:UltiSnipsListSnippets=""
let g:UltiSnipsEditSplit="vertical"
nnoremap <f5> :UltiSnipsEdit<CR>

" this mapping Enter key to <C-y> to chose the current highlight item 
" and close the selection list, same as other IDEs.
" inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" CONFLICT with some plugins like tpope/Endwise
"inoremap <c-u> <C-R>=UltiSnips#ExpandSnippet<CR>
"inoremap <c-u> :UltiSnips#ExpandJumpForwards<CR>
"inoremap <c-i> :UltiSnips#ExpandJumpBackwards<CR>

" YouCompleteMe and UltiSnips compatibility, with the helper of supertab
" (via http://stackoverflow.com/a/22253548/1626737)
" let g:SuperTabDefaultCompletionType    = '<C-n>'
" let g:SuperTabCrMapping                = 0

" choose first match in popup if shortest 
" function! ExpandPossibleShorterSnippet()
" if len(UltiSnips#SnippetsInCurrentScope()) == 1 "only one candidate...
" let curr_key = keys(UltiSnips#SnippetsInCurrentScope())[0]
" normal diw
" exe "normal a" . curr_key
" exe "normal a "
" return 1
" endif
" return 0
" endfunction
" inoremap <silent> <C-L> <C-R>=(ExpandPossibleShorterSnippet() == 0? '': UltiSnips#ExpandSnippet())<CR>

"function! UltisnipsStop()
"if &ft=="mithril\.javascript"
"exec "normal! \<ESC>"
"endif
"if &ft=="mithril\.coffee"
"exec "normal! \<ESC>"
"endif
"endfunc

" Additional FileTypes
" Mithril
" au BufRead,BufNewFile */mithril/*.js UltiSnipsAddFiletypes mithril.javascript
" au BufRead,BufNewFile */mithril/*.coffee UltiSnipsAddFiletypes mithril.coffee
" au BufRead,BufNewFile */mithril/*.{html,html} UltiSnipsAddFiletypes mithril.html

