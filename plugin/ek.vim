" ============================================================================
" File:        ek.vim
" Description: plugin for extendig stuff, not suitable for vimrc.
" Maintainer:  Erhard Karger  <erhard /at/ kargers /dot/ org>
" Last Change: 30 December 2010
" License:     This program is free software. It comes without any warranty,
"              to the extent permitted by applicable law. You can redistribute
"              it and/or modify it under the terms of the Do What The Fuck You
"              Want To Public License, Version 2, as published by Sam Hocevar.
"              See http://sam.zoy.org/wtfpl/COPYING for more details.
"
" ============================================================================
function! Ek_initializer()
    let g:ek_toggle_cursor_status = 0
endfunction

function! SaveFormatter()
    let view = winsaveview()
    normal gg=G
    :call winrestview(view)
endfunction 


function! Extended_cursor_toggle()
    if g:ek_toggle_cursor_status == 0
        set cursorcolumn
        set cursorline 
        let g:ek_toggle_cursor_status = 1
    else
        set nocursorline 
        set nocursorcolumn
        let g:ek_toggle_cursor_status = 0
    endif
endfunction


function! RgrepTheWord()




endfunction
