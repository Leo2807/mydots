" Easy Esc key. azerty keyboards only
inoremap ù <Esc> 
nnoremap ù i

" Line numbers
set number relativenumber

" System clipboard
set clipboard=unnamedplus

set colorcolumn=80

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin()
Plug 'junegunn/vim-plug'

Plug 'tpope/vim-sensible' "Sensible

"Pywal colors
Plug 'dylanaraps/wal.vim'

"Plug 'itchyny/lightline.vim'

Plug 'SirVer/ultisnips'
Plug 'Valloric/YouCompleteMe'
Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'
Plug 'ervandew/supertab'
Plug 'honza/vim-snippets'
Plug 'jreybert/vimagit'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-syntastic/syntastic'
Plug 'francoiscabrol/ranger.vim'

Plug 'kovisoft/slimv', { 'for': ['clojure', 'scheme', 'racket', 'rkt'] }
Plug 'wlangstroth/vim-racket', { 'for': ['racket', 'rkt']}
let g:slimv_swank_cmd = '!~/p/swank-racket/server.sh'
let g:syntastic_enable_racket_racket_checker = 1
let g:slimv_unmap_tab = 1
let g:paredit_electric_return = 0
Plug 'rust-lang/rust.vim', {'for': ['rs', 'rust']}

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:ycm_rust_src_path = '/usr/local/src/rust/src'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" Use ranger when browsing directories
let g:ranger_replace_netrw = 1

Plug 'dag/vim-fish'

call plug#end()

"Load pywal colors
"colorscheme wal
let g:airline_theme = 'wal'
"Lightline pywal colors
"let g:lightline = {
"      \ 'colorscheme': 'wal',
"      \ }
