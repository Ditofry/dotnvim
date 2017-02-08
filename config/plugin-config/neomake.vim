"" Neomake
"" ---------------------------------------------------------------------------

autocmd! BufWritePost * Neomake

let g:neomake_warning_sign = {
    \ 'text': '✗',
    \ 'texthl': 'ErrorMsg',
    \ }
let g:neomake_error_sign = {
    \ 'text': '⚠',
    \ 'texthl': 'ErrorMsg',
    \ }

let g:neomake_javascript_enabled_makers = ['standard']
