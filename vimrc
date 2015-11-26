set nocompatible	" be iMproved, required - require by vundle
filetype off		" vim do not try define the file type - required by vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'kchmck/vim-coffee-script'
Plugin 'digitaltoad/vim-jade'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'moll/vim-node'
Plugin 'vim-scripts/ScrollColors'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'tpope/vim-commentary.git' " simple comment/uncomment plugin

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin on    " required by vundle - end vundle

set t_Co=256
syntax on
colorscheme ir_black
set background=dark		"light

set guioptions-=m		"remove menu bar
set guioptions-=T		"remove toolbar
set guioptions-=r		"remove right-hand scroll bar
set guioptions-=L		"remove left-hand scroll bar

set tabstop=4   		"how many columns a tab count for
set shiftwidth=4		"how many columns text is identend with << and >>
set softtabstop=4       "control how many columns vim uses when you hit <tab>
set noexpandtab			"hitting tab will not produce spaces

set number				"show line number
set numberwidth=3		"line number width

set nowrap				"no wrap

"set lines=33			"window height 
"set columns=90			"window width - external monitor
"set columns=77			"window width - laptop

set ignorecase			"ignore case in search
set smartcase			"no ignore case if has some upper case letter

set autoindent
set smartindent

set hls					" set higlight for search

execute pathogen#infect()

let mapleader="-"		"define the leader

"to normal mode
inoremap jk <esc>
inoremap <esc> <nop>

"diseable arrows
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

"move to begin of line
nnoremap H 0

"move to end of line
nnoremap L $

"open .vimrc in to split view
"nnoremap <leader>ev :sp $MYVIMRC<cr>
nnoremap <leader>ev :e $MYVIMRC<cr>

"save and reload .vimrc
nnoremap <leader>wv :w<cr>:so $MYVIMRC<cr>

"remove line into insert mode
inoremap <c-d> <esc>ddi

"upper-case word into insert mode
inoremap <c-u> <esc>viwUA

"surround the word in double quotes
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel

"example of abbreviation
iabbrev vc voce

"example of autocmd
autocmd FileType javascript iabbrev <buffer>cl console.log(
autocmd FileType javascript set commentstring=#\ %s
