" Goyo / Limelight
"let g:loaded_goyo = 0
"let g:loaded_limelight = 0
function! s:writemode()
  if !exists("g:loaded_thesaurus_query")
    packadd thesaurus_query.vim.git
  endif
  if !exists("g:loaded_limelight")
    packadd limelight.vim
  endif
  if !exists("g:loaded_goyo")
    packadd goyo.vim
    let g:loaded_goyo = 1
  endif
  Goyo
  Limelight!!
endfunction
nnoremap <silent> <SPACE>w :call <SID>writemode()<cr>


" Thesaurus Query
let g:tq_enabled_backends=["thesaurus_com","openoffice_en","mthesaur_txt"]
let g:tq_openoffice_en_file="~/.vim/thesaurus/th_en_US_v2"
let g:tq_mthesaur_file="~/.vim/thesaurus/mthesaur.txt"
let g:tq_map_keys = 1
nnoremap <space>t :ThesaurusQueryReplaceCurrentWord<cr>

""" pandoc
let g:pandoc#folding#fdc = 0

""" javascript-libraries-syntax.vim 
" let g:used_javascript_libs = 'jquery,underscore,backbone,prelude,angularjs,angularui,react,flux,requirejs,sugar,jasmine,chai'
let g:used_javascript_libs = ''

""" jsfmt
" on save
let g:js_fmt_autosave = 1
" disable show errors
"let g:js_fmt_fail_silently = 1

""" Voom
let g:voom_tree_width = 40

""" NERD Commenter
let NERDSpaceDelims=1
let NERDCompactSexyComs=1
let g:NERDCustomDelimiters = { 'racket': { 'left': ';', 'leftAlt': '#|', 'rightAlt': '|#' } }

"""" netrw
" Browse with 'gx'
let g:netrw_browsex_viewer="open"

""" GitGutterDisable
let g:gitgutter_enabled = 0

""" Ack.vim
let g:ackprg = 'ack -H --nocolor --nogroup --column'

""" Airline.vim
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_enable_syntastic = 1
let g:airline_enable_tagbar = 0
let g:airline_enable_branch = 1
let g:airline_branch_empty_message = 'noBranch'

"let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '▶'
"let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '◀'
"let g:airline_linecolumn_prefix = '␊ '
"let g:airline_linecolumn_prefix = '␤ '
"let g:airline_linecolumn_prefix = '¶ '
let g:airline_branch_prefix = '⎇ '
let g:airline_paste_symbol = 'ρ'
"let g:airline_paste_symbol = 'Þ'
"let g:airline_paste_symbol = '∥'
let g:airline_whitespace_symbol = 'Ξ'

let g:airline_powerline_fonts = 0

""" Clojure.vim
let g:vimclojure#ParenRainbow = 1 " Enable rainbow parens
let g:vimclojure#DynamicHighlighting = 1 " Dynamic highlighting
let g:vimclojure#FuzzyIndent = 1 " Names beginning in 'def' or 'with' to be indented as if they were included in the 'lispwords' option

""" Markdown.vim
let g:markdown_fenced_languages = ['python', 'ruby', 'html', 'javascript', 'css', 'erb=eruby.html', 'bash=sh']

""" vim-markdown-preview
let vim_markdown_preview_browser='Google Chrome'

""" Notes.vim
let g:notes_directories = ['~/Dropbox/Notes']

""" Ruby.vim
let ruby_operators = 1
let ruby_space_errors = 1
let ruby_fold = 1

""" Syntastic.vim
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_coffee_coffeelint_args = '-f /Users/pelon/.coffeelint.json'
" syntastic: stop annoying coffeelint warnings
let g:syntastic_coffee_coffeelint_quiet_messages = { "type":  "Style", "regex": '\m.*8' }
let g:syntastic_coffee_coffeelint_exec = '/usr/local/bin/coffeelint'

""" UltiSnips """
set runtimepath+=~/.vim/ultisnips_rep

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
function! g:UltiSnips_Complete()
    call UltiSnips#ExpandSnippet()
    if g:ulti_expand_res == 0
        if pumvisible()
            return "\<C-n>"
        else
            call UltiSnips#JumpForwards()
            if g:ulti_jump_forwards_res == 0
               return "\<TAB>"
            endif
        endif
    endif
    return ""
endfunction

au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"
let g:UltiSnipsExpandTrigger           = '<tab>'
let g:UltiSnipsJumpForwardTrigger      = '<tab>'
let g:UltiSnipsJumpBackwardTrigger     = '<s-tab>'
let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']
let g:UltiSnipsListSnippets="<c-e>"
let g:UltiSnipsEditSplit="vertical"
nnoremap <f5> :UltiSnipsEdit<CR>

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

" function! SetFiletype(f)
  " exec 'set ft=' . a:f
" endfunction

function! UltisnipsStop()
  if &ft=="mithril\.javascript"
    exec "normal! \<ESC>"
  endif
endfunc

""" vim-startify """

let g:startify_lists = ['dir']
let g:startify_bookmarks = [ '~/.vimrc', '~/wiki/wiki/' ]
"let g:startify_lists = ['bookmarks', 'files', 'dir', 'sessions']
let g:startify_files_number = 10
let g:startify_change_to_dir = 1
let g:startify_skiplist = [
           \ 'COMMIT_EDITMSG',
           \ $VIMRUNTIME .'/doc',
           \ 'bundle/.*/doc',
           \ '.DS_Store',
           \ 'tags.*',
           \ '.gitignore',
           \ '.gitmodules'
           \ ]
let g:startify_custom_indices = ['a','s','d','f']


" CTRL-P: remove buffer from list
let g:ctrlp_buffer_func = { 'enter': 'MyCtrlPMappings' }

""" supertab """

" YouCompleteMe and UltiSnips compatibility, with the helper of supertab
" (via http://stackoverflow.com/a/22253548/1626737)
" let g:SuperTabDefaultCompletionType    = '<C-n>'
" let g:SuperTabCrMapping                = 0

""" ycm = you complete me """

" let g:ycm_add_preview_to_completeopt = 1
" let g:ycm_autoclose_preview_window_after_insertion = 1

