
" edit these files with fg

let rcs = ['~/.vim/rc/_init.vim']
let rcs += ['~/.vim/rc/edit.vim']
let rcs += ['~/.vim/rc/syntax.vim']
let rcs += ['~/.vim/rc/plugins.vim']
let rcs += ['~/.vim/rc/filetypes.vim']
let rcs += ['~/.vim/rc/functions.vim']
let rcs += ['~/.vim/rc/unite.vim']
let rcs += ['~/.vim/rc/mappings.vim']
"let rcs += ['~/.vim/rc/memolist.vim']
"let rcs += ['~/.vim/rc/vimrc-tagbar.vim']
"let rcs += ['~/.vim/rc/MetafileManager.vim']
"let rcs += ['~/.vim/rc/famous.vim']
"let rcs += ['~/.vim/rc/ctrlp.vim']
"let rcs += ['~/.vim/rc/memolist.vim']
"let rcs += ['~/.vim/rc/wordprocessor.vim']

for item in rcs
  let vimrc = 'source ' . item
  try
    exec vimrc
  catch
  endtry
endfor

try
  source ~/.vimrc.local
catch
endtry

