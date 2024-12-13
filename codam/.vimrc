set nu rnu
syntax enable
set showcmd
set showmatch
set ignorecase
set smartcase
set incsearch
set ts=4 sw=4
set nowrap
set textwidth=80
set ai si
command W w|!norminette % | grep Error: | sed -rn 's/(Error:[^A-Z]*)((([A-Z]+)_([A-Z]+))*\s*\(.*\))(.*)/\2/p'
command S so $MYVIMRC
let runtimepath="~/.vim/plugin/stdheader.vim"
set list
set listchars=tab:ᘳ-ᘰ,space:ᘯ,eol:ᘱ
highlight NonText ctermfg=238
highlight SpecialKey ctermfg=238
let m = clearmatches()
let m = matchadd("Todo", '\(\u\+\)\(:\|!\)')
let g:mail42='mde-beer@student.codam.nl'
let g:user42='mde-beer'
