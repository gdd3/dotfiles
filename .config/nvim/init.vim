set encoding=utf-8
nma <silent> <C-DOWN> :m+1<CR>
set termguicolors
set background=dark


" for .swp files
set dir=/tmp

" Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
"Plugin 'kien/ctrlp.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'elzr/vim-json'
Plugin 'airblade/vim-gitgutter'
Plugin 'terryma/vim-expand-region'
Plugin 'majutsushi/tagbar'
"Plugin 'w0rp/ale'

" colorscheme
Plugin 'kristijanhusak/vim-hybrid-material'
Plugin 'arcticicestudio/nord-vim'
Plugin 'rakr/vim-one'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" Colors config
colorscheme hybrid_material


" Airline config
let g:airline_theme='hybrid'
let g:airline_powerline_fonts=1
let g:airline_enable_fugitive=1


" NERDTree
let g:nerdtree_tabs_open_on_console_startup=1


" Enable line limbers
set nowrap
set number
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE


" NERDTree config
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" YouCompleteMe
set completeopt-=preview


" Tab = 4 spaces
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab


" Windows switching
map <silent> <C-h> :call WinMove('h')<CR>
map <silent> <C-j> :call WinMove('j')<CR>
map <silent> <C-k> :call WinMove('k')<CR>
map <silent> <C-l> :call WinMove('l')<CR>

function! WinMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key
    if (t:curwin == winnr())
        if (match(a:key,'[jk]'))
            wincmd v
        else
            wincmd s
        endif
        exec "wincmd ".a:key
    endif
endfunction


" Key bindings
nmap <silent> <C-UP> :m-2<CR> 
nmap <silent> <C-DOWN> :m+1<CR>
nmap <silent> <C-p> :Lines<CR>


" CtrlP
"let g:ctrlp_map = '<c-p>'
"let g:ctrlp_cmd = 'CtrlPLine'
"let g:ctrlp_show_hidden = 1
"let g:ctrlp_switch_buffer = 0
"let g:ctrlp_working_path_mode = 0
"let g:ctrlp_match_window = 'bottom,order:ttb'
"let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'


" UI
set wildmenu            " visual autocomplete for command menu
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set cursorline          " highlight the current line

" turn off search highlight
map <silent> <C-M> :nohl<CR>

