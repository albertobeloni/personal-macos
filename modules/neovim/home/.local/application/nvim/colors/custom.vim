highlight clear

if exists("syntax_on")
	syntax reset
endif

let g:colors_name="custom"

if &background == "dark"
	" ------------------------------------------------------------------------------
	" Editor
	" ------------------------------------------------------------------------------

	highlight Normal	ctermfg=none	ctermbg=none	cterm=none
	highlight LineNr	ctermfg=00	ctermbg=none	cterm=none
	highlight Cursor	ctermfg=00	ctermbg=15	cterm=none
	highlight CursorLine	ctermfg=none	ctermbg=00	cterm=none
	highlight CursorLineNr	ctermfg=15	ctermbg=none	cterm=none
	highlight Folded	ctermfg=none	ctermbg=00	cterm=none
	highlight VertSplit	ctermfg=00	ctermbg=none	cterm=none
	highlight ColorColumn	ctermfg=none	ctermbg=00	cterm=none
	highlight CursorColumn	ctermfg=none	ctermbg=00	cterm=none
	highlight FoldColumn	ctermfg=00	ctermbg=none	cterm=none
	highlight SignColumn	ctermfg=00	ctermbg=none	cterm=none
	highlight TabLine	ctermfg=07	ctermbg=00	cterm=none
	highlight TabLineFill	ctermfg=07	ctermbg=00	cterm=none
	highlight TabLineSel	ctermfg=15	ctermbg=08	cterm=none
	highlight Directory	ctermfg=04	ctermbg=none	cterm=none
	highlight Search	ctermfg=03	ctermbg=11	cterm=none
	highlight IncSearch	ctermfg=03	ctermbg=11	cterm=none

	" --------------------------------------
	" Prompt/Status
	" --------------------------------------

	highlight StatusLine	ctermfg=08	ctermbg=none	cterm=none
	highlight StatusLineNC	ctermfg=00	ctermbg=none	cterm=none
	highlight WildMenu	ctermfg=none	ctermbg=00	cterm=none
	highlight Question	ctermfg=none	ctermbg=none	cterm=none
	highlight Title		ctermfg=02	ctermbg=none	cterm=none
	highlight ModeMsg	ctermfg=00	ctermbg=none	cterm=none
	highlight MoreMsg	ctermfg=00	ctermbg=none	cterm=none

	" --------------------------------------
	" Editor
	" --------------------------------------

	highlight MatchParen	ctermfg=03	ctermbg=11	cterm=none
	highlight Visual	ctermfg=none	ctermbg=00	cterm=none
	highlight VisualNOS	ctermfg=none	ctermbg=00	cterm=none
	highlight NonText	ctermfg=00	ctermbg=none	cterm=none
	highlight SpecialKey	ctermfg=00	ctermbg=none	cterm=none

	highlight ErrorMsg	ctermfg=01	ctermbg=none	cterm=none
	highlight WarningMsg	ctermfg=03	ctermbg=none	cterm=none

	highlight Error		ctermfg=01	ctermbg=09	cterm=none
	highlight Ignore	ctermfg=none	ctermbg=none	cterm=none
	highlight Todo		ctermfg=07	ctermbg=none	cterm=bold
	highlight Underlined	ctermfg=04	ctermbg=none	cterm=underline

	" ------------------------------------------------------------------------------
	" Groups
	" ------------------------------------------------------------------------------

	highlight Comment	ctermfg=00	ctermbg=none	cterm=italic

	" --------------------------------------
	" Constants
	" --------------------------------------

	highlight Constant	ctermfg=02	ctermbg=none	cterm=none

	highlight link String		Constant
	highlight link Character	Constant
	highlight link Number		Constant
	highlight link Boolean		Constant
	highlight link Float		Constant

	" --------------------------------------
	" Identifiers
	" --------------------------------------

	highlight Identifier	ctermfg=04	ctermbg=none	cterm=none

	highlight link Function		Identifier

	" --------------------------------------
	" Statements
	" --------------------------------------

	highlight Statement	ctermfg=08	ctermbg=none	cterm=none

	highlight link Condition	Statement
	highlight link Repeat		Statement
	highlight link Label		Statement
	highlight link Operator		Statement
	highlight link Keyword		Statement
	highlight link Exception	Statement

	" --------------------------------------
	" Preprocessors
	" --------------------------------------

	highlight PreProc	ctermfg=06	ctermbg=none	cterm=none

	highlight link Include		PreProc
	highlight link Define		PreProc
	highlight link Macro		PreProc
	highlight link PreCondit	PreProc

	" --------------------------------------
	" Types
	" --------------------------------------

	highlight Type		ctermfg=03	ctermbg=none	cterm=none

	highlight link StorageClass	Type
	highlight link Structure	Type
	highlight link Typedef		Type

	" --------------------------------------
	" Specials
	" --------------------------------------

	highlight Special	ctermfg=08	ctermbg=none	cterm=none

	highlight link SpecialChar	Special
	highlight link Tag		Special
	highlight link Delimiter	Special
	highlight link SpecialComment	Special
	highlight link Debug		Special

	" ------------------------------------------------------------------------------
	" Diff
	" ------------------------------------------------------------------------------

	highlight DiffAdd	ctermfg=02	ctermbg=00	cterm=none
	highlight DiffChange	ctermfg=03	ctermbg=00	cterm=none
	highlight DiffDelete	ctermfg=01	ctermbg=00	cterm=none
	highlight DiffText	ctermfg=04	ctermbg=00	cterm=none

	" ------------------------------------------------------------------------------
	" Completion Menu
	" ------------------------------------------------------------------------------

	highlight Pmenu		ctermfg=07	ctermbg=00	cterm=none
	highlight PmenuSel	ctermfg=15	ctermbg=08	cterm=none
	highlight PmenuSbar	ctermfg=none	ctermbg=00	cterm=none
	highlight PmenuThumb	ctermfg=none	ctermbg=07	cterm=none

	" ------------------------------------------------------------------------------
	" Spelling
	" ------------------------------------------------------------------------------

	highlight SpellBad	ctermfg=01	ctermbg=none	cterm=underline
	highlight SpellCap	ctermfg=none	ctermbg=none	cterm=underline
	highlight SpellLocal	ctermfg=none	ctermbg=none	cterm=underline
	highlight SpellRare	ctermfg=none	ctermbg=none	cterm=underline

	" ------------------------------------------------------------------------------
	" Navigator
	" ------------------------------------------------------------------------------

	highlight netrwExe	ctermfg=01	ctermbg=none	cterm=none

	highlight link netrwDir		Directory
	highlight link netrwClassify	Normal
	highlight link netrwLink	Underlined
	highlight link netrwSymLink	Underlined
	highlight link netrwComment	Comment
	highlight link netrwList	Normal
