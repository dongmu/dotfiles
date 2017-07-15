"""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""""
set history=700

filetype plugin on
filetype indent on

set autoread

set nocp

nmap <leader>w :w!<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

"Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Number
set nu

" indent
set autoindent
" set smartindent
" set foldmethod=indent
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" on pressing tab, insert 4 spaces
set expandtab

"""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

" colorscheme desert
" colorscheme monokai
" colorscheme dracula
colorscheme atom-dark-256
" colorscheme monokai-soda
set background=dark

set t_Co=256


" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions+=e
    set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8
"""""""""""""""""""""""""""""""""""""""""""""""""""
" Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
" set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

""""""""""""""""""""""""""""""
" => vim-airline
""""""""""""""""""""""""""""""

" let g:airline_section_b = '%{strftime("%c")}'
" let g:airline_section_y = 'BN: %{bufnr("%")}'
let g:airline_theme='luna'
" let g:airline_theme='dracula'

let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#branch#empty_message=''

if !exists('g:airline_symbols')
 let g:airline_symbols = {}
endif
let g:airline_symbols.linenr='¶'
let g:airline_symbols.branch='⎇ '



"""""""""""""""""""""""""""""""""""""""""""""""""""
" Help Function
"""""""""""""""""""""""""""""""""""""""""""""""""""


" Returns true if paste mode is enabled
function! HasPaste()
 if &paste
  return 'PASTE MODE '
 en
  return ''
endfunction




" TagList
nnoremap <silent> <F9> :TlistToggle<CR>

" JavaComplete
setlocal omnifunc=javacomplete#Complete



""""""""""""""""""""""""""""""""""""""""""""""""""
" markbrowser setting
""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <silent> ,mk :MarksBrowser<cr>



""""""""""""""""""""""""""""""""""""""""""""""""""
" showmarks
""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <silent> ,mo :DoShowMarks<cr>
nmap <silent> ,ml :NoShowMarks<cr>
"let hlShowMarks = 0



""""""""""""""""""""""""""""""""""""""""""""""""""
" NERD Tree
""""""""""""""""""""""""""""""""""""""""""""""""""
let NERDChristmasTree=1
let NERDTreeAutoCenter=1
let NERDTreeMouseMode=2
let NERDTreeShowBookmarks=1
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=1
let NERDTreeWinPos='left'
let NERDTreeWinSize=31
nnoremap <F10> :NERDTreeToggle<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""
" VIMTAGBAR
""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <F7> :TagbarToggle<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""
" CCTREE
""""""""""""""""""""""""""""""""""""""""""""""""""
let g:CCTreeCscopeDb="cscope.out"
let g:CCTreeReccursiveDepth=5
let g:CCTreeMinVisibleDepth=3
let g:CCTreeOrientation="leftabove"
let g:CCTreeWindowVertical=1
let g:CCTreeWindowMinWidth=30


""""""""""""""""""""""""""""""""""""""""""""""""""
" SrcExpl
""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <F6> :SrcExplToggle<CR>
let g:SrcExpl_winHeight=8
let g:SrcExpl_refreshTime=100
let g:SrcExpl_jumpKey="<ENTER>"
let g:SrcExpl_gobackKey="<SPACE>"
let g:SrcExpl_searchLocalDef=1
let g:SrcExpl_isUpdateTags=0
let g:SrcExpl_updateTagsCmd="ctags --sort=foldcase -R ."
let g:SrcExpl_updateTagsKey="<F12>"
let g:SrcExpl_prevDefKey="<F3>"
let g:SrcExpl_nextDefKey="<F4>"


" Take care of Java
autocmd FileType java setlocal shiftwidth=4 tabstop=4
