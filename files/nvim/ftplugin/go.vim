" In ~/.vim/ftplugin/go.vim

setlocal noexpandtab
setlocal tabstop=4
setlocal shiftwidth=4 

" go-vim bindings
" ---
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nmap <Leader>a :GoAlternate<CR>
nmap <leader>r <Plug>(go-run)
nmap <leader>t <Plug>(go-test)
nmap <Leader>c <Plug>(go-coverage-toggle)

" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction
nmap <leader>b :<C-u>call <SID>build_go_files()<CR>

