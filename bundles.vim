"Plugins will be downloaded under the specified directory.
call plug#begin('~/.config/nvim/bundles')
" Declare plugin via Github repository.
" Gruvbox.
Plug 'morhetz/gruvbox'
" Lightline.
Plug 'itchyny/lightline.vim'
" coc.nvim.
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Nerdtree.
Plug 'preservim/nerdtree'
" fzf.
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Nerdcommenter.
Plug 'preservim/nerdcommenter'
" Vim-closetag.
Plug 'alvan/vim-closetag'
" Vim-easymotion.
Plug 'easymotion/vim-easymotion'
call plug#end()

