" Ne pas écraser les settings préexistants
" set background=dark
" hi clear
" syntax reset
"
" See /usr/share/vim/vim82/syntax/python.vim for 
" - group syntax definitons
" - options, explained in the header
"
" vim-polyglot brings up 3 syntax files
" - https://github.com/vim-python/python-syntax (interesting groups but unmaintained)
" - https://github.com/aliev/vim-compiler-python (unmaintained, replaced by ALE or COC)
" - https://github.com/Vimjas/vim-python-pep8-indent (unmaintained, use black)

" def, class
hi pythonStatement ctermfg=172

"if, else, elif, case, math
hi pythonConditional ctermfg=172

" for, while
hi pythonRepeat ctermfg=172

" and, in, is, not, or
hi pythonOperator ctermfg=172

" except, finally, raise, try
hi pythonException ctermfg=172

" from, import
hi pythonInclude ctermfg=172

" async, await
hi pythonAsync ctermfg=172

" @decorator
hi pythonDecorator ctermfg=220
hi pythonDecoratorName ctermfg=220

" @
hi pythonMatrixMultiply ctermfg=7

" 
hi pythonFunction ctermfg=7

hi pythonComment ctermfg=238
hi pythonTodo ctermfg=7 cterm=italic

hi pythonString ctermfg=106
hi pythonRawString ctermfg=106
hi pythonQuotes ctermfg=106
hi pythonTripleQuotes ctermfg=106

hi pythonEscape ctermfg=7

hi pythonNumber ctermfg=7

" False, True, None, NotImplemented, Ellipsis, __debug__, quit, exit, abs,
" all, any, ascii, breakpoint, dict, enumerate, eval, isinstance, ...
hi pythonBuiltin ctermfg=7

" Exception, RuntimeError, ...
hi pythonExceptions ctermfg=7

" Trailing spaces, mixed tabs and spaces
hi pythonSpaceError ctermfg=7

hi pythonDoctest ctermfg=7
hi pythonDoctestValue ctermfg=7

