" Speed up viewport scrolling
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" Faster split resizing (+,-)
if bufwinnr(1)
  map + <C-W>>
  map _ <C-W><
endif

" Sudo write (,W)
noremap <leader>W :w !sudo tee %<CR>

" Remap :W to :w
command! W w

" Clear last search (,qs)
map <silent> <leader>qs <Esc>:noh<CR>
" map <silent> <leader>qs <Esc>:let @/ = ""<CR>

" Vim on the iPad
if &term == "xterm-ipad"
  nnoremap <Tab> <Esc>
  vnoremap <Tab> <Esc>gV
  onoremap <Tab> <Esc>
  inoremap <Tab> <Esc>`^
  inoremap <Leader><Tab> <Tab>
endif

" Remap keys for auto-completion menu
inoremap <expr> <CR>   pumvisible() ? "\<C-y>" : "\<CR>"
inoremap <expr> <Down> pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>   pumvisible() ? "\<C-p>" : "\<Up>"

" Paste toggle (,p)
set pastetoggle=<leader>p
map <leader>p :set invpaste paste?<CR>

" vim-smooth-scroll
"noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
"noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

" Buffer navigation (,,) (,]) (,[) (,ls)
"map <Leader>, <C-^>
nnoremap <LocalLeader>] :bnext<CR>
nnoremap <LocalLeader>[ :bprev<CR>
"map <Leader>ls :buffers<CR>

" Close Quickfix window (,qq)
nnoremap <leader>qq :cclose<CR>

" Yank from cursor to end of line
nnoremap Y y$

" Insert newline
map <leader><Enter> o<ESC>

" Search and replace word under cursor (,*)
nnoremap <leader>* :%s/\<<C-r><C-w>\>//<Left>

" Strip trailing whitespace (,ss)
function! StripWhitespace ()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    :%s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace ()<CR>

" Toggle folds (<Space>)
nnoremap <silent> <space> :exe 'silent! normal! '.((foldclosed('.')>0)? 'zMzx' : 'zc')<CR>
" nnoremap <silent> <CR> :exe 'silent! normal! '.((foldclosed('.')>0)? 'zMzx' : 'zc')<CR>
noremap <silent> ;; :exe 'silent! normal! '.'za'<CR>

" Fix page up and down
map <PageUp> <C-U>
map <PageDown> <C-D>
imap <PageUp> <C-O><C-U>
imap <PageDown> <C-O><C-D>

" ENTER = insert new line
nmap <S-Enter> O<Esc>j

" Tabular.vim
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a=> :Tabularize /=><CR>
vmap <Leader>a=> :Tabularize /=><CR>
nmap <Leader>a: :Tabularize /:\zs/l0l1<CR>
vmap <Leader>a: :Tabularize /:\zs/l0l1<CR>
nmap <Leader>a, :Tabularize /,\zs/l0l1<CR>
vmap <Leader>a, :Tabularize /,\zs/l0l1<CR>

" RainbowParenthesis.vim
nnoremap <leader>rp :RainbowParenthesesToggle<CR>

" My additions
nnoremap qq :w!<CR>
"nnoremap QQ :qall!<CR>
" repeated replace with the same text
nnoremap yw yiw
nnoremap vw viw
nnoremap s viw"0P

autocmd QuickFixCmdPre *grep* silent
autocmd QuickFixCmdPost *grep* copen 10
nnoremap <f3> :Gcommit -a<CR>
nnoremap <f4> :silent Gstatus<CR>

" Switch windows
nnoremap <S-left> :wincmd h<CR>
nnoremap <S-right> :wincmd l<CR>
nnoremap <S-up> :wincmd k<CR>
nnoremap <S-down> :wincmd j<CR>

" Switch Buffers
nnoremap <tab><tab> :buffer #<CR>
nnoremap <tab>1 :bfirst<CR>
nnoremap <tab>2 :buffer 2<CR>
nnoremap <tab>3 :buffer 3<CR>
nnoremap <tab>4 :buffer 4<CR>
nnoremap <tab>5 :buffer 5<CR>
nnoremap <tab>6 :buffer 6<CR>
nnoremap <tab>7 :buffer 7<CR>
nnoremap <tab>8 :buffer 8<CR>
nnoremap <tab>9 :buffer 9<CR>
nnoremap <tab>0 :blast<CR>
nnoremap <tab>q :bd<CR>
nnoremap <tab>n :bnext<CR>
nnoremap <tab><right> :bnext<CR>
nnoremap <tab>p :bprevious<CR>
nnoremap <tab><left> :bprevious<CR>
nnoremap <tab>a :vs %<cr>/# notes<cr>
nnoremap <tab>w :buffer Writing.md<CR>
nnoremap <tab>i :buffer Ideas.md<CR>
nnoremap <tab>j :buffer Journal.md<CR>
nnoremap <tab>t :buffer Thoughts.md<CR>

nnoremap <Leader>, :NERDTreeToggle<CR>
autocmd BufNewFile,BufRead *.jade.html set ft=jade
autocmd BufNewFile,BufRead /**/meteor/**/* set ft+=.meteor

" this mapping Enter key to <C-y> to chose the current highlight item 
" and close the selection list, same as other IDEs.
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" CtrlP Buffers
nnoremap \b :CtrlPBuffer<CR>
" CtrlP Recent Files
nnoremap \r :CtrlPMRU<CR>

" git commands
nnoremap <localleader>gpa :call system('git commit -am "small change"')
nnoremap <localleader>gpt :call system('git commit -m "small change" expand('%')')

" UP DOWN LEFT RIGHT in insert mode
inoremap <C-h> <left>
inoremap <C-l> <right>

inoremap <C-j> <down>
inoremap <C-k> <up>
" move windows and tabs
nnoremap <C-h> <C-w>w
nnoremap <C-l> <C-W>W
nnoremap <C-j> :tabprevious<CR>
nnoremap <C-k> :tabnext<CR>

" scroll other window
nmap <c-down> <c-w>p<c-e><c-w>p
nmap <c-up> <c-w>p<c-y><c-w>p
nmap <c-right> <c-w>pzl<c-w>p
nmap <c-left> <c-w>pzh<c-w>p

func! MyCtrlPMappings()
    nnoremap <buffer> <silent> <c-@> :call <sid>DeleteBuffer()<cr>
endfunc

func! s:DeleteBuffer()
    let line = getline('.')
    let bufid = line =~ '\[\d\+\*No Name\]$' ? str2nr(matchstr(line, '\d\+'))
        \ : fnamemodify(line[2:], ':p')
    exec "bd" bufid
    exec "norm \<F5>"
endfunc

" Show highlight group at cursor position
map <F8> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" Correct recent mispelled word
"
nnoremap <F1> mp[s1z=`p
inoremap <F1> <esc>mp[s1z=`pa

" Sessions
nmap <F2> :wa<Bar>exe "mksession! " . v:this_session<CR>:so ~/sessions/

" Toggle show tabs and trailing spaces (,c)
" set lcs=tab:›\ ,trail:•,eol:¬,nbsp:_
set lcs=tab:›\ ,trail:•,nbsp:_
set fcs=fold:-
nnoremap <silent> <leader>c :set nolist!<CR>

" Markdown: highlight 2 spaces at end of line for <br />
highlight ExtraWhitespace ctermbg=darkgray guibg=darkgreen
match ExtraWhitespace /\s\s\+$/

"nmap \\ <plug>NERDCommenterToggle

"nmap <F12> :TagbarToggle<CR>

" Better split switching (Ctrl-j, Ctrl-k, Ctrl-h, Ctrl-l)
"map <C-j> <C-W>j
"map <C-k> <C-W>k
"map <C-H> <C-W>h
"map <C-L> <C-W>l

" Better mark jumping (line + col)
" nnoremap ' `

" Hard to type things
"imap >> →
"imap << ←
"imap ^^ ↑
"imap VV ↓
"imap aa λ

" Indent/unident block (,]) (,[)
"nnoremap <leader>] >i{<CR>
"nnoremap <leader>[ <i{<CR>

" Save and restore folds
" :au BufWinLeave * mkview
" :au BufWinEnter * silent loadview

" Join lines and restore cursor location (J)
"nnoremap J mjJ`j

" Jumping to tags. (via Steve Losh)
"
" Basically, <c-]> jumps to tags (like normal) and <c-\> opens the tag in a new
" split instead.
"
" Both of them will align the destination line to the upper middle part of the
" screen.  Both will pulse the cursor line so you can see where the hell you
" are.  <c-\> will also fold everything in the buffer and then unfold just
" enough for you to see the destination line.
"nnoremap <c-]> <c-]>mzzvzz15<c-e>`z:Pulse<cr>
"nnoremap <c-\> <c-w>v<c-]>mzzMzvzz15<c-e>`z:Pulse<cr>

" { nl }
"inoremap {<enter> {<CR>}<C-o>O
"inoremap (<enter> (<CR>)<C-o>O
"inoremap [<enter> [<CR>)<C-o>O

" CONFLICT with some plugins like tpope/Endwise
"inoremap <c-u> <C-R>=UltiSnips#ExpandSnippet<CR>
"inoremap <c-u> :UltiSnips#ExpandJumpForwards<CR>
"inoremap <c-i> :UltiSnips#ExpandJumpBackwards<CR>

" find word under cursor
" nnoremap gt yiw:Ack! <C-R>"<CR>

