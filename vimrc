set nocompatible	" be iMproved, required - require by vundle
filetype off		" vim do not try define the file type - required by vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'  " let Vundle manage Vundle, required
" Plugin 'kchmck/vim-coffee-script' " syntax, ident, compile and more for coffee-script
Plugin 'easymotion/vim-easymotion' " vim motions on speed
Plugin 'moll/vim-node' " node tools
Plugin 'vim-scripts/ScrollColors'
" Plugin 'tpope/vim-fugitive' " git wrapper
Plugin 'scrooloose/nerdtree' " A tree explorer plugin for vim
Plugin 'tpope/vim-surround' " Quoting/parenthesizing made simple
Plugin 'scrooloose/nerdcommenter' " intensely orgasmic commenting
Plugin 'ctrlpvim/ctrlp.vim' " full path fuzzy file, buffer, mru, tag, ... finder
Plugin 'digitaltoad/vim-pug' " syntax highligth and idention for pug
Plugin 'posva/vim-vue' " syntax highligth for vue.js components
Plugin 'wavded/vim-stylus' " syntax highligth for stylus
" Plugin 'scrooloose/syntastic' " syntax check (linter)
Plugin 'pangloss/vim-javascript' " syntax highlighting and improved indentation for java script

" Colorschemes.
Plugin 'twerth/ir_black'
Plugin 'altercation/vim-colors-solarized'
Plugin 'morhetz/gruvbox'
Plugin 'nanotech/jellybeans.vim' 
Plugin 'tomasr/molokai'
Plugin 'tomasiser/vim-code-dark'

Plugin 'terryma/vim-multiple-cursors' " true sublime text style multiple selections for vim
" Plugin 'sirver/ultisnips' " snippet engine
" Plugin 'honza/vim-snippets' " snippets
Plugin 'bling/vim-bufferline' " Super simple vim plugin to show the list of buffers in the command bar
" Plugin 'lifepillar/vim-solarized8'
Plugin 'fatih/vim-go' " Go development plugin for Vim
Plugin 'rust-lang/rust.vim' " Vim configuration for Rust.
" Plugin 'gisraptor/vim-lilypond-integrator'  " Vim Lilypond Integrator.
Plugin 'valloric/youcompleteme'   " A code-completion engine for Vim.
" Plugin 'kshenoy/vim-signature'    " Place, toggle and display marks.
Plugin 'mattn/emmet-vim'	" Emmet for vim.
Plugin 'majutsushi/tagbar'  " Dispaly tags in a window.

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin on    " required by vundle - end vundle

" conif backspace
" set backspace=indent,eol,start

syntax enable
set termguicolors

" set background=dark
" colorscheme ir_black
" " hi SpellCap ctermfg=000 ctermbg=000 guifg=#af0000 guibg=#af0000
" " hi SpellBad ctermfg=000 ctermbg=000 guifg=#af0000 guibg=#af0000
" " hi SpellCap ctermbg=236
" hi SpellCap ctermbg=099
" hi SpellBad ctermbg=088

" set background=light
" let g:solarized_termcolors=256
" let g:solarized_contrast="high"
" let g:solarized_visibility="high"
" colorscheme solarized

set background=dark
let g:gruvbox_contrast_light='hard'
colorscheme gruvbox

" set guioptions-=m		"remove menu bar
" set guioptions-=T		"remove toolbar
set guioptions-=r		"remove right-hand scroll bar
set guioptions-=L		"remove left-hand scroll bar

set tabstop=4			"how many columns a tab count for
set shiftwidth=4		"how many columns text is identend with << and >>
set softtabstop=4       "control how many columns vim uses when you hit <tab>
" set expandtab			"hitting tab will produce spaces
" set noexpandtab		"hitting tab will not produce spaces
set number				"show line number
set numberwidth=4		"line number width

" set nowrap				"no wrap
" set wrap
" set textwidth=20
set wrap linebreak

"set lines=33			"window height
"set columns=90			"window width - external monitor
"set columns=77			"window width - laptop

set ignorecase			"ignore case in search
set smartcase			"no ignore case if has some upper case letter
set autoindent
set smartindent
set hls					" set higlight for search

