" ============================================================================
" File:        cukeSpec.vim
" Description: plugin for Running Rspec or Cucumber on a File
"              Tested on Linux Jruby Cucumber 8.3 and Rspec 2.0
" Maintainer:  Erhard Karger  <erhard /at/ kargers /dot/ org>
" Last Change: 17 July, 2009
" License:     This program is free software. It comes without any warranty,
"              to the extent permitted by applicable law. You can redistribute
"              it and/or modify it under the terms of the Do What The Fuck You
"              Want To Public License, Version 2, as published by Sam Hocevar.
"              See http://sam.zoy.org/wtfpl/COPYING for more details.
"
" ============================================================================


function! GetFile()
  let rel = bufname("%")
  return rel
endfunction 


function! CukeSpec()
  let l:current_file = GetFile()
  let l:filename   = bufname('%')
  let l:branch = ""
  let l:comm = ""
  let l:buf= ""
  if l:current_file =~ "feature"
    let l:branch = "feature"
    let l:localWorkingDir = getcwd()
    let l:comm = "cd ".l:localWorkingDir." & script/cucumber ".filename." --format Cucumber::Formatter::Pretty"
    :echo l:comm
    let l:buf    = 'featureIt'
  elseif l:current_file =~ "_spec.rb"
    let l:branch = "spec"  
    let l:buf    = 'specIt'
    let l:comm = "spec ".l:filename        
  else
    :echo "Sorry go in a spec or featureFile and start by pressing C-S F10"    
    return
  endif
  :echo("Running on ".GetFile())
  "Opens a new window for the SpecOutput""Opens a new window for the SpecOutput" 
  let l:bufnum = bufnr( l:buf )
  if buflisted( l:buf )
    execute 'bd! ' . l:buf
  endif
  let l:result =  system( l:comm )
  "Opens a new window in vertical mode with the buf content"
  execute 'vert new '.l:buf
  setlocal buftype=nofile bufhidden=delete noswapfile filetype=specrun
  set foldtext='--'.getline(v:foldstart).v:folddashes
  nnoremap <silent> <buffer> >g :call GotoFileAndJumpToLine()<CR>
  call append( 0, split( l:result, "\n" ) )
  let d= matchadd('ErrorMsg', "feature:",10,111)
  :echo d
  normal zR
  normal G
  setlocal nomodifiable
endfunction


function! GotoFileAndJumpToLine()
  let bufName = expand('<cfile>')
  let fileName = expand('<cfile>')
  let bufName = strpart(bufName,2)
  let curLine=getline(line("."))
  let lineNumber = split(curLine,":")[1]
  if bufwinnr( bufName )== -1
    :echo "source file yet closed - open new one" 
    exec 'vsplit' . ' ' . fileName
  else
    let winNr =  bufwinnr(bufname(bufName))
    :exe winNr . "wincmd w"
  endif
  if lineNumber > 0
    call cursor(lineNumber,1)
  endif
endfunction






"Keymappings
"

map <C-S-F10> :call CukeSpec()<CR>






