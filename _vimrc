" pathogen
runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()

autocmd FileType scss,css,dtml,xml,html,django,htmldjango set tabstop=2 shiftwidth=2
autocmd FileType js,javascript,python,python.django set tabstop=4 shiftwidth=4

let $VIMRC='/media/Storage/Application Data/Vim/vimfiles/_vimrc'
let g:ackprg="ack-grep -H --nocolor --nogroup --column"
let g:session_directory='~/.vim/sessions'
let g:session_autosave = 1
let g:session_autoload = 1

set autoindent
set expandtab
set nocompatible
set background=dark
"if has("win32")
"  set guifont=ProFontWindows:h9
"else
set foldmethod=indent
set gdefault
set guifont=ProFont\ 8
set hidden
set hlsearch
set ignorecase
set incsearch
" always show status line
set laststatus=2
set nobackup
set nowritebackup
" minimal lines above and below cursor
set scrolloff=3
set shiftwidth=2
set showbreak=@
set showmatch
set smartcase
set smarttab
" do not store global and local values in a session
set ssop-=options
" do not store folds
set ssop-=folds

set tabstop=2
set undofile
set wildmenu
set wrapscan

" avoid invisible empty line at the end
set binary
set noeol

" shortcuts
nnoremap <silent> <F9> :NERDTreeToggle<CR>
nnoremap <silent> <F11> :set list!<CR>
nnoremap <silent> <F12> :set nu!<CR>

" move lines even when they wrap
nnoremap j gj
nnoremap k gk

let mapleader = ","

" clear search with space
nnoremap <leader><space> :noh<cr>

" match brackets with tab instead of %
nnoremap <tab> %
vnoremap <tab> %

" switch backward search with forward (easier for german keyboard)
nnoremap # *
nnoremap * #

" solarized
let g:solarized_contrast="high"
color solarized

let NERDTreeIgnore = ['\.pyc$']
let NERDTreeIgnore += ['__init__.py']

nmap <leader>a <Esc>:Ack!

" update the system settings from my vimrc file
map <leader>u :source $VIMRC<cr>

filetype plugin indent on

" automatically open syntastic location list 
let g:syntastic_auto_loc_list=1
let g:syntastic_mode_map = { 'mode': 'passive',
                           \ 'active_filetypes': [],
                           \ 'passive_filetypes': [] }
