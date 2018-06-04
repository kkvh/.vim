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
Plug 'ervandew/supertab'
Plug 'easymotion/vim-easymotion'
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --go-completer --js-completer'}
Plug 'digitaltoad/vim-pug', { 'for': [ 'vue','pug' ] }
Plug 'posva/vim-vue', { 'for': 'vue' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
Plug 'jason0x43/vim-js-indent', { 'for': [ 'javascript','typescript','vue' ] }
Plug 'Quramy/vim-js-pretty-template', { 'for': [ 'javascript','typescript' ] }
Plug 'Quramy/tsuquyomi', { 'for': 'typescript' }
Plug 'kevinhui/vim-docker-tools'
Plug 'elmcast/elm-vim', { 'for': 'elm' }
Plug 'mrtazz/simplenote.vim'

call plug#end()

syntax on
filetype plugin indent on
"Set the status line options. Make it show more information.
set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\[POS=%l,%v][%p%%]\%{strftime(\"%d/%m/%y\ -\ %H:%M\")}
"Set Color Scheme and Font Options
set guifont=Consolas:h12
"set line no, buffer, search, highlight, autoindent and more.
set nu
set hidden
set ignorecase
set incsearch
set smartcase
set showmatch
set autoindent
set ruler
set vb
set noerrorbells
set showcmd
set mouse=a
set history=1000
set undolevels=1000
set nowrap
let mapleader = ','
"Tabsetting
set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4 
"NERDTree 
let NERDTreeShowHidden=1
nnoremap <F5> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"
"Snipmate 
:filetype plugin on
"BufExplorer
nnoremap <silent> <F12> :BufExplorer<CR>
" nnoremap <silent> <F12> :bn<CR>
" nnoremap <silent> <S-F12> :bp<CR>
"Split
if has('mac')
	nnoremap <silent> ˚ :wincmd k<CR>
	nnoremap <silent> ∆ :wincmd j<CR>
	nnoremap <silent> ˙ :wincmd h<CR>
	nnoremap <silent> ¬ :wincmd l<CR>
	nnoremap <silent>  :wincmd K<CR>
	nnoremap <silent> Ô :wincmd J<CR>
	nnoremap <silent> Ó :wincmd H<CR>
	nnoremap <silent> Ò :wincmd L<CR>
endif
if has('terminal')
	tnoremap <silent> ˚ <C-W>k
	tnoremap <silent> ∆ <C-W>j
	tnoremap <silent> ˙ <C-W>h
	tnoremap <silent> ¬ <C-W>l
endif
" nmap <silent> <A-Up> :wincmd k<CR>
" nmap <silent> <A-Down> :wincmd j<CR>
" nmap <silent> <A-Left> :wincmd h<CR>
" nmap <silent> <A-Right> :wincmd l<CR>
"Tagbar 
nnoremap <silent> <F6> :TagbarToggle<CR>
let g:tagbar_left=1
:colorscheme kolor
" :colorscheme monokai

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

let g:EasyMotion_leader_key = '<space>'

"Clipboard
set clipboard=unnamed

"Vim-go
nnoremap <F7> :GoSameIdsToggle<CR>

"AirlineTheme
let g:airline_theme='powerlineish'

"Indent Guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2

"Vim Developement
:au BufWritePost *.vim :silent source %
nnoremap <F9> :ToggleVDSplit<CR>

:au BufWritePost *.go :silent GoInstall

"Govim
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1

"Js pretty template
au FileType javascript JsPreTmpl html

"Vue Development
" command! VueAlternate :call VueAlternate()
"
" function! VueAlternate()
" 	if match(expand('%'),'.spec.js') == -1
" 		silent execute 'vsplit '.expand('%').'.spec.js'
" 	else
" 		silent execute 'vsplit '.substitute(expand('%'),'.spec.js','','')
" 	endif
" endfunction

"simplenote.vim
if has('mac')
	let g:SimplenoteUsername = 'huikikwankevin@gmail.com'
	let g:SimplenotePassword = system(printf("echo -n `security find-generic-password -g -w -a %s -l Simplenote`",g:SimplenoteUsername))
endif
