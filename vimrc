set nocompatible
filetype off

call plug#begin('~/.vim/bundle')

Plug 'jiangmiao/auto-pairs'
Plug 'jlanzarotta/bufexplorer'
Plug 'scrooloose/nerdtree'
Plug 'godlygeek/tabular'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdtree'
Plug 'tomtom/tcomment_vim'
Plug 'tomtom/tlib_vim'
Plug 'SirVer/ultisnips'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'zeis/vim-kolor'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
Plug 'Quramy/vim-js-pretty-template', { 'for': [ 'javascript','typescript' ] }
Plug 'Quramy/tsuquyomi', { 'for': 'typescript' }
Plug 'kkvh/vim-docker-tools'
Plug 'tpope/vim-scriptease'
Plug 'wesQ3/vim-windowswap'
Plug 'pangloss/vim-javascript', { 'for': ['javascript','javascript.jsx','typescript','vue' ] }
Plug 'mxw/vim-jsx', { 'for': [ 'javascript','javascript.jsx' ] }
Plug 'mattn/emmet-vim', { 'for': ['javascript','javascript.jsx'] }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'ryanoasis/vim-devicons'

call plug#end()

syntax on
filetype plugin indent on
try
	colorscheme kolor
catch
endtry
"Set the status line options. Make it show more information.
set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\[POS=%l,%v][%p%%]\%{strftime(\"%d/%m/%y\ -\ %H:%M\")}
"set line no, buffer, search, highlight, autoindent and more.
set nu hidden ignorecase incsearch smartcase showmatch autoindent ruler vb noerrorbells showcmd
set mouse=a
set history=1000
set undolevels=1000
set nowrap
set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4 
let mapleader = ','
if has('mac')
	nnoremap <silent> ˚ <C-W>k
	nnoremap <silent> ∆ <C-W>j
	nnoremap <silent> ˙ <C-W>h
	nnoremap <silent> ¬ <C-W>l
	nnoremap <silent>  <C-W>K
	nnoremap <silent> Ô <C-W>J
	nnoremap <silent> Ó <C-W>H
	nnoremap <silent> Ò <C-W>L
	if has('terminal')
		tnoremap <silent> ˚ <C-W>k
		tnoremap <silent> ∆ <C-W>j
		tnoremap <silent> ˙ <C-W>h
		tnoremap <silent> ¬ <C-W>l
	endif
else
	nnoremap <silent> <A-Up> <C-W>k
	nnoremap <silent> <A-Down> <C-W>j
	nnoremap <silent> <A-Left> <C-W>h
	nnoremap <silent> <A-Right> <C-W>l
	if has('terminal')
		tnoremap <silent> <A-Up> <C-W>k
		tnoremap <silent> <A-Down> <C-W>j
		tnoremap <silent> <A-Left> <C-W>h
		tnoremap <silent> <A-Right> <C-W>l
	endif
endif

"NERDTree 
let NERDTreeShowHidden=1
nnoremap <F5> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"

"BufExplorer
nnoremap <silent> <F12> :BufExplorer<CR>
" nnoremap <silent> <F12> :bn<CR>
" nnoremap <silent> <S-F12> :bp<CR>

"Tagbar 
nnoremap <silent> <F6> :TagbarToggle<CR>
let g:tagbar_left=1

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

let g:EasyMotion_leader_key = '<space>'

"Clipboard
set clipboard=unnamedplus

"Airline
let g:airline#extensions#coc#enabled = 1

"AirlineTheme
let g:airline_theme='powerlineish'
let g:airline_powerline_fonts = 1

"Indent Guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2

"Vim Developement
au BufWritePost *.vim :silent source %
nnoremap <F9> :DockerToolsToggle<CR>

"Govim
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1
let g:go_metalinter_enabled = ['vet', 'vetshadow', 'golint', 'errcheck', 'deadcode', 'dupl', 'goconst', 'gosec']

au BufWritePost *.go :silent GoBuild
au FileType go nnoremap <F7> :GoSameIdsToggle<CR>

"Js pretty template
au FileType javascript JsPreTmpl

"Vue Development
command! VueAlternate :call VueAlternate()

function! VueAlternate()
	if match(expand('%'),'.spec.js') == -1
		silent execute 'vsplit '.expand('%').'.spec.js'
	else
		silent execute 'vsplit '.substitute(expand('%'),'.spec.js','','')
	endif
endfunction

command! JSONFormat %!python -m json.tool

"Quick diff toggle
nnoremap <F10> :call DiffToggle()<CR>
function! DiffToggle()
	if &diff
		silent diffoff!
	else
		silent diffthis
	endif
endfunction
