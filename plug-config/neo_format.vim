
" Need to specify garbage .cs file, so clang recognizes the language. 
" Add styling that is consistent with this project
let g:neoformat_cs_clangformat = {
            \ 'exe': 'clang-format',
            \ 'args': ['-assume-filename=some_cs.cs','-style="{BasedOnStyle: LLVM, IndentWidth: 4, TabWidth: 4, ColumnLimit: 0, BreakBeforeBraces: Allman, UseTab: ForIndentation }"'],
            \ 'stdin': 1
            \ }

let g:neoformat_enabled_cs= ['clangformat']

let g:neoformat_python_black= {
            \ 'exe': 'black',
            \ 'stdin': 1
            \ }

let g:neoformat_enabled_python= ['black']
