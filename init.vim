call plug#begin("~/.vim/plugged")
  " Plugin Section
  " Plug 'psliwka/vim-smoothie'
  Plug 'tomasiser/vim-code-dark'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'junegunn/fzf.vim'
  Plug 'tpope/vim-sleuth'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-commentary'
  Plug 'jiangmiao/auto-pairs'
  Plug 'ApZelos/blamer.nvim'
  Plug 'airblade/vim-gitgutter'
  Plug 'sbdchd/neoformat'
  Plug 'evanleck/vim-svelte'
  "Language support
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
set shiftwidth=4

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

vnoremap <leader>y "+y
nnoremap <leader><s-y> "+Y
nnoremap <leader>p "+p

set nowrap
set title
set listchars=tab:..

command! IDate execute ';normal! O' . strftime('--- %c ---')

nnoremap <Leader>v :e $MYVIMRC<cr>

vnoremap p "_dp
vnoremap P "_dP

" replace in selection
vnoremap <C-r> :s/\%V/g<left><left>

"nnoremap <silent> } :<C-u>execute "keepjumps norm! " . v:count1 . "}"<CR>
"nnoremap <silent> { :<c-u>execute "keepjumps norm! " . v:count1 . "{"<cr>
"
" Plug
nnoremap <silent><leader>1 :source $MYVIMRC \| :PlugInstall<CR>

"GUI
set guifont=Liberation\ Mono:h11
"FZF
nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-space': 'vsplit'
  \}
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
"nmap <c-f> ;call fzf#vim#ag_raw("-- '^(?=.)'\'' ".expand('%'), {})<cr>
nmap <c-f> ;BLines<cr>
nmap <leader><C-F> ;Ag<cr>

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

"Git Gutter
let g:blamer_enabled = 1

highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1

"smoothie
let g:smoothie_speed_constant_factor=45
let g:smoothie_update_interval=3
let g:smoothie_speed_exponentiation_factor=1.1

"neoformat
let g:neoformat_try_node_exe = 1
autocmd BufWritePre *.svelte Neoformat

"sveltelet
let g:svelte_preprocessor_tags = [
  \ { 'name': 'ts', 'tag': 'script', 'as': 'typescript' }
  \ ]
let g:svelte_preprocessors = ['typescript', 'ts']

