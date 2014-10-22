set nocompatible
filetype off
set number

set fileencoding=utf-8
set fileencodings=utf-8,gbk,utf-16,big5

set autoindent
set smartindent
set cindent

set shiftwidth=4
set softtabstop=4
set tabstop=4
set noexpandtab

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'fatih/vim-go'
Plugin 'majutsushi/tagbar'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'jiangmiao/auto-pairs'
Plugin 'altercation/vim-colors-solarized'

let g:ycm_global_ycm_extra_conf = expand('$HOME/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py')

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

let g:go_bin_path = expand("$HOME/gotools")
let g:go_highlight_structs = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1

syntax on
set background=dark
set t_Co=256
let g:solarized_termcolors=256
colorscheme solarized

filetype plugin indent on


