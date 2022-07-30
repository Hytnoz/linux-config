" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    Plug 'omnisharp/omnisharp-vim'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'neovim/nvim-lspconfig'
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
    " File Explorer
   " Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Autocompletion
    Plug 'neoclide/coc.nvim', {'branch' : 'release'}
    " LaTeX Integration
    Plug 'lervag/vimtex'
    " Comment box
    Plug 'cometsong/CommentFrame.vim'
    " Git !
    Plug 'tpope/vim-fugitive'
    "Tabs
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'romgrk/barbar.nvim'
    " post install (yarn install | npm install) then load plugin only for editing supported files
    Plug 'prettier/vim-prettier', {
      \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
    "Scroll
    Plug 'psliwka/vim-smoothie'
    " Themes
    Plug 'arcticicestudio/nord-vim' 
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'ryanoasis/vim-devicons'    
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'jordwalke/vim-reasonml'
    Plug 'dracula/vim', { 'as': 'dracula'  }
    call plug#end()
    color dracula
    set termguicolors
    set syntax=on
    set rtp+=$GOROOT/misc/vim
    let g:go_highlight_structs = 1 
    let g:go_highlight_methods = 1
    let g:go_highlight_functions = 1
    let g:go_highlight_operators = 1
    let g:go_highlight_build_constraints = 1
