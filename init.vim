" Neovim script configuration
 
" Loads all my plugins.
if filereadable(expand('~/.config/nvim/bundles.vim'))
	source ~/.config/nvim/bundles.vim
endif

" Configure nvim.
" ----------------------------------------.
set showmatch
set tabstop=4
set shiftwidth=4
set expandtab
set relativenumber
set number
set laststatus=2
set incsearch
set autowrite  " Auto :write before run command "

set termguicolors
set background=dark

" -----------------------------------------.
" Configure not using arrow keys.
nnoremap <Left> :echo <"Use h"><CR>
nnoremap <Right> :echo <"Use l"><CR>
nnoremap <Up> :echo <"Use k"><CR>
nnoremap <Down> :echo <"Use j"><CR>

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

" coc.nvim.
" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
