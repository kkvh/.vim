execute pathogen#infect()
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
"NERDTree 
let NERDTreeShowHidden=1
nnoremap <F5> :NERDTree<CR>
let g:NERDTreeWinPos = "right"
"Snipmate 
:filetype plugin on
"BufExplorer
nnoremap <silent> <A-F12> :BufExplorer<CR>
nnoremap <silent> <F12> :bn<CR>
nnoremap <silent> <S-F12> :bp<CR>
"Split
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>
"Tagbar 
nnoremap <silent> <F6> :TagbarToggle<CR>
let g:tagbar_left=1
:colorscheme molokai
let g:syntastic_check_on_open = 1
