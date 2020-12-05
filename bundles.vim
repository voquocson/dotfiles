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

" Nerdcommenter.
Plug 'preservim/nerdcommenter'
call plug#end()
