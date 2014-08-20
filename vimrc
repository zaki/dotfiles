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
Bundle 'tpope/vim-dispatch'

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
Bundle 'nosami/Omnisharp'
Bundle 'uggedal/go-vim'

Bundle 'zaki/zazen'
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

set confirm
set clipboard+=unnamed
set history=256
set autowrite
set ruler
set number
set nowrap
set timeoutlen=250
set guioptions=
set updatetime=30

" colorscheme
colorscheme zazen

set tabstop=2
set backspace=2
set shiftwidth=2
set backspace=indent,eol,start
set cindent
set autoindent
set smarttab
set expandtab
set listchars=tab:->,trail:~,extends:>,precedes:<
set nocompatible incsearch
set hlsearch
set cinoptions=:1s,t0
set cinwords=if,else,while,do,for,switch,case
set formatoptions=tcqr

set showmatch
set matchtime=3
set list

set novisualbell
set noerrorbells
set laststatus=2
" gvim specific
set mousehide
set mouse=a
let mapleader = ","

set showcmd
set foldmethod=marker

set nobackup
set spell spelllang=en
if (has("gui"))
  set colorcolumn=100
  set guifont=Sauce\ Code\ Powerline:h12
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
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

" Omnisharp
nnoremap gd :OmniSharpGotoDefinition<CR>
set completeopt=longest,menuone

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
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

" F#
autocmd BufRead *.fs set filetype=fs

" C#
autocmd FileType cs setl tabstop=4 shiftwidth=4
autocmd FileType cs setlocal omnifunc=OmniSharp#Complete

" Go
autocmd BufRead,BufNewFile *.go set filetype=go
autocmd FileType go setl tabstop=4 shiftwidth=4

" Tags
autocmd FileType taglist setlocal nospell

" Jekyll
autocmd BufNewFile,BufRead */_posts/*.markdown syntax match Comment /\%^---\_.\{-}---$/

""recalculate the trailing whitespace warning when idle, and after saving
autocmd cursorhold,bufwritepost * unlet! b:statusline_trailing_space_warning
autocmd cursorhold,bufwritepost * unlet! b:statusline_tab_warning
autocmd cursorhold,bufwritepost * unlet! b:statusline_fwspace_warning
autocmd! Cursorhold * exe 'match Error /　/'
"}}}

highlight diffAdded guifg=#00bf00
highlight diffRemoved guifg=#bf0000
highlight Pmenu ctermbg=238 gui=bold
