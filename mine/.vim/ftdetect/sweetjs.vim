" recognize .snippet files
if has("autocmd")
    autocmd BufNewFile,BufRead *.sjs setf sweetjs
endif
