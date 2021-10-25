"""""""""""""""""""""Basics""""""""""""""""""""""""""""""""""""""""""""""""""""
"well, syntaxhighlighting
syntax on

"colorscheme
set background=dark
colorscheme solarized

"wrap according to window size
set wrap lbr

"show partial commands
set showcmd

"numbers
set number relativenumber

"mark 80 chars in column
set colorcolumn=80
highlight ColorColumn ctermbg=0

"yank across terminals 
set clipboard+=unnamend

"read changes from outside to opend file
set autoread

"indent new line 
set autoindent
set smartindent

"autocomplete subfolderpaths
set path+=**

"display all matching files with tab complete
set wildmenu

"tab key uses space
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

"fold all functions when opening file
"set foldmethod=syntax
"set foldnestmax=1
"highlight Folded ctermbg=Black

"""""""""""""""""""""General Keys""""""""""""""""""""""""""""""""""""""""""""""
"no reselect after indention
vnoremap > >gv
vnoremap < <gv

"deactivate arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"""""""""""""""""""""Extensions""""""""""""""""""""""""""""""""""""""""""""""""
autocmd VimEnter *       RainbowParenthesesToggle
autocmd Syntax   clojure RainbowParenthesesLoadRound
autocmd Syntax   clojure RainbowParenthesesLoadSquare
autocmd Syntax   clojure RainbowParenthesesLoadBraces

"""""""""""""""""""""Filespecific changes""""""""""""""""""""""""""""""""""""""
""clojure highlights
"""all numbers are highlighted 
"autocmd Syntax clojure hi NegNumbers ctermfg=DarkCyan
"autocmd Syntax clojure syntax match NegNumbers /\(-[0-9]\+\)/
"autocmd Syntax clojure hi FloatNumbers ctermfg=DarkCyan
"autocmd Syntax clojure syntax match FloatNumbers /\(-\?[0-9]\+\.[0-9]*\)/
"""TODO
"autocmd Syntax clojure hi TodoError ctermfg=Magenta cterm=bold
"autocmd Syntax clojure syntax match TodoError /\(;\+.*\(TODO\|FIXME\).*\)/
"""keys
"autocmd Syntax clojure hi Keys ctermfg=DarkBlue
"autocmd Syntax clojure syntax match Keys /\(:[-A-z]\+\)/
"""reader macro 'comment'
"autocmd Syntax clojure hi RoundReader ctermfg=Green
"autocmd Syntax clojure syntax match RoundReader /\(#_(\(\_s\|[^)]\)*)\)/
"autocmd Syntax clojure hi SquareReader ctermfg=Green
"autocmd Syntax clojure syntax match SquareReader /\(#_\[\(\_s\|[^\]]\)*\]\)/
"autocmd Syntax clojure hi BraceReader ctermfg=Green
"autocmd Syntax clojure syntax match BraceReader /\(#_{\(\_s\|[^}]\)*}\)/

"clojure tabstops 
autocmd Filetype clojure setlocal tabstop=2
autocmd Filetype clojure setlocal softtabstop=2
autocmd Filetype clojure setlocal shiftwidth=2

"latex spellcheck 
autocmd Filetype tex,latex,plaintex setlocal spell spelllang=en_gb

"latex movements in wrapped lines
autocmd Filetype tex,latex,plaintex noremap <silent> k gk
autocmd Filetype tex,latex,plaintex noremap <silent> j gj
autocmd Filetype tex,latex,plaintex noremap <silent> 0 g0
autocmd Filetype tex,latex,plaintex noremap <silent> $ g$
