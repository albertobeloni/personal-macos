filetype off
filetype plugin on
filetype indent on

syntax on

set encoding=utf-8

set autoread
set autowrite
set autoindent
set noexpandtab
set nolinebreak
set nowrap
set shiftround
set shiftwidth=8
set smartindent
set softtabstop=8
set tabstop=8
set textwidth=0
set clipboard=unnamed,unnamedplus
set nocursorline
set nonumber
set norelativenumber
set hlsearch
set incsearch
set foldenable
set foldlevelstart=0
set foldmethod=manual
set foldnestmax=99
set modeline
set modelines=1
set laststatus=2
set noruler
set noshowcmd
set noshowmode
set mouse=a
set backspace=indent,eol,start
set virtualedit=block,onemore
set whichwrap=b,s,h,l,<,>,[,]
set formatoptions+=1
set formatoptions+=M
set formatoptions+=c
set formatoptions+=l
set formatoptions+=m
set formatoptions+=n
set formatoptions+=q
set formatoptions+=t
set formatoptions-=r
set scrolljump=10
set scrolloff=999
set sidescroll=1
set sidescrolloff=0
set matchtime=5
set showmatch
set fillchars+=vert:│
set fillchars+=fold:―
set fillchars+=eob:\ 
set nolist
set listchars+=eol:\ 
set listchars+=extends:…
set listchars+=nbsp:·
set listchars+=precedes:…
set listchars+=space:\ 
set listchars+=tab:→\ 
set listchars+=trail:·
set showbreak=…
set ignorecase
set smartcase
set hidden
set visualbell
set shortmess+=A
set shortmess+=F
set shortmess+=I
set shortmess+=O
set shortmess+=T
set shortmess+=W
set shortmess+=c
set shortmess+=f
set shortmess+=n
set shortmess+=o
set shortmess+=q
set shortmess+=r
set shortmess+=s
set shortmess+=t
set shortmess+=x
set shortmess-=a
set shortmess-=i
set shortmess-=l
set shortmess-=m
set shortmess-=w
set nobackup
set noswapfile
set noundofile
set nowritebackup
set shada="NONE"
set title
set titlestring=%t
set guicursor=

let g:mode={"n": "N", "no": "NO", "v": "V", "V": "VL", "x22": "VB", "s": "S", "S": "SL", "x19": "SB", "i": "I", "R": "R", "Rv": "RV", "c": "C", "cv": "CV", "ce": "CE", "r": "P", "rm": "RM", "r?": "R?", "!": "!", "t": "T"}

set statusline=
set statusline+=%{g:mode[mode()]}
set statusline+=%=
set statusline+=%l:%c

colorscheme custom

inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap [ []<Esc>i
inoremap < <><Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i

inoremap (<CR> (<CR>)<Esc>O
inoremap {<CR> {<CR>}<Esc>O
inoremap [<CR> [<CR>]<Esc>O

augroup explorer
	autocmd!
	autocmd FileType netrw setlocal conceallevel=3
	autocmd FileType netrw setlocal concealcursor=nvic
	autocmd FileType netrw syntax match netrwClassify #.$# conceal
augroup end

if $TERMINAL_BACKGROUND == "dark"
	set background=dark
else
	set background=light
endif
