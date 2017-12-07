set nocompatible
filetype off

call plug#begin('~/.vim/bundle')

Plug 'jiangmiao/auto-pairs'
Plug 'jlanzarotta/bufexplorer'
Plug 'scrooloose/nerdtree'
Plug 'godlygeek/tabular'
Plug 'majutsushi/tagbar'
Plug 'tomtom/tcomment_vim'
Plug 'tomtom/tlib_vim'
Plug 'SirVer/ultisnips'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'zeis/vim-kolor'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-surround'
Plug 'ervandew/supertab'
Plug 'easymotion/vim-easymotion'
Plug 'fatih/vim-go'
Plug 'Valloric/YouCompleteMe'
Plug 'digitaltoad/vim-pug'
Plug 'posva/vim-vue'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'nathanaelkane/vim-indent-guides'

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
nnoremap <silent> ˚ :wincmd k<CR>
nnoremap <silent> ∆ :wincmd j<CR>
nnoremap <silent> ˙ :wincmd h<CR>
nnoremap <silent> ¬ :wincmd l<CR>
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

"GitGutter
let g:gitgutter_map_keys = 0
let g:gitgutter_enabled = 0
let g:gitgutter_highlight_lines = 1
nnoremap <F8> :GitGutterToggle<CR>

"Indent Guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2
