set nocompatible

""" VIM-PLUG
call plug#begin('~/.vim/plugged')

" Basic
Plug 'tpope/vim-repeat'

" http://stackoverflow.com/questions/12230290/vim-errors-on-vim-startup-when-run-in-fish-shell
set shell=/bin/sh

" Hide startup message
set shortmess=atI

" Enable filetype detection
filetype plugin indent on

" Enable syntax highlighting
syntax on
Plug 'sheerun/vim-polyglot'

" Don’t highlight after 1000th column
set synmaxcol=700

" Show line numbers
set number

" Highlight 100th column
set textwidth=100
set colorcolumn=+0

"Faster switch from insert to normal mode
set ttimeoutlen=50

" update 500ms after stop typing
set updatetime=200

" Default to soft tabs/two spaces
set expandtab
set smarttab
set tabstop=2
set shiftwidth=2
set softtabstop=2

" Complete all the commands!
set wildmenu
set wildmode=list:longest,full

" Do not show invisibles
set nolist

" Do not wrap lines
set nowrap

" Soft wrap
set linebreak

" Mouse support
set mouse=a

" Fix mouse issues in wide terminal windows
if has("mouse_sgr")
  set ttymouse=sgr
else
  set ttymouse=xterm2
end

" Share clipboard
set clipboard=unnamed

" UTF-8
set nobomb
set encoding=utf-8
set fileencoding=utf-8

" Reload changes if detected
set autoread

" Buffer search
set hlsearch   " Search highlighting
set incsearch  " Highlight search as you type
set ignorecase " Ignore case in search...
set smartcase  " ... except when pattern contains uppercase characters
set gdefault   " Search globally by default

" Auto-continue comments
set formatoptions=croql
silent! set formatoptions+=j

" Undo settings
set undofile
set undolevels=1000
set undoreload=10000

" Natural split direction
set splitbelow
set splitright

" Don't store data about old buffers
set nohidden

" Don't reset cursor to start of line when moving around
set nostartofline

" Start scrolling before hitting window border
set scrolloff=3
set sidescroll=1
set sidescrolloff=10

" Centralize administrational files
set backupdir=~/.vim/backup
set directory=~/.vim/swap
set undodir=~/.vim/undo
set viewdir=~/.vim/view
if !isdirectory(expand(&backupdir))
  call mkdir(expand(&backupdir), "p")
endif
if !isdirectory(expand(&directory))
  call mkdir(expand(&directory), "p")
endif
if !isdirectory(expand(&undodir))
  call mkdir(expand(&undodir), "p")
endif
if !isdirectory(expand(&viewdir))
  call mkdir(expand(&viewdir), "p")
endif

" Use syntax omnicomplete if no ft specific is available
if has("autocmd") && exists("+omnifunc")
  autocmd Filetype *
        \ if &omnifunc == "" |
        \   setlocal omnifunc=syntaxcomplete#Complete |
        \ endif
endif

" Arbitrary selection in visual block mode
set virtualedit+=block

" TMUX
Plug 'christoomey/vim-tmux-navigator'
Plug 'benmills/vimux'
Plug 'sjl/vitality.vim'
" Resize splits when the window is resized
au VimResized * :wincmd =

""" CUSTOM MAPPINGS AND COMMANDS

" Nobody likes \ as leader!
let mapleader = ","

" E.g. press ;w instead of shift : unshift w
nnoremap ; :

" map jk to escape
inoremap jk <ESC>

" Disable Arrow Keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Map non-breaking space to space
inoremap <A-space> <space>

" C-p and C-n in command mode
cnoremap <c-p> <up>
cnoremap <c-n> <down>

" Prev/next item in quickfix list
map <silent> <leader>cn :cnext<cr>
map <silent> <leader>cp :cprev<cr>

" Clear search
nnoremap <silent> <space> :noh<cr><space>

" Reformat whole file
map <silent> <leader>f gg=G''

" Remove trailing whitespace including non-breaking spaces
command! -range=% RemoveTrailingWhitespace <line1>,<line2>s/\(\s\| \)\+$// | norm! ``
nnoremap <leader>rt :RemoveTrailingWhitespace<CR>
vnoremap <leader>rt :RemoveTrailingWhitespace<CR> 

" Allow to repeat command over multiple lines separately
vnoremap . :norm.<CR>

