" ============================================================================
" File:        rails_menu<_menu.vim
" Description: plugin for the NERD Tree that provides a Railsfunctionality
" Maintainer:  Erhard Karger  <erhard /at/ kargers /dot/ org>
" Last Change: 17 July, 2009
" License:     This program is free software. It comes without any warranty,
"              to the extent permitted by applicable law. You can redistribute
"              it and/or modify it under the terms of the Do What The Fuck You
"              Want To Public License, Version 2, as published by Sam Hocevar.
"              See http://sam.zoy.org/wtfpl/COPYING for more details.
"
" ============================================================================


if exists("g:loaded_nerdtree_rails_menu")
    finish
endif
let g:loaded_nerdtree_rails_menu = 1


  let subRails = NERDTreeAddSubmenu({
                \ 'text': '(R)ails',
                \ 'shortcut': 'r' })

call NERDTreeAddMenuItem({'text': '(rs)Rspec for file', 'shortcut': 'r', 'callback': '', 'parent': subRails})
call NERDTreeAddMenuItem({'text': '(cu)cucumber the file', 'shortcut': 'c', 'callback': '', 'parent': subRails})



