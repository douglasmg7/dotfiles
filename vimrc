set nocompatible	" be iMproved, required - require by vundle
filetype off		" vim do not try define the file type - required by vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'  " let Vundle manage Vundle, required
Plugin 'kchmck/vim-coffee-script' " syntax, ident, compile and more for coffee-script
Plugin 'easymotion/vim-easymotion' " vim motions on speed
Plugin 'moll/vim-node' " node tools
Plugin 'vim-scripts/ScrollColors' 
Plugin 'tpope/vim-fugitive' " git wrapper
Plugin 'scrooloose/nerdtree' " color scroller, chooser and browser
Plugin 'tpope/vim-surround' " quoting/parenthesizing made simple
Plugin 'scrooloose/nerdcommenter' " intensely orgasmic commenting
Plugin 'vim-airline/vim-airline' " lean & mean status/tabline for vim that's light as air
Plugin 'vim-airline/vim-airline-themes' " airline themes
Plugin 'ctrlpvim/ctrlp.vim' " full path fuzzy file, buffer, mru, tag, ... finder
Plugin 'digitaltoad/vim-pug' " syntax highligth and idention for pug
Plugin 'posva/vim-vue' " syntax highligth for vue.js components
Plugin 'wavded/vim-stylus' " syntax highligth for stylus
Plugin 'scrooloose/syntastic' " syntax check (linter)
Plugin 'pangloss/vim-javascript' " syntax highlighting and improved indentation for java script
Plugin 'twerth/ir_black' " colorscheme
Plugin 'notpratheek/vim-luna' " colorscheme
Plugin 'morhetz/gruvbox' " colorscheme
Plugin 'tomasr/molokai' " colorscheme
Plugin 'mhartington/oceanic-next' " colorscheme
Plugin 'altercation/vim-colors-solarized' " colorscheme
Plugin 'terryma/vim-multiple-cursors' " true sublime text style multiple selections for vim
Plugin 'sirver/ultisnips' " snippet engine
Plugin 'honza/vim-snippets' " snippets

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin on    " required by vundle - end vundle

" set backspace=indent,eol,start

set t_Co=256
syntax enable

" set background=dark
" colorscheme ir_black

set background=dark
if !has("gui_running")
  let g:solarized_termtrans=1
  let g:solarized_termcolors=256
endif
colorscheme solarized

set guioptions-=m		"remove menu bar
set guioptions-=T		"remove toolbar
set guioptions-=r		"remove right-hand scroll bar
set guioptions-=L		"remove left-hand scroll bar

set tabstop=2   		"how many columns a tab count for
set shiftwidth=2		"how many columns text is identend with << and >>
set softtabstop=2       "control how many columns vim uses when you hit <tab>
set expandtab			"hitting tab will produce spaces
" set noexpandtab			"hitting tab will not produce spaces

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

set hidden    "  keep the changes to the buffer without writing them to the file
set autowrite     " set autowriteall
set autowriteall  " set autowriteall

let mapleader="\<space>"

" plugins
" the nerd commenter
let g:NERDSpaceDelims=1 " number of space when comment
" airline
set laststatus=2  " always show statusline
let g:airline_powerline_fonts=1  " populate g:airline_symbols dictionary with the powerline symbols
let g:airline#extensions#tabline#enabled=1  " smart tab line
" nerd tree
nnoremap <f5> :NERDTreeToggle<cr>
" syntastic
let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_javascript_eslint_exe = '$(npm bin)/eslint'
" snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

execute pathogen#infect()

" go to normal mode
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

" disable backspace
inoremap <bs> <nop>
" disable del
inoremap <del> <nop>

"move to begin of line
nnoremap H 0
"move to end of line
nnoremap L $

"open .vimrc in to split view
nnoremap <leader>ev :e $MYVIMRC<cr>
"save and reload .vimrc
nnoremap <leader>wv :w<cr>:so $MYVIMRC<cr>

"surround the word in double quotes
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
"surround the word in quotes
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel

" buffer next/previous/delete
nnoremap gn :bnext<cr>
nnoremap gp :bprevious<cr>
nnoremap <C-d> :bd<cr>

"remove line into insert mode
inoremap <C-d> <esc>ddi
"upper-case word into insert mode
inoremap <C-u> <esc>viwua

"example of abbreviation
iabbrev vc voce

"example of autocmd
autocmd filetype javascript iabbrev <buffer>cl console.log(
autocmd filetype javascript set commentstring=#\ %s