set hidden    " opening a new file when the current buffer has unsaved changes causes files to be hidden instead of closed.
" set autowrite     " set autowriteall
" set autowriteall  " set autowriteall

" Disable automatic newline at end of file.
set noeol
set binary

" Status bar format.
" set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L] 
" set laststatus=2  " always show statusline
" set laststatus=1
set laststatus=2

" let mapleader="\<space>"
let mapleader="-"

" the nerd commenter
let g:NERDSpaceDelims=1 " number of space when comment

" YCM
" let g:ycm_autoclose_preview_window_after_insertion=1
let g:ycm_autoclose_preview_window_after_completion=1
" let g:ycm_add_preview_to_completeopt = 0
" set completeopt=preview,menuone " :set completeopt?
" set completeopt=longest,menuone
set completeopt=menuone

" Run python script inside vimrc example, :py3 say_hello()
py3 << EOF
def say_hello():
  print("Sup doc.")
EOF

" Emmet.
" let g:user_emmet_leader_key=','

" ctrlp pugin setup.
" let g:ctrlp_custom_ignore = 'node_modules\|vendor\|.git'
let g:ctrlp_custom_ignore = { 'dir': 'vendor' }

" nerd tree
nnoremap <f5> :NERDTreeToggle<cr>

" TagBar 
nnoremap <F8> :TagbarToggle<cr>

" syntastic
let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_javascript_eslint_exe = '$(npm bin)/eslint'

" snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" go to normal mode
inoremap jk <esc>
inoremap <esc> <nop>

" diseable arrows
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

" disable backspace
" inoremap <bs> <nop>
" disable del
" inoremap <del> <nop>

" move to begin of line
" nnoremap H 0
" move to end of line
" nnoremap L $

" page up
nnoremap <C-f> z+
" page down
nnoremap <C-b> z^

" open .vimrc in to split view
" nnoremap <leader>ev :e $MYVIMRC<cr>
nnoremap <leader>ev :e ~/.vimrc<cr>

" save and reload .vimrc
" nnoremap <leader>wv :w<cr>:so $MYVIMRC<cr>
nnoremap <leader>wv :w<cr>:so ~/.vimrc<cr>

" surround the word in double quotes
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
" surround the word in quotes
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel

" buffer next/previous/delete
nnoremap gn :bnext<cr>
nnoremap gp :bprevious<cr>
nnoremap <C-d> :bd<cr>

" remove line into insert mode
inoremap <C-d> <esc>ddi
" upper-case word into insert mode
inoremap <C-u> <esc>viwua

" example of abbreviation
iabbrev vc voce

" golang
" save and run
au filetype go map <leader>r :w <bar> !go run %<cr>
" au BufRead *.go inoremap { {<cr>}<esc>ko
" autocmd filetype go inoremap { {<cr>}<esc>ko
" autocmd filetype go inoremap ( ()<esc>i

" rust
" Format on save.
let g:rustfmt_autosave = 1
" Save and build.
au filetype rust map <leader>b :w <bar> !cargo build <cr>
au filetype rust map <leader>r :w <bar> !cargo run <cr>
au filetype rust map <leader>t :RustTest <cr>

" example of autocmd
autocmd filetype javascript iabbrev <buffer>cl console.log(
autocmd filetype javascript set commentstring=#\ %s

" Disable insert comment after insert a blank line after a comment line.
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" File type detect.
au BufNewFile,BufRead *.html set filetype=gohtmltmpl
au BufNewFile,BufRead *.tmpl set filetype=gohtmltmpl
au BufNewFile,BufRead *.tpl set filetype=gohtmltmpl
au BufNewFile,BufRead *.gohtml set filetype=gohtmltmpl
au BufNewFile,BufRead *.bundle set filetype=javascript

" At end, because some thing is reseting.
set expandtab			"hitting tab will produce spaces

nmap à `a
nmap Á 'A
nmap À `A
nmap ç 'c
nmap Ç 'C
nmap é 'e
nmap è `e
nmap É 'E
nmap È `E
nmap í 'i
nmap ì `i
nmap Í 'I
nmap Ì `I
nmap ó 'o
nmap ò `o
nmap Ó 'O
nmap Ò `O
nmap ú 'u
nmap ù `u
nmap Ú 'U
nmap Ù `U