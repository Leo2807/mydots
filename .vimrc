" Easy Esc key. azerty keyboards only
inoremap ù <Esc> 
nnoremap ù i

" Line numbers
set number relativenumber

" System clipboard
set clipboard=unnamedplus

set colorcolumn=80

" Plugins
call plug#begin()
Plug 'tpope/vim-sensible' "Sensible

"Pywal colors
Plug 'dylanaraps/wal.vim'

"Plug 'itchyny/lightline.vim'

Plug 'ervandew/supertab'
Plug 'Valloric/YouCompleteMe'
Plug 'SirVer/ultisnips'
Plug 'tpope/vim-surround'

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:ycm_rust_src_path = '/usr/local/src/rust/src'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

Plug 'dag/vim-fish'

call plug#end()

"Load pywal colors
colorscheme wal
"Lightline pywal colors
"let g:lightline = {
"      \ 'colorscheme': 'wal',
"      \ }
