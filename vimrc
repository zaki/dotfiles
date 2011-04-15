set nocompatible
if has("win32") || has("win64")
  source $VIMRUNTIME/vimrc_example.vim
  source $VIMRUNTIME/mswin.vim
  behave mswin
end

set viminfo^=!

" Set up pathogen
call pathogen#runtime_append_all_bundles()

" Minibuffer Explorer Settings
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" Syntax and appearance
syntax enable
filetype on
au BufRead *.fs set filetype=fs

set cf
set clipboard+=unnamed
set history=256
set autowrite
set ruler
set nu
set nowrap
set timeoutlen=250
" colorscheme railscasts
colorscheme zazen

set ts=2
set bs=2
set shiftwidth=2
set nocp incsearch
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case
set formatoptions=tcqr
set cindent
set autoindent
set smarttab
set expandtab

set backspace=indent,eol,start

set showmatch
set mat=5
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

map <Leader>h :set invhls <CR>
map <Leader>l :lw<CR>

" Wiki settings
let g:vimwiki_list = [{'path': '~/Dropbox/Wiki/diary', 'ext': '.wiki', 'index': 'diary'}]

map :cloc :!cloc --exclude-dir=.git,.idea .<CR>
map <Leader>n :NERDTreeToggle<CR>

noremap <silent> <F11> :cal VimCommanderToggle()<CR>
let g:wimcommander_shallcd = 1

" Visual Studio style shortcuts
command! -nargs=+ SearchFor execute 'silent lgrep! -r <args>' | lopen
map <Leader>f :SearchFor  .<Left><Left>

imap <C-Space> <C-N>
noremap <Space> <C-f>

" Ruby/rails Settings
let g:rails_default_file='config/database.yml'
map <Leader>m :Rmodel
map <Leader>c :Rcontroller
map <Leader>v :Rview
map <Leader>r :e config/routes.rb
map :W :w
map :Q :q
inoremap <C-S> <ESC>:w<CR>a
noremap <C-S> :w<CR>

autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
"improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold

set statusline=%t%m%r%h%w\ %{fugitive#statusline()}\ [TYPE:%Y]
if ($RUBY_VERSION)
  set statusline+=\ [RUBY:%{$RUBY_VERSION}]
endif
map <Leader>r :RN<cr>

" Org Mode
set foldmethod=manual
filetype plugin indent on

let g:agenda_dirs='~/Dropbox/org/'
let g:agenda_files=['~/Dropbox/org/personal.org' 
                 \ ,'~/Dropbox/org/work.org'
                 \ ]

let g:org_todo_setup='SOMEDAY TODO NEXT STARTED | DONE CANCELED'
let g:org_tag_setup='{@home(h) @work(w)} {+top(t) +mid(m) +low(l)} {computer(c) phone(p)}'
map <Leader>cv :let b:v.columnview = 1 - b:v.columnview<CR>

au! BufRead,BufWrite,BufWritePost,BufNewFile *.org
au BufRead,BufNewFile *.org call org#SetOrgFileType()
au BufRead *.org :PreLoadTags
au BufWrite *.org :PreWriteTags
au BufWritePost *.org :PostWriteTags

let g:user_zen_settings = {
\  'indentation' : '  ',
\}


let g:SuperTabDefaultCompletionType = "context"
set nobackup
set spell spelllang=en
inoremap ii <ESC>
inoremap jj <ESC>

noremap 0 ^
noremap 00 0
noremap <C-j> 5j
noremap <C-k> 5k
noremap <C-h> 5h
noremap <C-l> 5l

noremap <Leader>gb :Gblame<CR>
noremap <Leader>gv :Gvdiff<CR>
noremap <Leader>gs :Gstatus<CR>

