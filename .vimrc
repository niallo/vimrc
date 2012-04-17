set background=dark
set nocompatible        " Use Vim defaults (much better!)
filetype off

set complete-=k complete+=k 
set dictionary-=/usr/share/dict/words dictionary+=/usr/share/dict/words
set expandtab
set shiftwidth=2
"set softtabstop=8
set tabstop=4
" set tabstop=6
" set shiftwidth=6
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
set autoindent      " always set autoindenting on
autocmd BufNewFile,BufRead mutt-* set textwidth=70 autoindent noruler syntax=mail
autocmd BufNewFile,BufRead *.txt set textwidth=70 autoindent noruler syntax=mail
syntax on
set list
set lcs=tab:>-,trail:-

nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>
map T :TagbarToggle<CR>

set winminheight=0
set winheight=999

set wmh=0
map C  :VCSCommit<CR>
map D  :VCSDiff<CR>
"map t  :VSTreeExplore<CR>
map F  :FuzzyFinderFile<CR>
let treeExplVertical=1
au BufRead *.html set filetype=htmlm4
au BufRead *.mako,*.mak set filetype=mako
filetype plugin indent on
