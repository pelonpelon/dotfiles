syntax on
set t_Co=256
set background=dark
colorscheme molotov
highlight Normal ctermfg=lightgray
highlight markdownBold cterm=bold ctermfg=white
highlight markdownItalic cterm=none ctermfg=darkgray
hi markdownH1 cterm=bold ctermbg=39 ctermfg=0
highlight markdownH2 cterm=underline ctermfg=lightgreen
highlight markdownH3 cterm=bold ctermfg=lightblue
highlight markdownH4 ctermfg=197
hi SpellBad cterm=underline ctermfg=197 ctermbg=233

hi snipLeadingSpaces ctermbg=black

au filetype pandoc hi Conceal ctermfg=39 ctermbg=233
