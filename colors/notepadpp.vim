"Author: echofish (http://echofish.org)
"Last change 14 Nov 08

set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "notepadpp"
 
hi Normal guifg=black guibg=white
hi String guifg=#797D7D gui=none
hi Statement guifg=blue
hi Comment guifg=#15A531 gui=none
hi Conditional guifg=blue gui=bold
hi Cursor guifg=white guibg=black
hi CursorColumn guibg=gray90
hi CursorIM gui=None
hi CursorLine guibg=gray90
hi LineNr guifg=black
hi IncSearch gui=reverse
hi MatchParen guifg=red guibg=white gui=bold
hi StatusLine guifg=white guibg=black
hi StatusLineNC gui=reverse guifg=black
hi TabLine gui=underline guibg=lightgrey
hi TabLineFill gui=reverse
hi VertSplit gui=reverse
hi Visual gui=reverse guifg=grey guibg=black
hi VisualNOS gui=bold,underline
hi Statement guifg=blue gui=none
hi Conditional guifg=blue gui=bold
hi Delimiter guifg=#A020F0 gui=none
hi Number guifg=#FF820D gui=none

hi clear SpecialKey
hi clear Constant
hi clear PreProc
hi clear Function
hi clear DiffAdd
hi clear DiffChange
hi clear DiffDelete
hi clear DiffText
hi clear Directory
hi clear Error
hi clear ErrorMsg
hi clear FoldColumn
hi clear Folded
hi clear Ignore
hi clear ModeMsg
hi clear MoreMsg
hi clear NonText
hi clear Pmenu
hi clear PmenuSbar
hi clear PmenuSel
hi clear PmenuThumb
hi clear Question
hi clear Search
hi clear SignColumn
hi clear SpellBad
hi clear SpellCap
hi clear SpellLocal
hi clear SpellRare
hi clear TabLineSel
hi clear Title
hi clear Todo
hi clear Type
hi clear Underlined
hi clear WildMenu
hi clear Boolean
hi clear Character
hi clear Debug
hi clear Define
hi clear Exception
hi clear Float
hi clear Identifier
hi clear Include
hi clear Keyword
hi clear Label
hi clear Macro
hi clear Operator
hi clear PreCondit
hi clear Repeat
hi clear SpecialChar
hi clear SpecialComment
hi clear StorageClass
hi clear Structure
hi clear Tag
hi clear Typedef

hi link Constant String
hi link Special String
hi link SpecialKey Normal
hi link PreProc Normal
hi link Function Normal
hi link DiffAdd Normal
hi link DiffChange Normal
hi link DiffDelete Normal
hi link DiffText Normal
hi link Directory Normal
hi link Error Normal
hi link ErrorMsg Normal
hi link FoldColumn Normal
hi link Folded Normal
hi link Ignore Normal
hi link ModeMsg Normal
hi link MoreMsg Normal
hi link NonText Normal
hi link Pmenu Normal
hi link PmenuSbar Normal
hi link PmenuSel Normal
hi link PmenuThumb Normal
hi link Question Normal
hi link Search Normal
hi link SignColumn Normal
hi link SpellBad Normal
hi link SpellCap Normal
hi link SpellLocal Normal
hi link SpellRare Normal
hi link TabLineSel Normal
hi link Title Normal
hi link Todo Normal
hi link Type Normal
hi link Underlined Normal
hi link WildMenu Normal
hi link Boolean Normal
hi link Character Normal
hi link Debug Normal
hi link Define Conditional
hi link Exception Normal
hi link Float Normal
hi link Identifier Statement
hi link Include Normal
hi link Keyword Normal
hi link Label Conditional
hi link Macro Normal
hi link Operator Statement
hi link PreCondit Normal
hi link Repeat Conditional
hi link SpecialChar Normal
hi link SpecialComment Normal
hi link StorageClass Conditional
hi link Structure Delimiter
hi link Tag Normal
hi link Typedef Normal

