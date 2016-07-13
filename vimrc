" -------------------- Vundle configuration --------------------
set rtp+=~/.vim/bundle/Vundle.vim                       " Sets the Vundle runtime path
call vundle#begin()                                     " Initializes Vundle

Plugin 'bufkill.vim'                                    " Closes a buffer without closing the window
Plugin 'ctrlp.vim'                                      " Quickly finds and opens a file
Plugin 'de-vri-es/vim-urscript'                         " Syntax highlighting and indentation rules for URScript
Plugin 'gmarik/Vundle.vim'                              " Manages plugins
Plugin 'honza/vim-snippets'                             " Default snippets
Plugin 'Indent-Guides'                                  " Displays indentation
Plugin 'minibufexpl.vim'                                " Manages open buffers
Plugin 'minibufexplorerpp'                              " Extends the functionality of minibufexpl
Plugin 'morhetz/gruvbox'                                " Color scheme
Plugin 'jiangmiao/auto-pairs'                           " Automatically pair brackets, parantheses, quotes etc.
Plugin 'sirver/ultisnips'                               " Adds snippets to source code
Plugin 'surround.vim'                                   " Provides mappings to easily manipulate pairs of brackets, quotes, XML tags etc.
Plugin 'Tabular'                                        " Quickly aligns text
Plugin 'Tagbar'                                         " Displays available methods, classes etc.
Plugin 'The-NERD-Commenter'                             " Quickly adds comments to a source code
Plugin 'The-NERD-tree'                                  " Manages files
Plugin 'visual-increment'                               " Creates increasing or decreasing sequence of elements
Plugin 'Valloric/YouCompleteMe'                         " Code completion
Plugin 'https://github.com/itchyny/lightline.vim.git'   " Adds a lightweight status line

call vundle#end() 

" ----------------------- Key bindings -----------------------
map  <Leader>n  :NERDTreeToggle<CR>
map  <Leader>t  :TagbarToggle<CR>
map  <Leader>qb :BD<CR>
map  <Leader>qw <C-W-Q>
nmap <Leader>sa ggvG$<CR>

" ------------------ Plugin configuration --------------------
let g:miniBufExplUseSingleClick =1                                             " Enables single clicking to switch to a different buffer
let NERDTreeQuitOnOpen          =1                                             " Closes NERDTRee after opening a file 

let g:ycm_global_ycm_extra_conf ="~/dev/delft-robotics/src/.ycm_extra_conf.py" " Specifies the path to ycm_extra_conf.py
let g:ycm_path_to_python_interpreter='/usr/bin/python2'

let g:UltiSnipsExpandTrigger      ="<c-e>"
let g:UltiSnipsJumpForwardTrigger ="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"



" ------------------- Vim configuration ----------------------
let &t_SI="\<Esc>[2 q"                                  " Sets the cursor style (when entering the insert mode)
let &t_EI="\<Esc>[2 q"                                  " Sets the cursor style (when leaving the insert mode)

colorscheme badwolf                                     " Sets the color scheme
filetype on                                             " Automatically detects file type
syntax enable                                           " Enables syntax highlighting

set autoindent                                          " Automatically indent on new line
set cindent                                             " Automatic indentation in C/C++
set fillchars  +=vert:\|                                " Sets the character to be used for splitting
set listchars   =tab:›—,trail:␣,extends:▶,precedes:◀    " Customizes white characters
set backspace   =indent,eol,start                       " Makes backspace work

set nocompatible        " Disables compatibility mode
set list                " Displays whitespace
set laststatus  =2      " Displays the status bar
set tabstop     =2      " Controls the number of space characters inserted when Tab is pressed.
set shiftwidth  =2      " Controls the number of space characters inserted for indentation.
set relativenumber      " Displays relative line numbers on the left side
set hlsearch            " Turns search highlight on
set mouse       =a      " Turns mouse cursor on

hi vertsplit ctermfg=8 ctermbg=8
