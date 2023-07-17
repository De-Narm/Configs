"""""""""""""""""""""Basics""""""""""""""""""""""""""""""""""""""""""""""""""""
"well, syntaxhighlighting
syntax on

"colorscheme
set background=dark

"wrap according to window size
set wrap lbr

"show partial commands
set showcmd

"numbers
set number relativenumber

"mark 80 chars in column
set colorcolumn=80
highlight ColorColumn ctermbg=darkgrey

"yank across terminals 
"set clipboard+=unnamed

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

"neutral sign color
highlight clear SignColumn

"sign column over number column
"set signcolumn=number

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

"""""""""""""""""""""Filespecific changes""""""""""""""""""""""""""""""""""""""
"clojure comment macro
let g:clojure_discard_macro = 1

"clojure dash case
autocmd Filetype clojure set iskeyword+=-

"clojure tabstops 
 setlocal tabstop=2
autocmd Filetype clojure setlocal softtabstop=2
autocmd Filetype clojure setlocal shiftwidth=2

"latex spellcheck 
autocmd Filetype tex,latex,plaintex setlocal spell spelllang=en_gb

"latex movements in wrapped lines
autocmd Filetype tex,latex,plaintex noremap <silent> k gk
autocmd Filetype tex,latex,plaintex noremap <silent> j gj
autocmd Filetype tex,latex,plaintex noremap <silent> 0 g0
autocmd Filetype tex,latex,plaintex noremap <silent> $ g$

"""""""""""""""""""""Extensions""""""""""""""""""""""""""""""""""""""""""""""""

" Extensions needed:
"fireplace
"rainbow_parenthesis
"ale
"vim-gitgutter
"cljfmt

"rainbow parenthesis
let g:rbpt_colorpairs = [
    \ ['red',         'firebrick3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ]

autocmd VimEnter *       RainbowParenthesesToggle
autocmd Syntax   clojure RainbowParenthesesLoadRound
autocmd Syntax   clojure RainbowParenthesesLoadBraces
autocmd Syntax   clojure RainbowParenthesesLoadSquare

"git gutter
let g:gitgutter_sign_added = '++'
let g:gitgutter_sign_modified = '~~'
let g:gitgutter_sign_removed = '--'
let g:gitgutter_sign_removed_first_line = '--'
let g:gitgutter_sign_removed_above_and_below = '--'
let g:gitgutter_sign_modified_removed = '~~'
highlight GitGutterAdd    ctermfg=green
highlight GitGutterChange ctermfg=yellow
highlight GitGutterDelete ctermfg=red

"linter
let g:ale_sign_column_always = 1
let g:ale_sign_error = '◉◉'
highlight ALEErrorSign ctermfg=red
let g:ale_sign_warning = '◉◉'
highlight ALEWarningSign ctermfg=yellow
let g:ale_linters = {'clojure': ['clj-kondo']}
