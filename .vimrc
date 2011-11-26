"to use ek.vim functionality this is necessary
:au VimEnter * :call Ek_initializer()
:map #2 :FufFile<CR>
:map #3 :FufMruCmd<CR>
:map #5 :call SaveFormatter()<CR> 
:map #6 :NERDTreeToggle<CR>
:map #7 :TlistToggle<CR>
:map #8 :NERDTree<CR>
:map <F10> :call Lastcommandexecute()<CR>
:nnoremap #9 :buffers<CR>:buffer<Space>
nnoremap <silent> #11 :BufExplorer<CR>
nnoremap <silent> <S-F11> :shell<CR>
map <S-C-b>  :call g:RubyDebugger.toggle_breakpoint()<CR>
map <S-C-v>  :call g:RubyDebugger.open_variables()<CR>
map <S-C-m>  :call g:RubyDebugger.open_breakpoints()<CR>
map <S-C-t>  :call g:RubyDebugger.open_frames()<CR>
map <S-C-F6>  :call g:RubyDebugger.step()<CR>
map <S-C-f>  :call g:RubyDebugger.finish()<CR>
map <S-C-F5>  :call g:RubyDebugger.next()<CR>
map <S-C-c>  :call g:RubyDebugger.continue()<CR>
map <S-C-e>  :call g:RubyDebugger.exit()<CR>
map <S-C-d>  :call g:RubyDebugger.remove_breakpoints()<CR>

:set mouse=r
if bufwinnr(1)
    map + <C-W>+
    map - <C-W>-
    map * <c-w><
    map / <c-w>>
endif

nmap <C-t> :call RecentFilesList()<cr>
au BufReadPost,BufWritePost * call RecentFilesAdd() 
let g:ruby_debugger_debug_mode = 1
filetype plugin indent on
:au WinEnter * if (exists("b:colors_name")) | let b:current_colors=colors_name
            \| execute "colorscheme " . b:colors_name | endif
:au BufLeave * if (exists("b:current_colors")) | execute "colorscheme " . b:current_colors | endif
let g:fuf_bookmark_prompt = '>Bookmark>'


set incsearch " BUT do highlight as you type you 
set ruler
set nocompatible " explicitly get out of vi-compatible mode
set term=xterm-256color
set visualbell
set mouse=a
set hlsearch "highlite search results
set whichwrap=b,s,h,l,<,>,~,[,] " everything wraps
set matchtime=5 " how many tenths of a second to blink
set nostartofline " leave my cursor where it was
set number " turn on line numbers
set numberwidth=5 " We are good up to 99999 lines
set report=0 " tell us when anything is changed via :...
set scrolloff=10 " Keep 10 lines (top/bottom) for scope
set shortmess=aOstT " shortens messages to avoid
" 'press a key' prompt
set showcmd " show the command being typed
set showmatch " show matching brackets
set sidescrolloff=10 " Keep 5 lines at the size
set expandtab " no real tabs please!
if has("gui_running")
    " Basics {
    colorscheme metacosm " my color scheme (only works in GUI)
    set columns=180 " perfect size for me
    set guifont=Consolas:h10 " My favorite font
    set guioptions=ce 
    "              ||
    "              |+-- use simple dialogs rather than pop-ups
    "              +  use GUI tabs, not console style tabs
    set lines=55 " perfect size for me
    set mousehide " hide the mouse cursor when typing
    " }
endif

"Gag : Rot13 the whole buffer
map <F12> ggVGg?

colorscheme matrix
"colorscheme zenburn
"    colorscheme csspretty
"   colorscheme dark-ruby
"   colorscheme maroloccio

"  colorscheme newspaper


" Execute open rspec buffer
" Thanks to Ian Smith-Heisters
function! RunSpec(args)
    if exists("b:rails_root") && filereadable(b:rails_root . "/script/spec")
        let spec = b:rails_root . "/script/spec"
    else
        let spec = "spec"
    end
    let cmd = ":! " . spec . " % -cfn " . a:args
    execute cmd