" File Explorer / NERDtree
Plug 'scrooloose/nerdtree'
let g:NERDTreeChDirMode=2
let g:NERDTreeShowHidden=1
" These mappings would interfere with vim-tmux-navigator
let g:NERDTreeMapJumpNextSibling=''
let g:NERDTreeMapJumpPrevSibling=''
let NERDTreeIgnore=[  '^\.git$', 'DS_STORE' ]
nnoremap <silent> <leader>n :NERDTreeToggle<cr>
nnoremap <silent> <leader><leader>n :NERDTreeFind<cr>

" File Search / Ctrl-P
Plug 'kien/ctrlp.vim'
let g:ctrlp_show_hidden = 1
let g:ctrlp_root_markers = ['mix.exs', 'Gemfile']
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --hidden --ignore .git --ignore _build --nocolor -g ""'
  let g:ctrlp_use_caching = 0
end

" Project search
if executable('ag')
  set grepprg=ag\ --vimgrep\ $*
  set grepformat=%f:%l:%c:%m
endif
command! -nargs=+ -complete=file G :silent grep! <args> | cwindow | redraw!
nnoremap <leader>a :G ""<left>
xnoremap <leader>a :<C-u>G ""<left>
au Filetype qf nnoremap <buffer> o <cr>
au Filetype qf nnoremap <buffer> go <cr><C-w><C-w>

" Make directory on the fly with :e
Plug 'pbrisbin/vim-mkdir'

" Automatically insert `end`
Plug 'tpope/vim-endwise'

" Comments
Plug 'tpope/vim-commentary'

" Surround
Plug 'tpope/vim-surround'

" Exchange regions
Plug 'tommcdo/vim-exchange'

" % matching
Plug 'tmhedberg/matchit'

" Ruby/Rails
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-rbenv'
Plug 'joker1007/vim-ruby-heredoc-syntax'

" Text Objects
Plug 'kana/vim-textobj-user'
Plug 'michaeljsmith/vim-indent-object'
Plug 'nelstrom/vim-textobj-rubyblock'

" Elixir/Phoenix
Plug 'spiegela/vimix'
Plug 'c-brenn/phoenix.vim'
Plug 'slashmili/alchemist.vim'
let g:alchemist#elixir_erlang_src = "/usr/local/share/src"

" Markdown
Plug 'plasticboy/vim-markdown'
let g:vim_markdown_folding_disabled = 1

" Delete all hidden buffers
function! DeleteHiddenBuffers()
    let tpbl=[]
    call map(range(1, tabpagenr('$')), 'extend(tpbl, tabpagebuflist(v:val))')
    for buf in filter(range(1, bufnr('$')), 'bufexists(v:val) && index(tpbl, v:val)==-1')
        silent execute 'bwipeout' buf
    endfor
endfunction
command! DeleteHiddenBuffers :call DeleteHiddenBuffers()

" Disable Background Color Erase (BCE) so that color schemes
" render properly when inside 256-color tmux and GNU screen.
" https://github.com/vim/vim/issues/804#issuecomment-225085911
if &term =~ '256color'
  set t_ut=
endif

" Color scheme
set termguicolors
set background=dark
Plug 'chriskempson/base16-vim'
function! s:SetColorScheme()
  if filereadable(expand("~/.vim/plugged/base16-vim/colors/base16-solarized-dark.vim"))
    colorscheme base16-solarized-dark
  end
endfunction
au VimEnter * call s:SetColorScheme()
function! s:SimpleGutterColors()
  hi VertSplit ctermbg=none ctermfg=10 guibg=NONE guifg=#808080
  hi LineNr ctermbg=none guibg=NONE
  hi FoldColumn ctermbg=none guibg=NONE
  hi SignColumn ctermbg=none guibg=NONE
  hi Error ctermfg=red ctermbg=none guifg=red guibg=NONE
  hi Todo ctermfg=178 ctermbg=none guifg=orange guibg=NONE
endfunction
au VimEnter,ColorScheme * call s:SimpleGutterColors()

" Invisibles
set listchars=tab:▸\ ,eol:¬,trail:·,extends:>,precedes:<,nbsp:␣

" Splits
set fillchars+=vert:│

" Git Helper
Plug 'tpope/vim-fugitive'

" Gutter
Plug 'airblade/vim-gitgutter'
hi GitGutterAdd ctermfg=green guifg=green
hi GitGutterDelete ctermfg=red guifg=red
hi GitGutterChange ctermfg=yellow guifg=yellow
hi GitGutterChangeDelete ctermfg=yellow guifg=red

" Reload vimrc after saving it
autocmd! bufwritepost vimrc* source ~/.vimrc

call plug#end()

" Load project specific .vimrc files
set exrc
set secure
