set nocompatible
filetype off
syntax off

" Show newline characters
set listchars=tab:›—,trail:␣,extends:▶,precedes:◀
set list

" Always show the statusbar
set laststatus=2

" Set tab size
set tabstop=2
set shiftwidth=2

" Set the runtime path to include Vundle
set rtp+=~/.vim/bundle/Vundle.vim

" Initialize Vundle
call vundle#begin()

" Show vertical line
set colorcolumn=120

" Turn on search highlight
set hlsearch

" Vundle plugins
Plugin 'bufkill.vim'
Plugin 'ctrlp.vim'
Plugin 'de-vri-es/vim-urscript'
Plugin 'gmarik/Vundle.vim'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Indent-Guides'
Plugin 'minibufexpl.vim'
Plugin 'minibufexplorerpp'
Plugin 'Tabular'
Plugin 'Tagbar'
Plugin 'The-NERD-Commenter'
Plugin 'The-NERD-tree'
Plugin 'visual-increment'
Plugin 'xptemplate'
Plugin 'https://github.com/Valloric/YouCompleteMe.git'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

syntax enable

" Set color scheme
colorscheme badwolf

" Set GUI font type and size
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ 8

" Display line numbers
set relativenumber

" Code folding
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1

" Colors
hi Folded guibg=#555555
hi Folded guifg=#ffffff

" Disable cursor blinking
set guicursor+=a:blinkon0

" Clang configuration
let g:clang_user_options='|| exit 0'

" XPtemplate configuration
let g:xptemplate_brace_complete='([{'
let g:xptemplate_vars="SParg="

" Key mappings
map  <Leader>n  :NERDTreeToggle<CR>
map  <Leader>t  :TagbarToggle<CR>
map  <Leader>qb :BD<CR>
map  <Leader>qw <C-W-Q>
nmap <Leader>sa ggvG$<CR>

" YouCompleteMe configuration
let g:ycm_global_ycm_extra_conf="~/dev/delft-robotics/src/.ycm_extra_conf.py"
let g:ycm_collect_identifiers_from_tags_files=0

" Use the mouse cursor
set mouse=a

"Minibufexplorer configuration
let g:miniBufExplUseSingleClick=1

" NERDTree configuration
let NERDTreeQuitOnOpen = 1
