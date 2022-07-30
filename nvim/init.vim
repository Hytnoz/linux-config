source $HOME/.config/nvim/vim-plug/plugins.vim

let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
set rtp+=<SHARE_DIR>/merlin/vim

let g:dracula_colorterm = 0
colorscheme dracula

set number