else
	" ------------------------------------------------------------------------------
	" Editor
	" ------------------------------------------------------------------------------

	highlight Normal	ctermfg=none	ctermbg=none	cterm=none
	highlight LineNr	ctermfg=15	ctermbg=none	cterm=none
	highlight Cursor	ctermfg=15	ctermbg=00	cterm=none
	highlight CursorLine	ctermfg=none	ctermbg=15	cterm=none
	highlight CursorLineNr	ctermfg=00	ctermbg=none	cterm=none
	highlight Folded	ctermfg=none	ctermbg=15	cterm=none
	highlight VertSplit	ctermfg=15	ctermbg=none	cterm=none
	highlight ColorColumn	ctermfg=none	ctermbg=15	cterm=none
	highlight CursorColumn	ctermfg=none	ctermbg=15	cterm=none
	highlight FoldColumn	ctermfg=15	ctermbg=none	cterm=none
	highlight SignColumn	ctermfg=15	ctermbg=none	cterm=none
	highlight TabLine	ctermfg=08	ctermbg=15	cterm=none
	highlight TabLineFill	ctermfg=08	ctermbg=15	cterm=none
	highlight TabLineSel	ctermfg=00	ctermbg=07	cterm=none
	highlight Directory	ctermfg=04	ctermbg=none	cterm=none
	highlight Search	ctermfg=03	ctermbg=11	cterm=none
	highlight IncSearch	ctermfg=03	ctermbg=11	cterm=none

	" --------------------------------------
	" Prompt/Status
	" --------------------------------------

	highlight StatusLine	ctermfg=07	ctermbg=none	cterm=none
	highlight StatusLineNC	ctermfg=15	ctermbg=none	cterm=none
	highlight WildMenu	ctermfg=none	ctermbg=15	cterm=none
	highlight Question	ctermfg=none	ctermbg=none	cterm=none
	highlight Title		ctermfg=02	ctermbg=none	cterm=none
	highlight ModeMsg	ctermfg=15	ctermbg=none	cterm=none
	highlight MoreMsg	ctermfg=15	ctermbg=none	cterm=none

	" --------------------------------------
	" Editor
	" --------------------------------------

	highlight MatchParen	ctermfg=03	ctermbg=11	cterm=none
	highlight Visual	ctermfg=none	ctermbg=15	cterm=none
	highlight VisualNOS	ctermfg=none	ctermbg=15	cterm=none
	highlight NonText	ctermfg=15	ctermbg=none	cterm=none
	highlight SpecialKey	ctermfg=15	ctermbg=none	cterm=none

	highlight ErrorMsg	ctermfg=01	ctermbg=none	cterm=none
	highlight WarningMsg	ctermfg=03	ctermbg=none	cterm=none

	highlight Error		ctermfg=01	ctermbg=09	cterm=none
	highlight Ignore	ctermfg=none	ctermbg=none	cterm=none
	highlight Todo		ctermfg=08	ctermbg=none	cterm=bold
	highlight Underlined	ctermfg=04	ctermbg=none	cterm=underline

	" ------------------------------------------------------------------------------
	" Groups
	" ------------------------------------------------------------------------------

	highlight Comment	ctermfg=15	ctermbg=none	cterm=italic

	" --------------------------------------
	" Constants
	" --------------------------------------

	highlight Constant	ctermfg=02	ctermbg=none	cterm=none

	highlight link String		Constant
	highlight link Character	Constant
	highlight link Number		Constant
	highlight link Boolean		Constant
	highlight link Float		Constant

	" --------------------------------------
	" Identifiers
	" --------------------------------------

	highlight Identifier	ctermfg=04	ctermbg=none	cterm=none

	highlight link Function		Identifier

	" --------------------------------------
	" Statements
	" --------------------------------------

	highlight Statement	ctermfg=07	ctermbg=none	cterm=none

	highlight link Condition	Statement
	highlight link Repeat		Statement
	highlight link Label		Statement
	highlight link Operator		Statement
	highlight link Keyword		Statement
	highlight link Exception	Statement

	" --------------------------------------
	" Preprocessors
	" --------------------------------------

	highlight PreProc	ctermfg=06	ctermbg=none	cterm=none

	highlight link Include		PreProc
	highlight link Define		PreProc
	highlight link Macro		PreProc
	highlight link PreCondit	PreProc

	" --------------------------------------
	" Types
	" --------------------------------------

	highlight Type		ctermfg=03	ctermbg=none	cterm=none

	highlight link StorageClass	Type
	highlight link Structure	Type
	highlight link Typedef		Type

	" --------------------------------------
	" Specials
	" --------------------------------------

	highlight Special	ctermfg=07	ctermbg=none	cterm=none

	highlight link SpecialChar	Special
	highlight link Tag		Special
	highlight link Delimiter	Special
	highlight link SpecialComment	Special
	highlight link Debug		Special

	" ------------------------------------------------------------------------------
	" Diff
	" ------------------------------------------------------------------------------

	highlight DiffAdd	ctermfg=02	ctermbg=15	cterm=none
	highlight DiffChange	ctermfg=03	ctermbg=15	cterm=none
	highlight DiffDelete	ctermfg=01	ctermbg=15	cterm=none
	highlight DiffText	ctermfg=04	ctermbg=15	cterm=none

	" ------------------------------------------------------------------------------
	" Completion Menu
	" ------------------------------------------------------------------------------

	highlight Pmenu		ctermfg=08	ctermbg=15	cterm=none
	highlight PmenuSel	ctermfg=00	ctermbg=07	cterm=none
	highlight PmenuSbar	ctermfg=none	ctermbg=15	cterm=none
	highlight PmenuThumb	ctermfg=none	ctermbg=08	cterm=none

	" ------------------------------------------------------------------------------
	" Spelling
	" ------------------------------------------------------------------------------

	highlight SpellBad	ctermfg=01	ctermbg=none	cterm=underline
	highlight SpellCap	ctermfg=none	ctermbg=none	cterm=underline
	highlight SpellLocal	ctermfg=none	ctermbg=none	cterm=underline
	highlight SpellRare	ctermfg=none	ctermbg=none	cterm=underline

	" ------------------------------------------------------------------------------
	" Navigator
	" ------------------------------------------------------------------------------

	highlight netrwExe	ctermfg=01	ctermbg=none	cterm=none

	highlight link netrwDir		Directory
	highlight link netrwClassify	Normal
	highlight link netrwLink	Underlined
	highlight link netrwSymLink	Underlined
	highlight link netrwComment	Comment
	highlight link netrwList	Normal
endif
