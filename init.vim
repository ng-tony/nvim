call plug#begin("~/.vim/plugged")
  " Plugin Section
  Plug 'tomasiser/vim-code-dark'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'tpope/vim-sleuth'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-commentary'
  Plug 'ApZelos/blamer.nvim'
  Plug 'airblade/vim-gitgutter'
  Plug 'sbdchd/neoformat'

  "Language support
  Plug 'evanleck/vim-svelte'
  Plug 'sheerun/vim-polyglot'
  call plug#end()

"Config Section
if (has("termguicolors"))
    set termguicolors
endif

syntax enable
colorscheme codedark

set expandtab
set tabstop=4
set shiftwidth=2

nnoremap ; : 
nnoremap : ; 
vnoremap ; : 
vnoremap : ; 
 
nmap " *
set rnu 
set nu 

set so=7

set mouse=a
set wildmenu
set wildmode=longest:full,full

let mapleader="\<space>"


set splitbelow
set splitright

vnoremap <leader>y "+y
nnoremap <leader><s-y> "+Y
nnoremap <leader>p "+p

inoremap <C-v> <ESC>"+pa
cnoremap <C-v> <C-r>+
vnoremap <C-c> "+y
tnoremap <C-v> <C-\><C-n>p
tnoremap <C-w> <C-\><C-n><C-w>
set nowrap
set title
set listchars=tab:..

command! IDate execute ';normal! O' . strftime('--- %c ---')
command! Iterm execute ':20sp term://bash'

nnoremap <C-`> :Iterm<CR>

nnoremap <Leader>v :e $MYVIMRC<cr>

vnoremap p "_dp
vnoremap P "_dP

" replace in selection
vnoremap <C-r> :s/\%V/g<left><left>

set ignorecase
set smartcase

"nnoremap <silent> } :<C-u>execute "keepjumps norm! " . v:count1 . "}"<CR>
"nnoremap <silent> { :<c-u>execute "keepjumps norm! " . v:count1 . "{"<cr>
"
" Plug
nnoremap <silent><leader>1 :source $MYVIMRC \| :PlugInstall<CR>

"GUI
set guifont=Liberation\ Mono:h11
"FZF
nnoremap <C-p> :FZF<CR>
let g:ctrlp_show_hidden = 1
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-space': 'vsplit'
  \}
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
"nmap <c-f> ;call fzf#vim#ag_raw("-- '^(?=.)'\'' ".expand('%'), {})<cr>
nmap <c-f> ;BLines<cr>
nmap <leader><C-F> ;Ag<cr>

augroup myterm | au!
    au TermOpen * if &buftype ==# 'terminal' | resize 20 | endif
augroup end


"COC
let g:coc_global_extensions = ['coc-emmet', 'coc-yank', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']
nmap <c-b> ;CocCommand explorer<cr>

"Disable COC for filtype
let g:my_coc_file_types = ['', 'txt']


function! s:disable_coc_for_type()
	if index(g:my_coc_file_types, &filetype) > -1
	        let b:coc_enabled = 0
	endif
endfunction

augroup CocGroup
	autocmd!
	autocmd BufNew,BufEnter * call s:disable_coc_for_type()
augroup end

"auto-pair"
"does'nt wor lol
let g:AutoPairsMapBS=0

"Git Gutter
let g:blamer_enabled = 1

highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1

"smoothie
" let g:smoothie_speed_constant_factor=60
" let g:smoothie_update_interval=3
" let g:smoothie_speed_exponentiation_factor=1.1

"neoformat
let g:neoformat_try_node_exe = 1
    
augroup nformat
    autocmd!
    autocmd BufWritePre *.svelte Neoformat
augroup end

"sveltelet
let g:svelte_preprocessor_tags = [
  \ { 'name': 'ts', 'tag': 'script', 'as': 'typescript' }
  \ ]
let g:svelte_preprocessors = ['typescript', 'ts']

