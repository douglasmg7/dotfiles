set runtimepath+=~/.vim,~/.vim/after
set packpath+=~/.vim
source ~/.vimrc

call plug#begin('<auto_load_directory>/plugged')
    Plug 'Mofiqul/vscode.nvim'
call plug#end()
