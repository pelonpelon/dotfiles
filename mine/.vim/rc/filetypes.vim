" my wiki
au BufRead */wiki/* set ft=wiki
"au Filetype wiki call WordProcessorMode()

" Mithril
au BufRead,BufNewFile */mithril/*.js UltiSnipsAddFiletypes mithril.javascript
au BufRead,BufNewFile */mithril/*.{html,html} UltiSnipsAddFiletypes mithril.html
au BufRead,BufNewFile */mithril/*.js set ft=mithril.javascript
au BufRead,BufNewFile */mithril/*.{html,htm} set ft=mithril.html
nmap gf :e <cfile><CR>

" JSON
au BufRead,BufNewFile *.json set ft=json syntax=javascript

" Jade
au BufRead,BufNewFile *.jade set ft=jade syntax=jade

" Ruby
au BufRead,BufNewFile Rakefile,Capfile,Gemfile,.autotest,.irbrc,*.treetop,*.tt set ft=ruby syntax=ruby

" Nu
au BufNewFile,BufRead *.nu,*.nujson,Nukefile setf nu

" Coffee
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable shiftwidth=2 expandtab
hi link coffeeSpaceError NONE
let coffee_compile_vert=1
let coffee_watch_vert=1

" ZSH
au BufRead,BufNewFile .zsh_rc,.functions,.commonrc set ft=zsh

" Fish
au BufRead,BufNewFile *.fish set ft=fish

" XML
au FileType xml exe ":silent 1,$!xmllint --format --recover - 2>/dev/null"

" Highlight Custom C Types
autocmd BufRead,BufNewFile *.[ch] let fname = expand('<afile>:p:h') . '/types.vim'
autocmd BufRead,BufNewFile *.[ch] if filereadable(fname)
autocmd BufRead,BufNewFile *.[ch]   exe 'so ' . fname
autocmd BufRead,BufNewFile *.[ch] endif
"""" MY MAPS """"

" Markdown
" force markdown on .md files (as opposed to Modula-2)
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

