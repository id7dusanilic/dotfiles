"****************************************************************************
" Plugins section
" Using vim-plug to handle plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bronson/vim-trailing-whitespace'
Plug 'Raimondi/delimitMate'
Plug 'davidhalter/jedi-vim'
call plug#end()
"****************************************************************************

"****************************************************************************
" NERDTree settings
" Keymaps
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
" nnoremap <C-f> :NERDTreeFind<CR>

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * silent NERDTreeMirror

let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=0
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 31
"****************************************************************************

"****************************************************************************
" Airline settings

" Displaying tabs
let g:airline#extensions#tabline#enabled = 1
"****************************************************************************

"****************************************************************************
" jedi-vim
let g:jedi#popup_on_dot = 0
"****************************************************************************


"****************************************************************************
" Autocmds

" Update keyboard bindings when sxhkdrc is updated
autocmd BufWritePost *sxhkdrc !killall sxhkd; sxhkd &

"****************************************************************************
" Basic settings

" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

" Line numbers
set number

" Tabs
set tabstop=4
set shiftwidth=4

" Clipboard
set clipboard=unnamedplus

" Set the viminfo file
set viminfo+=n~/.config/nvim/viminfo

" Enable mouse support
set mouse=a

" Keybindings
nmap ; :
nmap q :q<CR>
vmap q <Esc>

" Shortcutting split navigation, saving a keypress:
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Misc
set title
