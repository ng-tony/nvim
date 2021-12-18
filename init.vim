call plug#begin("~/.vim/plugged")
    " Plugin Section
    Plug 'psliwka/vim-smoothie'
    Plug 'tomasiser/vim-code-dark'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'junegunn/fzf.vim'
    Plug 'tpope/vim-sleuth'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-fugitive'
    Plug 'jiangmiao/auto-pairs'
    Plug 'ApZelos/blamer.nvim'
    Plug 'airblade/vim-gitgutter'

    "Language support
    Plug 'pangloss/vim-javascript'
    Plug 'leafgarland/typescript-vim'
    Plug 'peitalin/vim-jsx-typescript'
call plug#end()

"Config Section
if (has("termguicolors"))
    set termguicolors
endif

syntax enable
colorscheme codedark

set expandtab
set tabstop=4
set shiftwidth=4

nnoremap ; : 
nnoremap : ; 
vnoremap ; : 
vnoremap : ; 
 
imap jj <Esc>
imap kk <Esc>

nnoremap <F2> "=strftime("--- %c ---")<CR>P

nmap <C-F> ;Ag<cr>

nmap " *

set rnu 
set nu 

set so=7

set mouse=a
set wildmenu
set wildmode=longest:list,full

let mapleader="\<space>"

set nowrap

nnoremap <silent> } :<C-u>execute "keepjumps norm! " . v:count1 . "}"<CR>
nnoremap <silent> { :<c-u>execute "keepjumps norm! " . v:count1 . "{"<cr>
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

let g:blamer_enabled = 1

highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1
