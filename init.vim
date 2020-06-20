" Script for nvim configure.
 
" Loads all my plugins.
if filereadable(expand('~/.config/nvim/bundles.vim'))
	source ~/.config/nvim/bundles.vim
endif

" Configure nvim.
" ----------------------------------------.
set showmatch
set tabstop=2
set shiftwidth=2
set expandtab
set relativenumber
set number
set laststatus=2

set termguicolors
set background=dark
" -----------------------------------------.
" Configure auto-closer.
inoremap (; (<CR>);<C-c>O
inoremap (, (<CR>),<C-c>O
inoremap {; {<CR>};<C-c>O
inoremap {, {<CR>},<C-c>O
inoremap [; [<CR>];<C-c>O
inoremap [, [<CR>],<C-c>O
" Configure of plugins.
" Gruvbox theme.
let g:gruvbox_italic=1
colorscheme gruvbox
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_bold=1

" Lightline.
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ }

" NERDTree
noremap <C-d> :NERDTreeToggle<CR>
noremap F :NERDTreeFind<CR>

let NERDTreeShowHidden=1

" fzf
noremap ` :Files<CR>
noremap ; :Buffers<CR>

" coc.nvim.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


