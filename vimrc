"{{{ - Bundles
set rtp+=~/.vim/bundle/vundle
call vundle#rc()
Bundle 'gmarik/vundle'

Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-endwise'

Bundle 'textobj-user'
Bundle 'textobj-rubyblock'

Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'airblade/vim-gitgutter'
Bundle 'kien/ctrlp.vim'

Bundle 'mileszs/ack.vim'
Bundle 'matchit.zip'
Bundle 'godlygeek/tabular'
Bundle 'scratch.vim'

Bundle 'kchmck/vim-coffee-script'
Bundle 'skammer/vim-css-color'

Bundle 'Lokaltog/vim-powerline'
Bundle 'zaki/zazen'
Bundle 'zaki/zazen-powerline'
"}}}

"{{{ - General Settings
set nocompatible
if has("win32") || has("win64")
  source $VIMRUNTIME/vimrc_example.vim
  source $VIMRUNTIME/mswin.vim
  behave mswin
end

set viminfo^=!

" Syntax and appearance
syntax enable
filetype plugin indent on

set cf
set clipboard+=unnamed
set history=256
set autowrite
set ruler
set nu
set nowrap
set timeoutlen=250
set go=
set ut=30

" colorscheme
colorscheme zazen

set ts=2
set bs=2
set shiftwidth=2
set nocp incsearch
set cinoptions=:1s,t0
set cinwords=if,else,while,do,for,switch,case
set formatoptions=tcqr
set cindent
set autoindent
set smarttab
set expandtab

set backspace=indent,eol,start

set showmatch
set mat=3
set list

" Show $ at end of line and trailing space as ~
set lcs=tab:->,trail:~,extends:>,precedes:<
set novisualbell
set noerrorbells
set laststatus=2
" gvim specific
set mousehide
set mouse=a
let mapleader = ","

set incsearch
set hlsearch
set showcmd
set foldmethod=marker

set nobackup
set spell spelllang=en
if (has("gui"))
  set colorcolumn=100
end
"}}}

"{{{ - Plugin Settings
" NERDTree
let NERDTreeIgnore = ['\~$', '\.meta$']

" Ack
let g:ackhighlight=1

" Ruby/rails Settings
let g:rails_default_file='config/database.yml'

" Fugitive
noremap <Leader>gb :Gblame<CR>
noremap <Leader>gv :Gvdiff<CR>
noremap <Leader>gs :Gstatus<CR>

map <Leader>gl :Glog --max-count=10 --format=format:\%h\ \%cd\ \%an\ \%s --date=short<CR>
map <Leader>gs :Gstatus<CR>
map <Leader>gb :Gblame<CR>

" Powerline
let g:Powerline_theme            = 'zazen'
let g:Powerline_colorscheme      = 'zazen'
let g:Powerline_symbols          = 'compatible'
let g:Powerline_symbols_override = { 'BRANCH': '' }
"}}}

"{{{ - Map Settings
" General
inoremap ii <ESC>
inoremap jj <ESC>
imap <C-Space> <C-N>
noremap <Space> <C-f>
map :W :w
map :Q :q
inoremap <C-S> <ESC>:w<CR>a
noremap <C-S> :w<CR>
noremap 0 ^
noremap 00 0

" Accelerated movements
noremap <C-j> 5j
noremap <C-k> 5k
noremap <C-h> 5h
noremap <C-l> 5l
inoremap <C-j> <ESC>5<C-E>a
inoremap <C-k> <ESC>5<C-Y>a
inoremap <D-j> <ESC><C-E>a
inoremap <D-k> <ESC><C-Y>a

" Leaders
map <Leader>h :set invhls <CR>
map <Leader>n :NERDTreeToggle<CR>
map <Leader>f :Ack

" Rails
map <Leader>m :Rmodel
map <Leader>c :Rcontroller
map <Leader>v :Rview
map <Leader>r :e config/routes.rb

" File cleanup
map <Leader>cu :%s/ \+$//e \| %s/\t/  /ge<CR>
"}}}

"{{{ - Autocommand Settings
" Ruby
au FileType ruby,eruby set omnifunc=rubycomplete#Complete
au FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
au FileType ruby,eruby let g:rubycomplete_rails = 1
au FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

" F#
au BufRead *.fs set filetype=fs

" C#
au FileType cs setl ts=4 sw=4

" Tags
au FileType taglist setlocal nospell

" Jekyll
au BufNewFile,BufRead */_posts/*.markdown syntax match Comment /\%^---\_.\{-}---$/

""recalculate the trailing whitespace warning when idle, and after saving
au cursorhold,bufwritepost * unlet! b:statusline_trailing_space_warning
au cursorhold,bufwritepost * unlet! b:statusline_tab_warning
au cursorhold,bufwritepost * unlet! b:statusline_fwspace_warning
au! Cursorhold * exe 'match Error /　/'
"}}}

highlight diffAdded guifg=#00bf00
highlight diffRemoved guifg=#bf0000
highlight Pmenu ctermbg=238 gui=bold
