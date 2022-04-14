" my personal vim config file

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" vim-go
Plugin 'fatih/vim-go'

" NERDtree
Plugin 'preservim/nerdtree'

" airline
Plugin 'vim-airline/vim-airline'

" gitgutter
Plugin 'airblade/vim-gitgutter'

" vim color -- solarized
Plugin 'altercation/vim-colors-solarized'

" fuzzy search
Plugin 'ctrlpvim/ctrlp.vim'

" man page
Plugin 'vim-utils/vim-man'

" sensible
Plugin 'tpope/vim-sensible'

" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
"
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line)


" /**************** the original example vimrc's content start ****************/
" When started as "evim", evim.vim will already have done these settings, bail
" out.
if v:progname =~? "evim"
  finish
endif

" Get the defaults that most users want.
" source $VIMRUNTIME/defaults.vim

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file (restore to previous version)
  if has('persistent_undo')
    set undofile	" keep an undo file (undo changes after closing)
  endif
endif

if &t_Co > 2 || has("gui_running")
  " Switch on highlighting the last used search pattern.
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
" The ! means the package won't be loaded right away but when plugins are
" loaded during initialization.
" if has('syntax') && has('eval')
"  packadd! matchit
"endif
" /**************** the original example vimrc's content end ****************/



" /********************* set commands start *********************/
" number
set number

" tab is equal to 4 spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4

" set tab to 4 spaces
set expandtab

" set foldcolumn
set foldcolumn=3

" set coding order
set fileencodings=utf-8,gb2312,gbk,gb18030
set termencoding=utf-8

" set autoindent
set autoindent

" set dictionary
set dictionary+=/usr/share/dict/words

" syntax folding
set foldmethod=syntax
let javaScript_fold=1             " JavaScript
let g:markdown_folding=1          " markdown

" set path
let pwd = getcwd()
if pwd == "/home/guosj/Documents/guo-sj/github/seaweedfs"
    echo "enter directory seaweedfs"
    set path=.,/usr/include,weed/**
elseif pwd == "/home/guosj/Documents/guo-sj/github/guo-sj.github.io/"
    echo "enter directory guo-sj.github.io"
    set path+=**
elseif pwd == "/home/guosj/Documents/guo-sj/github/anki/"
    echo "enter directory anki"
    set path=.,/usr/include,**
endif
" /********************* set commands end *********************/



" /**************** map ****************/
" normal mode map
nnoremap <F9>     :w<CR>
nnoremap <F10>    :q<CR>
" get vim command window
nnoremap <F8>     q:
nnoremap ]q       :cnext<CR>
nnoremap [q       :cprevious<CR>
nnoremap <Up>     <C-W>k
nnoremap <Down>   <C-W>j
nnoremap <Left>   <C-W>h
nnoremap <Right>  <C-W>l

" add semicolon(;) to end of a line, useful for C/C++
nnoremap <End>    A;<Esc>
" perform make utility
nnoremap ]m       :make<CR>
" reload configure file
nnoremap ]s       :source ~/.vimrc<CR>
" open a terminal
nnoremap ]t       :terminal<CR>
" edit ~/.vimrc
nnoremap ]v       :split ~/.vimrc<CR>
" refresh current file
nnoremap ]r       :e<CR>
" open NERDTree
nnoremap ]n       :NERDTree<CR>
" open find utility
nnoremap ]f       :fin 

" shortcut for fugitive command Git push
nnoremap ]gp      :Git push<CR>
" shortcut for fugitive command Git diff --stat
nnoremap ]gs      :Git diff --stat<CR>
" shortcut for fugitive command Git diff --stat --cached
nnoremap ]gc      :Git diff --stat --cached<CR>
" shortcut for fugitive command Git log --stat
nnoremap ]go      :Git log --stat<CR>
" shortcut for fugitive command Git pull
nnoremap ]gu      :Git pull<CR>
" shortcut for fugitive command :tab Git 
nnoremap ]gt      :tab Git<CR>

" shortcut for vim-go
nnoremap ]gf      :GoFmt<CR>

" insert mode map
imap (       ()<Esc>i
imap {       {}<Esc>i
imap {<CR>   {<CR>}<Esc>O
imap {}      {}
imap [       []<Esc>i
imap /**     /**/<Esc>hi  <Esc>i
imap ""      ""<Esc>i
imap ''      ''<Esc>i
" /**************** map ****************/



" /**************** record macro start ****************/
let @b = 'i**ea**'            " markdown bold
let @i = 'i*ea*'              " markdown italic
let @d = 'i`ea`'              " markdown denote single word like `aa`

let @q = 'i<ib2ea<i/b'    " anki html bold, set 'ab < <>' before using it

let @c = '0wi//l'               " C language comment
let @u = '0wxx'                   " C language uncomment

" /**************** record macro end ****************/



" /**************** functions start ****************/
" Trimwhitespace:  trim trailing write space and empty line
fun! Trimwhitespace()
    let save = winsaveview()  " save the current 'view', which includes the cursor position,
                              " folds, jumps, etc.

    keeppatterns %s/\s\+$//e  " prevents the '\s\+$' pattern from being added to the
                              " search history

    call winrestview(save)    " restore this from the saved variable
endfun

" create a self-clearing autocommand group called 'qf' 
augroup qf
    " clear all autocommands in this group
    autocmd!

    " do :cwindow if the quickfix command doesn't start
    " with a 'l' (:grep, :make, etc.)
    autocmd QuickFixCmdPost [^l]* cwindow

    " do :lwindow if the quickfix command starts with
    " a 'l' (:lgrep, :lmake, etc.)
    autocmd QuickFixCmdPost l* lwindow

    " do :cwindow when Vim was started with the '-q' flag
    autocmd VimEnter * cwindow
augroup END
" /**************** functions end ****************/

" /**************** commands start ****************/
" define command Trimwhitespace for function Trimwhitespace
command! Trimwhitespace call Trimwhitespace()

" /**************** commands end ****************/


" /*********************** plugins start ******************************/

" vim-pathogen
" execute pathogen#infect()
syntax on
filetype plugin indent on

" /**************** NERDtree config start ****************/
" Start NERDTree. If a file is specified, move the cursor to its window.
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" Open the existing NERDtree on each new tab
" autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDtreeMirror | endif
" autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
" /**************** NERDtree config end ****************/

" Syntax highlighting requires a loaded plugin
syntax enable
set background=light
" set background=dark
" let g:solarized_termcolors=256
let g:solarized_underline = 0 " disable underlining, esp. for folds
colorscheme solarized

" vim-airline configurations
" let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
let g:airline_solarized_bg='dark'  " set airline theme to solarized dark
" AirlineTheme simple

" vim-man configurations
set keywordprg=:Man  " make the 'K' command open a manual page in a Vim window

" vim-go configurations
let g:go_gopls_enabled = 1

" automatically show identifier's information in
" status bar
let g:go_auto_type_info = 1 
set updatetime=100

let g:go_auto_sameids = 0

" /*********************** plugins end ******************************/


" /***************** others start ************************/
" set filetype
filetype plugin on

" abbreviation
ab #b		/****************
ab #e		****************/

" colorscheme
" colorscheme desert

" /***************** others end ************************/
