" Vim syntax file
" Language:	sweet.js
" Maintainer:	Phylo Kramer <dev@xlfag.com>
" Last Change:	Feb 16th 2015

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

:so $VIMRUNTIME/syntax/javascript.vim
" syn include @sjsJavascript syntax/javascript.vim

let b:current_syntax = "sweetjs"

" vim: ts=8 sw=2 fdm=manual
