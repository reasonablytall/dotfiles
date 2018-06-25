" Configuration for completion, snippits, LSP

" asyncomplete bindings
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
inoremap <expr> <C-l> pumvisible() ? "\<C-y>" : "\<C-l>"

" Visual settings
let g:lsp_signs_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1

" Remove completion duplicates
let g:asyncomplete_remove_duplicates = 1

" Auto-remove completion info window
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" lsp command bindings
noremap gd :LspDefinition<CR>

if executable('pyls')
  au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'whitelist': ['python'],
        \ })
endif

if executable('javascript-typescript-stdio')
  au User lsp_setup call lsp#register_server({
        \ 'name': 'javascript-typescript-stdio',
        \ 'cmd': {server_info->['javascript-typescript-stdio']},
        \ 'whitelist': ['typescript'],
        \ })
endif

if has('python3')
  let g:UltiSnipsExpandTrigger="<c-l>"
  call asyncomplete#register_source(asyncomplete#sources#ultisnips#get_source_options({
        \ 'name': 'ultisnips',
        \ 'whitelist': ['*'],
        \ 'completor': function('asyncomplete#sources#ultisnips#completor'),
        \ }))
endif
