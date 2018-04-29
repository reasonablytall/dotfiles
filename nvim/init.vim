set runtimepath^=~/.vim runtimepath+=~/.vim/after                                                 
let &packpath = &runtimepath

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" vim-plug https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

" Plugins:
Plug 'Valloric/YouCompleteMe'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'ayu-theme/ayu-vim'
Plug 'beyondmarc/hlsl.vim'
Plug 'chiel92/vim-autoformat'
Plug 'chrisbra/colorizer'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dhruvasagar/vim-table-mode'
Plug 'easymotion/vim-easymotion'
Plug 'ekalinin/dockerfile.vim'
Plug 'elzr/vim-json'
Plug 'ervandew/supertab'
Plug 'honza/vim-snippets'
Plug 'junegunn/goyo.vim'
Plug 'leafgarland/typescript-vim'
Plug 'othree/html5.vim'
Plug 'plasticboy/vim-markdown'
Plug 'raimondi/delimitmate'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'sirver/ultisnips'
Plug 'sjl/badwolf'
Plug 'suan/vim-instant-markdown'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vimwiki/vimwiki'
Plug 'wesq3/vim-windowswap'
Plug 'yggdroot/indentline'
Plug 'zhou13/vim-easyescape'

call plug#end()

set termguicolors
let &t_8f = "\e[38;2;%lu;%lu;%lum"
let &t_8b = "\e[48;2;%lu;%lu;%lum"
let &t_ut=''

set termguicolors     " enable true colors support
"let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
colorscheme ayu

let mapleader=" "
set number relativenumber
set hlsearch
set incsearch
map <C-_> <leader>c<space>
set updatetime=100

" easyscape settings
let g:easyescape_chars = { "j": 1, "k": 1 }
let g:easyescape_timeout = 100
cnoremap jk <ESC>
cnoremap kj <ESC>

" spacing settings
set tabstop=2
set shiftwidth=2
set expandtab

" airline settings
let g:airline_theme='ayu'
set laststatus=2
"set t_Co=256
set noshowmode

" tab settings
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']
let g:ycm_autoclose_preview_window_after_completion=1
let g:SuperTabDefaultCompletionType = '<C-j>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" indentline settings
let g:indentLine_char = '┆'
let g:indentLine_first_char = '┆'
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 0

" nerdtree settings
map <C-n> :NERDTreeToggle<CR>

" markdown settings
let g:instant_markdown_slow = 1
let g:vim_markdown_conceal = 0

" autoformat settings
map <F3> :Autoformat<CR>

" windowswap settings
let g:windowswap_map_keys = 0
map <leader>ss :call WindowSwap#EasyWindowSwap()<CR>

" gitgutter settings
let g:gitgutter_override_sign_column_highlight = 0

" vim-json settings
let g:vim_json_syntax_conceal = 0
