" edit these files with fg

let s:rcs = ['~/.vim/rc/_init.vim']
let s:rcs += ['~/.vim/rc/plugins.vim']
let s:rcs += ['~/.vim/rc/filetypes.vim']
let s:rcs += ['~/.vim/rc/edit.vim']
let s:rcs += ['~/.vim/rc/functions.vim']
let s:rcs += ['~/.vim/rc/mappings.vim']
let s:rcs += ['~/.vim/rc/syntax.vim']
"let s:rcs += ['~/.vim/rc/unite.vim']
"let s:rcs += ['~/.vim/rc/memolist.vim']
"let s:rcs += ['~/.vim/rc/vimrc-tagbar.vim']
"let s:rcs += ['~/.vim/rc/MetafileManager.vim']
"let s:rcs += ['~/.vim/rc/famous.vim']
"let s:rcs += ['~/.vim/rc/ctrlp.vim']
"let s:rcs += ['~/.vim/rc/memolist.vim']
"let s:rcs += ['~/.vim/rc/wordprocessor.vim']

for item in s:rcs
  let vimrc = 'source ' . item
  try
    exec vimrc
  catch
    echo "vimrc  :FAILED"
  endtry
endfor

if v:vim_did_enter
  source ~/.vim/rc/unite.vim
  source ~/.vim/rc/plugins.vim
else
 au VimEnter * source ~/.vim/rc/unite.vim
 au VimEnter * source ~/.vim/rc/plugins.vim
endif

try
  source ~/.vimrc.local
catch
endtry

