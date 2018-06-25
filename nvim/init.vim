set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" vim-plug https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

" Completion Plugins:
if !exists('g:gui_oni')
  Plug 'prabirshrestha/asyncomplete.vim'
  Plug 'prabirshrestha/async.vim'
  Plug 'prabirshrestha/vim-lsp'
  Plug 'prabirshrestha/asyncomplete-lsp.vim'
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'prabirshrestha/asyncomplete-ultisnips.vim'
endif

" Other Plugins:
if !exists('g:gui_oni')
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'airblade/vim-gitgutter'
  Plug 'chrisbra/colorizer'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'scrooloose/nerdtree'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'yggdroot/indentline'
endif

Plug 'ayu-theme/ayu-vim'
Plug 'chiel92/vim-autoformat'
Plug 'dhruvasagar/vim-table-mode'
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/goyo.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'sheerun/vim-polyglot'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'vimwiki/vimwiki'
Plug 'zhou13/vim-easyescape'

call plug#end()

if !exists('g:gui_oni')
  source $HOME/.config/nvim/completion.vim
endif

set termguicolors
let &t_8f = "\e[38;2;%lu;%lu;%lum"
let &t_8b = "\e[48;2;%lu;%lu;%lum"
let &t_ut=''

set termguicolors       " enable true colors support
"let ayucolor="light"   " for light version of theme
let ayucolor="mirage"   " for mirage version of theme
"let ayucolor="dark"    " for dark version of theme
colorscheme ayu

let mapleader=" "
set number relativenumber
set hlsearch
set incsearch
map <C-_> <leader>c<space>
set updatetime=100

" spacing settings
set tabstop=2
set shiftwidth=2
set expandtab

" easyscape settings
if has('python3')
  let g:easyescape_timeout = 100
else
  let g:easyescape_timeout = 2000
endif
let g:easyescape_chars = { "j": 1, "k": 1 }
cnoremap jk <ESC>
cnoremap kj <ESC>

" airline settings
let g:airline_theme='ayu'
set laststatus=2
set noshowmode

" indentline settings
let g:indentLine_char = '┆'
let g:indentLine_first_char = '┆'
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 0

" nerdtree settings
map <C-n> :NERDTreeToggle<CR>

" autoformat settings
map <F3> :Autoformat<CR>

" gitgutter settings
let g:gitgutter_override_sign_column_highlight = 0

