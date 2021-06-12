" Plugins section *************************************************************
" Using vim-plug to handle plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kristijanhusak/defx-icons'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-python/python-syntax'
Plug 'kovetskiy/sxhkd-vim'
Plug 'neoclide/coc.nvim'
Plug 'sainnhe/edge'
Plug 'scrooloose/nerdcommenter'
call plug#end()

" Additional useful plugins

" Plug 'zxqfl/tabnine-vim'
" Plug 'davidhalter/jedi-vim'
" Plug 'ycm-core/YouCompleteMe'
" Plug 'preservim/nerdtree'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Plug 'bronson/vim-trailing-whitespace'
" Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'kristijanhusak/defx-icons'

" coc Configuration ***********************************************************
let g:coc_global_extensions = [
	\ 'coc-sh',
	\ 'coc-jedi',
	\ 'coc-pyright',
	\ 'coc-pairs',
	\ 'coc-cmake',
	\ 'coc-markdownlint',
	\ 'coc-snippets'
	\ ]

" Use tab for trigger completion and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab
" is not mapped by other plugin before putting this 
" into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" defx Configuration **********************************************************
runtime defx.vim
nnoremap <F3> :Defx<CR>

" Airline settings ************************************************************
runtime airline.vim

" Nerd commenter settings *****************************************************
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCustomDelimiters = { 'c': { 'left': '/*','right': '*/' } }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1
map <F4> <leader>ci <CR>

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
" set hidden

" Colors
syntax enable
colorscheme edge

filetype plugin on