endfunction

" Mappings
" run one rspec example or describe block based on cursor position
map !s :call RunSpec()<CR>
" run full rspec file
map !S :call RunSpecs()<CR>
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y%{exists('g:loaded_fugitive')?fugitive#statusline():''}%{exists('g:loaded_rvm')?rvm#statusline():''}%=%-16(\ %l,%c-%v\ %)%P

let g:fuf_modesDisable = []
let g:fuf_mrufile_maxItem = 400
let g:fuf_mrucmd_maxItem = 400

" call fuf#setOneTimeVariables(['g:fuf_coveragefile_globPatterns', g:fuf_coveragefile_globPatterns + ['~/**/.*', '~/**/*']]) | FufCoverageFile

nnoremap <silent> sj     :FufBuffer<CR>
nnoremap <silent> sk     :FufFileWithCurrentBufferDir<CR>
nnoremap <silent> sK     :FufFileWithFullCwd<CR>
nnoremap <silent> s<C-k> :FufFile<CR>
nnoremap <silent> sl     :FufCoverageFileChange<CR>
nnoremap <silent> sL     :FufCoverageFileChange<CR>
nnoremap <silent> s<C-l> :FufCoverageFileRegister<CR>
nnoremap <silent> sd     :FufDirWithCurrentBufferDir<CR>
nnoremap <silent> sD     :FufDirWithFullCwd<CR>
nnoremap <silent> s<C-d> :FufDir<CR>
nnoremap <silent> sn     :FufMruFile<CR>
nnoremap <silent> sN     :FufMruFileInCwd<CR>
nnoremap <silent> sm     :FufMruCmd<CR>
nnoremap <silent> su     :FufBookmarkFile<CR>
nnoremap <silent> s<C-u> :FufBookmarkFileAdd<CR>
vnoremap <silent> s<C-u> :FufBookmarkFileAddAsSelectedText<CR>
nnoremap <silent> si     :FufBookmarkDir<CR>
nnoremap <silent> s<C-i> :FufBookmarkDirAdd<CR>
nnoremap <silent> st     :FufTag<CR>
nnoremap <silent> sT     :FufTag!<CR>
nnoremap <silent> s<C-]> :FufTagWithCursorWord!<CR>
nnoremap <silent> s,     :FufBufferTag<CR>
nnoremap <silent> s<     :FufBufferTag!<CR>
vnoremap <silent> s,     :FufBufferTagWithSelectedText!<CR>
vnoremap <silent> s<     :FufBufferTagWithSelectedText<CR>
nnoremap <silent> s}     :FufBufferTagWithCursorWord!<CR>
nnoremap <silent> s.     :FufBufferTagAll<CR>
nnoremap <silent> s>     :FufBufferTagAll!<CR>
vnoremap <silent> s.     :FufBufferTagAllWithSelectedText!<CR>
vnoremap <silent> s>     :FufBufferTagAllWithSelectedText<CR>
nnoremap <silent> s]     :FufBufferTagAllWithCursorWord!<CR>
nnoremap <silent> sg     :FufTaggedFile<CR>
nnoremap <silent> sG     :FufTaggedFile!<CR>
nnoremap <silent> so     :FufJumpList<CR>
nnoremap <silent> sp     :FufChangeList<CR>
nnoremap <silent> sq     :FufQuickfix<CR>
nnoremap <silent> sy     :FufLine<CR>
nnoremap <silent> sh     :FufHelp<CR>
nnoremap <silent> se     :FufEditDataFile<CR>
nnoremap <silent> sr     :FufRenewCache<CR>
:source $VIMRUNTIME/menu.vim
:set wildmenu
:set cpo-=<
:set wcm=<C-Z>
:map <F4> :emenu <C-Z>
:set viminfo+=!
