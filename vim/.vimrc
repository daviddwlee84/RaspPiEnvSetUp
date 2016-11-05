set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'vimwiki/vimwiki'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'
Plugin 'vim-latex/vim-latex'
Plugin 'lervag/vimtex'
" plugin	 from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
Plugin 'ascenator/L9', {'name': 'newL9'}


" My Plugin
" vim-airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" YouCompleteMe
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator', { 'branch': 'stable'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Vimwiki
" location
let g:vimwiki_list = [{'path': '~/Documents/vimwiki/',
                       \ 'path_html': '~/Documents/vimwiki_html/'}]

" Vimnotes
" location
let g:notes_directories = ['~/Documents/Notes']
let g:notes_suffix = '.txt'
let g:notes_title_sync = 1


" Powerline
set  rtp+=/home/daviddwlee84/.local/lib/python2.7/site-packages/powerline/bindings/vim/
set nocompatible
set laststatus=2
set t_Co=256
let g:airline_powerline_fonts=1

" vim-airline configure
let g:airline#extensions#tabline#enabled = 1 


" Script
set shiftwidth=4
set tabstop=4

" vim-latex
" set grepprg=grep\ -n\ $*
" let g:tex_flavor='latex'
" set sw=2
" set iskeyword+=:

" disable automatic comment insertion in C, C++
au FileType c,cpp setlocal comments-=:// comments+=f://

" YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
" Go to definition else declaration
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
" Autocomplete
let g:ycm_key_invoke_completion = '<C-a>'
" YCM Syntastic
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_check_on_open=0
let g:syntastic_check_on_wq=1


set number                     " Show current line number
set relativenumber             " Show relative line numbers

" make backspace work like most other apps
set backspace=indent,eol,start

syntax on

" DoxygenToolkit
let g:DoxygenToolkit_briefTag_pre="@Synopsis  " 
let g:DoxygenToolkit_paramTag_pre="@Param " 
let g:DoxygenToolkit_returnTag="@Returns   " 
let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------" 
let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------------" 
let g:DoxygenToolkit_authorName="David D.W.Lee" 
let g:DoxygenToolkit_licenseTag="My own license"
