" GENERAL MUST HAVES 
"
set nocompatible			" Don't try to be vi compatible
filetype off				" Helps force plugins to load correctly when it is turned back on below
set modelines=0				" helps security
"

" VUNDLE "{{{
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
		" The following are examples of different formats supported.
		" Keep Plugin commands between vundle#begin/end.
		" plugin on GitHub repo
		" Plugin 'tpope/vim-fugitive'
		" plugin from http://vim-scripts.org/vim/scripts.html
		" Plugin 'L9'
		" Git plugin not hosted on GitHub
		" Plugin 'git://git.wincent.com/command-t.git'
		" git repos on your local machine (i.e. when working on your own plugin)
		" Plugin 'file:///home/gmarik/path/to/plugin'
		" Install L9 and avoid a Naming conflict if you've already installed a
		" different version somewhere else.
		" Plugin 'ascenator/L9', {'name': 'newL9'}
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Plugin 'sjl/badwolf'
" Plugin 'morhetz/gruvbox'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-unimpaired'
Plugin 'suan/vim-instant-markdown'
Plugin 'vimwiki/vimwiki'
Plugin 'lervag/vimtex'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ftan84/vim-khaled-ipsum'
Plugin 'mattn/emmet-vim' , {'on_ft': 'html'}
Plugin 'chriskempson/base16-vim'
Plugin 'powerline/powerline' , {'rtp': 'powerline/bindings/vim/'}
Plugin 'lifepillar/vim-cheat40'
Plugin 'shime/vim-livedown'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'junegunn/goyo.vim'
" Plugin 'MikeCoder/markdown-preview.vim'

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
" Put your non-Plugin stuff after this line
"}}}

"set shell=zsh\ -i

" COLORS 

set t_Co=256
set background=dark
" colorscheme gruvbox			" Set the colorscheme
syntax enable				" Turn on syntax highlighting
"

" TABS 

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
"

" GENERAL GOODNESS 

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set number
set undofile
set clipboard=unnamedplus
let mapleader = ","			" sets leader key
set clipboard^=unnamed      " copy paste bliss
set pastetoggle=<F2>

" Use urlview to choose and open a url:
:noremap <leader>u :w<Home>silent <End> !urlview<CR>

" Goyo plugin makes text more readable when writing prose:
map <F10> :Goyo<CR>
inoremap <F10> <esc>:Goyo<CR>a
"
" Enable Goyo by default for mutt writting
autocmd BufRead,BufNewFile /tmp/neomutt* let g:goyo_width=72
autocmd BufRead,BufNewFile /tmp/neomutt* :Goyo
" Goyo's width will be the line limit in mutt.
"
"
" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

" Automatically source .vimrc
" augroup autosourcing
"     autocmd!
"     autocmd BufWritePost .vimrc source %
" augroup END

map <leader>vimrc :tabe ~/.vimrc<cr>
autocmd bufwritepost .vimrc source $MYVIMRC

" Get out of insert mode free
inoremap jk <Esc>

"" PLUGIN OPTIONS 
" Powerline for vim
let g:Powerline_symbols = 'fancy'

" vimwiki with markdown support"{{{
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
" helppage -> :h vimwiki-syntax
" refresh preview
let g:instant_markdown_autostart = 0 " disable autostart
map <leader>md :LivedownPreview<CR>
" "}}}

" SEARCH SANITY 
"{{{
set path+=**            " Provides tab-completion for all file-related tasks
set magic               " 
" nnoremap / /\v			" regex fix
" vnoremap / /\v			" regex fix
set ignorecase			" intelligent case-sensitive search
set smartcase			" intelligent case-sensitive search
set gdefault			" applies substitutions globally on lines
set incsearch			" highlight search results
set showmatch			" highlight search results
set hlsearch			" highlight search results
nnoremap <leader><space> :noh<cr>	" gets rid of the distracting highlighting with ,<space>
nnoremap <tab> %		" tab key match bracket pairs
vnoremap <tab> %		" tab key match bracket pairs
"}}}
"
"WILD STUFFAGE"{{{
set wildmenu wildmode=list:full"{{{"}}}
" Ignore these filenames during enhanced command line completion.
set wildignore+=*.aux,*.out,*.toc " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif " binary images
set wildignore+=*.luac " Lua byte code
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.pyc " Python byte code
set wildignore+=*.spl " compiled spelling word lists
set wildignore+=*.sw? " Vim swap files
"

" CTRLP ignore
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(zip|so|swp)$',
  \ }
"}}}

"LINE WRAPPING

set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85
"

"FOLDING
"
"=== folding ===
set foldmethod=marker   " fold based on {{{,}}}
set foldnestmax=10      " max 10 depth
set foldenable          " don't fold files by default on open 
nnoremap <space> za
set foldlevelstart=10    " start with fold level of 1
"
" BOXES COMMENTING

vmap ,mc !boxes -d c-cmt<CR>
nmap ,mc !!boxes -d c-cmt<CR>
vmap ,xc !boxes -d c-cmt -r<CR>
nmap ,xc !!boxes -d c-cmt -r<CR>
vmap ,bc !boxes -d shell
nmap ,bc !!boxes -d shell
"
autocmd BufEnter * nmap ,mc !!boxes -d pound-cmt<CR>
autocmd BufEnter * vmap ,mc !boxes -d pound-cmt<CR>
autocmd BufEnter * nmap ,xc !!boxes -d pound-cmt -r<CR>
autocmd BufEnter * vmap ,xc !boxes -d pound-cmt -r<CR>
autocmd BufEnter *.html nmap ,mc !!boxes -d html-cmt<CR>
autocmd BufEnter *.html vmap ,mc !boxes -d html-cmt<CR>
autocmd BufEnter *.html nmap ,xc !!boxes -d html-cmt -r<CR>
autocmd BufEnter *.html vmap ,xc !boxes -d html-cmt -r<CR>
autocmd BufEnter *.[chly],*.[pc]c nmap ,mc !!boxes -d c-cmt<CR>
autocmd BufEnter *.[chly],*.[pc]c vmap ,mc !boxes -d c-cmt<CR>
autocmd BufEnter *.[chly],*.[pc]c nmap ,xc !!boxes -d c-cmt -r<CR>
autocmd BufEnter *.[chly],*.[pc]c vmap ,xc !boxes -d c-cmt -r<CR>
autocmd BufEnter *.C,*.cpp,*.java nmap ,mc !!boxes -d java-cmt<CR>
autocmd BufEnter *.C,*.cpp,*.java vmap ,mc !boxes -d java-cmt<CR>
autocmd BufEnter *.C,*.cpp,*.java nmap ,xc !!boxes -d java-cmt -r<CR>
autocmd BufEnter *.C,*.cpp,*.java vmap ,xc !boxes -d java-cmt -r<CR>
autocmd BufEnter .vimrc*,.exrc nmap ,mc !!boxes -d vim-cmt<CR>
autocmd BufEnter .vimrc*,.exrc vmap ,mc !boxes -d vim-cmt<CR>
autocmd BufEnter .vimrc*,.exrc nmap ,xc !!boxes -d vim-cmt -r<CR>
autocmd BufEnter .vimrc*,.exrc vmap ,xc !boxes -d vim-cmt -r<CR>


"=== BUFFERS ===
"{{{
" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden

" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>T :enew<cr>

" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>

" Show all open buffers and their status
nmap <leader>bs :ls<CR>
"}}}

" Line Shortcuts 
nnoremap G Gzz
nnoremap { {zz
nnoremap } }zz

" Undo File
set undofile
set undodir=~/.vim/undodir

" COMMAND SHORTCUTS 
nnoremap ; :

" Save Read-only Files
cmap w!! w !sudo tee % >/dev/null

"quick pairs 
imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>( ()<ESC>i
imap <leader>[ []<ESC>i
imap <leader>{ {}<ESC>i
imap <leader>< < ><ESC>i
"

" Bubble single lines 
nmap <C-Up> [e                                                     
nmap <C-Down> ]e                                                   

" Bubble multiple lines                                            
vmap <C-Up> [egv                                                   
vmap <C-Down> ]egv                                                 

nmap <leader>t :NERDTreeToggle<CR>                                 
nmap <leader>tm :TableModeToggle<CR>                                 

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif
