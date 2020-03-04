" Environment {
" Basics {
set nocompatible
" }
"All the Bundle {
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-pathogen.git'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'scrooloose/nerdtree.git'
Bundle 'vim-scripts/ZoomWin.git'
Bundle 'vim-scripts/ScrollColors'
Bundle 'vim-scripts/grep.vim.git' 
Bundle 'tpope/vim-rvm.git'
Bundle 'tsaleh/vim-supertab.git'
Bundle 'vim-scripts/AutoTag.git'
Bundle 'duellj/DirDiff.vim.git'
Bundle 'vim-scripts/ScrollColors.git'
Bundle 'tpope/vim-surround.git'
Bundle 'scrooloose/nerdcommenter.git'
Bundle 'erhard/vim_function_pool.git'
Bundle 'mattn/zencoding-vim'
Bundle 'motemen/git-vim'
Bundle 'majutsushi/tagbar'
Bundle 'tpope/vim-haml.git'
" Vi-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'vim-scripts/mru.vim.git'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "honza/snipmate-snippets"
Bundle "SirVer/ultisnips.git"
Bundle "kchmck/vim-coffee-script.git"
Bundle "https://github.com/terryma/vim-multiple-cursors.git"
"Bundle garbas/vim-snipmate




"}
" Windows Compatible {
" On Windows, also use '.vim' instead of 'vimfiles'; this makes synchronization
" across (heterogeneous) systems easier.
if has('win32') || has('win64')
    set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
endif
" }
"
" Setup Bundle Support {
" The next two lines ensure that the ~/.vim/bundle/ system works
runtime! bundle/vim-pathogen/autoload/pathogen.vim
silent! call pathogen#helptags()

"Here can put all bundle path even no standard
silent! call pathogen#runtime_append_all_bundles("bundle")

" }

" }


" General {
if !has('win32') && !has('win64')
    set term=$TERM " Make arrow and other keys work
endif
filetype plugin indent on " Automatically detect file types.
"syntax on " syntax highlighting
"set mouse=a " automatically enable mouse usage
"set autochdir " always switch to the current file directory.. Messes with some plugins, best left commented out
" not every vim is compiled with this, use the following line instead
" If you use command-t plugin, it conflicts with this, comment it out.
"autocmd BufEnter * if bufname("") !~ "^\[A-Za-z0-9\]*://" | lcd %:p:h | endif
scriptencoding utf-8
set autowrite " automatically write a file when leaving a modified buffer
"set viewoptions=folds,options,cursor,unix,slash " better unix / windows compatibility
set virtualedit=onemore " allow for cursor beyond last character
set history=1000 " Store a ton of history (default is 20)
"let coffee_compiler = '~/local/bin/coffee'


"funzt nicht !!
"set g:UltiSnipsEditSplit="vertical"


"set spell " spell checking on
" Setting up the directories {
"set backup " backups are nice ...
"set undofile " so is persistent undo ...
"set undolevels=1000 "maximum number of changes that can be undone
"set undoreload=10000 "maximum number lines to save for undo on a buffer reload
" Moved to function at bottom of the file
"set backupdir=$HOME/.vimbackup// " but not when they clog .
"set directory=$HOME/.vimswap// " Same for swap files
"set viewdir=$HOME/.vimviews// " same for view files
"" Creating directories if they don't exist
"silent execute '!mkdir -p $HVOME/.vimbackup'
"silent execute '!mkdir -p $HOME/.vimswap'
"silent execute '!mkdir -p $HOME/.vimviews'
au BufWinLeave * silent! mkview "make vim save view (state) (folds, cursor, etc)
"au BufWinEnter * silent! loadview "make vim load view (state) (folds, cursor, etc)
" }
" }
"Snippmate soll auch erb files verstehen
au BufRead,BufNewFile *.erb set filetype=erb.html
"UltiSnips Searchpath for ruby
let g:UltiSnipsSnippetDirectories=["UltiSnips", "mycoolsnippets"]


" Vim UI {
set tabpagemax=15 " only show 15 tabs
set showmode " display the current mode
set cursorline " highlight current line
hi cursorline guibg=#333333 " highlight bg color of current line
hi CursorColumn guibg=#000000 " highlight cursor
set cursorline cursorcolumn
if has('cmdline_info')
    set ruler " show the ruler
    set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " a ruler on steroids
    set showcmd " show partial commands in status line and
    " selected characters/lines in visual mode
endif

if has('statusline')
    set laststatus=2

    " Broken down into easily includeable segments
    set statusline=%<%f\ " Filename
    "set statusline+=%w%h%m%r " Options
    " set statusline+=%{fugitive#statusline()} " Git Hotness
    "set statusline+=\ [%{&ff}/%Y] " filetype
    set statusline+=\ [%{getcwd()}] " current dir
    "set statusline+=\ [A=\%03.3b/H=\%02.2B] " ASCII / Hexadecimal value of char
    "set statusline+=%=%-14.(%l,%c%V%)\ %p%% " Right aligned file nav info
endif
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1
set backspace=indent,eol,start " backspace for dummys
set linespace=0 " No extra spaces between rows
set nu " Line numbers on
set showmatch " show matching brackets/parenthesis
set incsearch " find as you type search
set hlsearch " highlight search terms
set winminheight=0 " windows can be 0 line high
set ignorecase " case insensitive search
set smartcase " case sensitive when uc present
set wildmenu " show list instead of just completing
set wildmode=list:longest,full " command <Tab> completion, list matches, then longest common part, then all.
set whichwrap=b,s,h,l,<,>,[,] " backspace and cursor keys wrap to
set scrolljump=5 " lines to scroll when cursor leaves screen
set scrolloff=3 " minimum lines to keep above and below cursor
set foldenable " auto fold code
set foldmethod=indent
set foldlevel=5
set gdefault " the /g flag on :s substitutions by default
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:. " Highlight problematic whitespace
" }

" Formatting {
"set nowrap " wrap long lines
set autoindent " indent at the same level of the previous line
set shiftwidth=4 " use indents of 4 spaces
set expandtab " tabs are spaces, not tabs
" }
vnoremap : y:<C-r>"<C-b>

autocmd FileType coffee  map #3 :CoffeeCompile vertical<CR>
autocmd VimLeave * :mksession! mysession.vi

:nmap <leader>w :s/\(<c-r>=expand("<cword>")<cr>\)/
:nmap #4 :s/\(<c-r>=expand("<cword>")<cr>\)/
:map #5 :call SaveFormatter()<CR> 
:map #6 :call CopyLine()<CR>
:map <S-F6> :CommandTBuffer<CR>
:map #7 :TlistToggle<CR>
:map #8 :NERDTree<CR>
:map #9 :setlocal spell spelllang=en_us
:map <S-F9>:set nospell 
:map <C-Y> :CommandT<CR>
:map <C-T> :tabnew<CR>
:map <C-x> :call LHbuffer()<CR>
nnoremap <silent> <F3> :Rgrep 
:nnoremap #9 :buffers<CR>:buffer<Space>
colorscheme ron
filetype off                   " required!
set number
set mouse=a
filetype plugin indent on     " required! 

runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
set viminfo+=!
set nocompatible
set grepprg=grep\ -nrI\ --exclude-dir=.git\ --exclude-dir=target\ --exclude-dir=tmp\ --exclude-dir=log\ --exclude="*.min.js"\ --exclude="*.log"\ $*\ /dev/null
"copies selection automatically to xtemclipboard
set clipboard+=autoselect
set guioptions+=a


  let g:surround_45 = "<% \r %>"
  let g:surround_97 = "<%= \r %>"



"new

"nnoremap <up> <nop>
"nnoremap <down> <nop>
"nnoremap <left> <nop>
"nnoremap <right> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>
"nnoremap j gj
"nnoremap k gk
"



"ende new
"autocmd VimEnter * nested :call LoadSession()
autocmd BufNewFile,BufRead *.html.erb set filetype=html.eruby
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
"au BufWritePost *.coffee silent CoffeeMake!
au BufWritePost *.coffee silent CoffeeMake! -b | cwindow | redraw!
"autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
"autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

highlight Pmenu ctermbg=114 gui=bold


"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

function! SaveFormatter()
    let view = winsaveview()
    normal gg=G
    :call winrestview(view)
endfunction 

"autocmd BufWriteCmd *.html,*.css,*.erb, *.js, *.gtpl :call Refresh_firefox()
function! Refresh_firefox()
    if &modified
        write
        silent !echo  'vimYo = content.window.pageYOffset;
                    \ vimXo = content.window.pageXOffset;
                    \ BrowserReload();
                    \ content.window.scrollTo(vimXo,vimYo);
                    \ repl.quit();'  |
                    \ nc localhost 4242 2>&1 > /dev/null
    endif
endfunction



"function! LoadSession()
"    let b:sessionfile =  "mysession.vim"
"    if (filereadable(b:sessionfile))
"        exe 'source ' b:sessionfile
"    else
"        echo "No session loaded."
"    endif
"endfunction
"
"Filetype from shebang

if did_filetype()
    finish
endif
if getline(1) =~# '^#!.*/bin/env\s\+ruby\>'
    setfiletype ruby
endif

