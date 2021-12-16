call plug#begin("~/.vim/plugged")
    " Plugin Section
    Plug 'psliwka/vim-smoothie'
    Plug 'tomasiser/vim-code-dark'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'junegunn/fzf.vim'
    Plug 'tpope/vim-sleuth'

    "Language support
    Plug 'leafgarland/typescript-vim'
    Plug 'peitalin/vim-jsx-typescript'
call plug#end()


"Config Section
if (has("termguicolors"))
    set termguicolors
endif

syntax enable
colorscheme codedark

nnoremap ; : 
nnoremap : ; 
vnoremap ; : 
vnoremap : ; 
 
set rnu 
set nu 

let mapleader="\<space>"

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set ai
set si
set nowrap

"FZF
nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-space': 'vsplit'
  \}
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

"COC
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']

