source ~/.vim/.vimrc.bepo


set incsearch
set ignorecase smartcase " case-insensivite searching by default
set hlsearch
if has('persistent_undo')
    set undofile
    set undolevels=5000
endif

silent execute '!mkdir -p $HOME/.vim/tmp/backup'
set backupdir=$HOME/.vim/tmp/backup " where to store backup
silent execute '!mkdir -p $HOME/.vim/tmp/swap'
set directory=$HOME/.vim/tmp/swap "where to store swap
silent execute '!mkdir -p $HOME/.vim/tmp/views'
set viewdir=$HOME/.vim/tmp/views " where to store view
silent execute '!mkdir -p $HOME/.vim/tmp/undo'
set undodir=$HOME/.vim/tmp/undo " where to store undo</undofile></backup>


:let mapleader = ","
syntax on
filetype on
filetype plugin on
filetype indent on

set autoindent
set smarttab
set expandtab
set shiftwidth=2
set softtabstop=2
set backspace=eol,start,indent

colorscheme gruvbox

highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59
set listchars=tab:→\ ,nbsp:␣,trail:•,extends:⟩,precedes:⟨
set list

set number

set wildignore+=*.o,*.out,*.obj
set wildignore+=*.dll,*.exe,*.so
set wildignore+=*/tmp/*,*.pyc,*.pyo,__pycache__
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*.7z
set wildignore+=*.png,*.gif,*.jpg,*.jpeg,*.bmp,*.tiff
set wildignore+=*.swp
set wildignore+=.DS_Store
let g:ctrlp_custom_ignore = '\v[\/](\.git|venv|node_modules|vendor)(/|$)'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_show_hidden = 1

let g:airline_powerline_fonts = 1

let g:ale_linters = { 'javascript': ['eslint'], 'php': ['phpcs'] }
let g:ale_sign_column_always = 1
let g:ale_sign_error = "✗"
let g:ale_sign_warning = "⚠"
let g:airline#extensions#ale#enabled = 1

let g:NERDSpaceDelims = 1
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1

let g:surround_no_mappings = 1
nmap ds <Plug>Dsurround
nmap ls <Plug>Csurround
nmap lS <Plus>CSurround
nmap ys  <Plug>Ysurround
nmap yS  <Plug>YSurround
nmap yss <Plug>Yssurround
nmap ySs <Plug>YSsurround
nmap ySS <Plug>YSsurround
xmap S   <Plug>VSurround
xmap gS <Plug>VgSurround

" make vue syntax faster
let g:vue_disable_pre_processors=1

" fix syntax highlighting errors
noremap <F12> <Esc>:syntax sync fromstart<CR>
inoremap <F12> <C-o>:syntax sync fromstart<CR>
au BufEnter *.vue syn sync fromstart

" remove trailing whitespace on specific file types
autocmd FileType c,cpp,java,php,javascript,vue,yaml,json,python,less,css autocmd BufWritePre <buffer> %s/\s\+$//e

" set specific tab size
autocmd FileType php,yaml,python,css,less setlocal shiftwidth=4 tabstop=4
