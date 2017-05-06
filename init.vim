syntax enable
:let $NVIM_TUI_ENABLE_CURSOR_SHAPE=0

call plug#begin()
	Plug 'tpope/vim-fugitive'
	Plug 'altercation/vim-colors-solarized'
	Plug 'scrooloose/syntastic'
	Plug 'derekwyatt/vim-scala', {'for': 'scala'}
	Plug 'vim-airline/vim-airline'
	Plug 'plasticboy/vim-markdown', {'for': 'md'}
call plug#end()

" solarized colorscheme
colorscheme solarized
set background=dark

" map Esc to home row
imap jk <Esc>
imap kj <Esc>

" remap the window movement keys without <C-w> prefix
nnoremap <C-h> <C-w><C-h>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>

"work with multiple files
set hidden

"set line numbers and relative line numbers
set nu

"syntastic options
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

let g:syntastic_scala_checkers = ['scalac', 'scalastyle']
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_post_args = "--max-line-length=100"

" let nvim know which python versions to use
let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'
