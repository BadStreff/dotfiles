" In ~/.vim/ftplugin/python.vim

" Check Python files with pylint.
let b:ale_linters = ['pylint']

" Fix Python files with autopep8 and yapf.
let b:ale_fixers = ['autopep8', 'yapf']

" Disable jedi preview window
setlocal completeopt-=preview
