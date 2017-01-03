set nocompatible              " be iMproved, required
filetype off                  " required

"
" to update plugins with fish, run 'updatevim'
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-vinegar'
Plugin 'kien/ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rhysd/vim-clang-format'
Plugin 'maxbane/vim-asm_ca65'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" keybindings
let mapleader = "\<Space>"
nnoremap <leader>j <C-W><C-J>
nnoremap <leader>k <C-W><C-K>
nnoremap <leader>l <C-W><C-L>
nnoremap <leader>h <C-W><C-H>
set backspace=2 " make backspace work like most other apps

" YouCompleteMe
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
let g:ycm_extra_conf_globlist=['~/.vim/*']
let g:ycm_always_populate_location_list = 0
let g:ycm_auto_trigger=1
let g:ycm_enable_diagnostic_highlighting=1
let g:ycm_enable_diagnostic_signs=1
let g:ycm_max_diagnostics_to_display=10000
let g:ycm_min_num_identifier_candidate_chars=0
let g:ycm_min_num_of_chars_for_completion=2
let g:ycm_open_loclist_on_ycm_diags=1
let g:ycm_show_diagnostics_ui=1

se nobackup nowritebackup
set mouse=a

" netrw/vinegar
let g:netrw_banner = 0

" clang format
let g:clang_format#detect_style_file=1
autocmd FileType c,h ClangFormatAutoEnable

set colorcolumn=80
highlight ColorColumn ctermbg=lightgrey guibg=lightgrey

" syntax options
syntax on
filetype plugin indent on
augroup filetypedetect
	au BufNewFile,BufRead *.s,*.inc set ft=asm_ca65
augroup END

set ignorecase
set hlsearch incsearch
