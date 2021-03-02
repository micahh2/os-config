set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/bin/fzf
"call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
call plug#begin('~/.nvim/plugged')

" let Vundle manage Vundle, required
" Plug 'VundleVim/Vundle.vim'
Plug 'davidhalter/jedi-vim'
Plug 'tpope/vim-fugitive'
" Plug 'vim-syntastic/syntastic'
" Plug 'mtscout6/syntastic-local-eslint.vim'
Plug 'dense-analysis/ale'
Plug 'neomake/neomake'
Plug 'majutsushi/tagbar'
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
Plug 'xuhdev/vim-latex-live-preview'
Plug 'junegunn/fzf.vim'
" Plugin 'vim-scripts/DoxygenToolkit.vim'
Plug 'elixir-editors/vim-elixir'
Plug 'rhysd/vim-grammarous'
" cd ~/.vim/bundle/markdown-preview.nvim/app && yarn install
" Plug 'iamcco/markdown-preview.nvim'
Plug 'heavenshell/vim-jsdoc', { 
  \ 'for': ['javascript', 'javascript.jsx','typescript'], 
  \ 'do': 'make install'
\}
Plug 'sainnhe/sonokai'
" Plug 'nvim-treesitter/nvim-treesitter'

" All of your Plugins must be added before the following line
"call vundle#end()            " required
call plug#end()

filetype plugin indent on    " required

if $COLORTERM == 'gnome-terminal' || $COLORTERM == 'truecolor'
  set t_Co=256
endif

if has('termguicolors')
    set termguicolors
endif

colorscheme distinguished
colorscheme sonokai

set number
syntax on
set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4

" Vim Live Preview
let g:livepreview_engine = 'xelatex'
let g:livepreview_use_biber = 1

" Syntastic settings
"let g:syntastic_javascript_checkers = ['eslint']
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"
" ALE Settings
let b:ale_fixers = ['prettier', 'eslint']

" NeoMake settings
call neomake#configure#automake('w')
" Allow elixir/phoenix hot reload to work properly
let $MIX_ENV='test'

noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>

" Ctrl x + Ctrl o -> Ctrl <Space>
imap <C-Space> <C-x><C-o>
imap <C-@> <C-Space>
