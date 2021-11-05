call plug#begin('~/.local/share/nvim/plugged')

" Dracula colorscheme
Plug 'dracula/vim', {'as': 'dracula'}

" Autocomplete engine
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Autocomplete engine for python
" Plug 'zchee/deoplete-jedi'

" Linter
Plug 'neomake/neomake'

" Rust syntax hightlighting
Plug 'rust-lang/rust.vim'

" Rust autocomplete engine
Plug 'racer-rust/vim-racer'

" Python syntax highlighting
" Plug 'vim-python/python-syntax'

" Used for typescript syntax highlighting
" Plug 'leafgarland/typescript-vim'

call plug#end()

" Autocheck syntax after insert or normal mode changes after 500ms
"call neomake#configure#automake('nrwi', 500)

" Enable code completion on startup
let g:deoplete#enable_at_startup = 1

" Enable syntax highlighting for python3
let g:python_highlight_all = 1

" Show function definition in rust
let g:racer_experimental_completer = 1

" Autoclosing brackets, quotes, parentheses, braces
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" Ramap moving between splits to ctr+h/l
noremap <C-l> :wincmd l<CR>
noremap <C-h> :wincmd h<CR> 

" Do not wrap overflow lines
set nowrap

" Enable syntax highlighting and dracula theme
syntax enable
filetype plugin indent on
colorscheme dracula

" Setting tab autoindent and width
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

" Do not make a swap file for eveything I open
set noswapfile

" Add line numbers for easier navigation
set number 

" Used to search through subdirectory when using :find filename
set path+=**
set wildmenu

" Color column 80, which is standard line length
set colorcolumn=80
