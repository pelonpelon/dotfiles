" Unite
"
let g:unite_force_overwrite_statusline = 0

let g:unite_source_history_yank_enable = 1
call unite#filters#matcher_default#use(['matcher_fuzzy'])
"nnoremap <space>t :<C-u>Unite -no-split -buffer-name=files   -start-insert file_rec/async:!<cr>
nnoremap <space>f :<C-u>Unite -no-split -buffer-name=files   -start-insert file<cr>
"nnoremap <space>r :<C-u>Unite -no-split -buffer-name=mru     -start-insert file_mru<cr>
nnoremap <space>o :<C-u>Unite -no-split -buffer-name=outline -start-insert outline<cr>
nnoremap <space>y :<C-u>Unite -no-split -buffer-name=yank    history/yank<cr>
nnoremap <space>b :<C-u>Unite -no-split -buffer-name=buffer  buffer<cr>
nnoremap  <space><space>  :<C-u>Unite source<CR>

" Custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  " Play nice with supertab
  let b:SuperTabDisabled=1
  " Enable navigation with control-j and control-k in insert mode
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
endfunction

" The prefix key.
nnoremap <silent> <space>c  :<C-u>Unite
        \ -buffer-name=files buffer bookmark file<CR>
"nnoremap <silent> <space>b  :<C-u>UniteWithBufferDir
"        \ -buffer-name=files buffer bookmark file<CR>
nnoremap <silent> <space>r  :<C-u>Unite
        \ -buffer-name=register register<CR>
nnoremap <silent> <space>o  :<C-u>Unite outline<CR>
"nnoremap <silent> <space>f
"        \ :<C-u>Unite -buffer-name=resume resume<CR>
nnoremap <silent> <space>ma
        \ :<C-u>Unite mapping<CR>
nnoremap <silent> <space>me
        \ :<C-u>Unite output:message<CR>
"nnoremap  <space>f  :<C-u>Unite source<CR>

nnoremap <silent> <space>s
        \ :<C-u>Unite -buffer-name=files -no-split
        \ jump_point file_point buffer_tab
        \ file_rec:! file file/new<CR>

" Start insert.
"call unite#custom#profile('default', 'context', {
"\   'start_insert': 1
"\ })

" Like ctrlp.vim settings.
"call unite#custom#profile('default', 'context', {
"\   'start_insert': 1,
"\   'winheight': 10,
"\   'direction': 'botright',
"\ })

autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()"{{{
  " Overwrite settings.

  imap <buffer> jj      <Plug>(unite_insert_leave)
  "imap <buffer> <C-w>     <Plug>(unite_delete_backward_path)

  imap <buffer><expr> j unite#smart_map('j', '')
  imap <buffer> <TAB>   <Plug>(unite_select_next_line)
  imap <buffer> <C-w>     <Plug>(unite_delete_backward_path)
  imap <buffer> '     <Plug>(unite_quick_match_default_action)
  nmap <buffer> '     <Plug>(unite_quick_match_default_action)
  imap <buffer><expr> x
          \ unite#smart_map('x', "\<Plug>(unite_quick_match_jump)")
  nmap <buffer> x     <Plug>(unite_quick_match_jump)
  nmap <buffer> <C-z>     <Plug>(unite_toggle_transpose_window)
  imap <buffer> <C-z>     <Plug>(unite_toggle_transpose_window)
  nmap <buffer> <C-j>     <Plug>(unite_toggle_auto_preview)
  nmap <buffer> <C-r>     <Plug>(unite_narrowing_input_history)
  imap <buffer> <C-r>     <Plug>(unite_narrowing_input_history)
"  imap <buffer> <bs>     <Plug>(unite_exit)
"  nmap <buffer> <bs>     <Plug>(unite_exit)
  nnoremap <silent><buffer><expr> l
          \ unite#smart_map('l', unite#do_action('default'))

  let unite = unite#get_current_unite()
  if unite.profile_name ==# 'search'
    nnoremap <silent><buffer><expr> r     unite#do_action('replace')
  else
    nnoremap <silent><buffer><expr> r     unite#do_action('rename')
  endif

  nnoremap <silent><buffer><expr> cd     unite#do_action('lcd')
  nnoremap <buffer><expr> S      unite#mappings#set_current_sorters(
          \ empty(unite#mappings#get_current_sorters()) ?
          \ ['sorter_reverse'] : [])

  " Runs "split" action by <C-s>.
  imap <silent><buffer><expr> <C-s>     unite#do_action('split')
endfunction"}}}
