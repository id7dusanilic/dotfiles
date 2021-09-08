" Autocmds ********************************************************************

" Update keyboard bindings when sxhkdrc is updated
autocmd BufWritePost *sxhkdrc !killall -s SIGUSR1 sxhkd

" Basic settings **************************************************************

" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

" Line numbers
set number relativenumber

" Tabs
set tabstop=4
set shiftwidth=4
set expandtab

" Clipboard
set clipboard=unnamedplus

" Set the viminfo file
set viminfo+=n~/.config/nvim/viminfo

" Enable mouse support
set mouse=a

" Keybindings
nmap ; :
vmap q <Esc>
imap jk <Esc>
nmap j gj
nmap k gk

" Shortcutting split navigation, saving a keypress:
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Misc
set title
" set hidden

" Colors
syntax enable
