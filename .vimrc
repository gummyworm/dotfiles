set nocompatible              " be iMproved, required
filetype off                  " required

"
" to update plugins with fish, run 'updatevim'
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'justinmk/vim-dirvish'
Plugin 'fatih/vim-go'
Plugin 'kien/ctrlp.vim'
Plugin 'rhysd/vim-clang-format'
Plugin 'maxbane/vim-asm_ca65'
Plugin 'altercation/vim-colors-solarized'
Plugin 'rust-lang/rust.vim'

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

" rust.vim
let g:rustfmt_autosave = 1
let g:rust_clip_command = 'pbcopy'

se nobackup nowritebackup
set mouse=a

" clang format
let g:clang_format#detect_style_file=1
let g:clang_format#auto_format=1
autocmd FileType c,h ClangFormatAutoEnable

set ruler
set colorcolumn=80
highlight ColorColumn ctermbg=lightgrey guibg=lightgrey

" syntax options
syntax on
filetype plugin indent on
augroup filetypedetect
	au BufNewFile,BufRead *.asm,*.s,*.inc set ft=asm_ca65
augroup END

set ignorecase
set hlsearch incsearch

" disable backups
se nobackup nowritebackup

" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

" highlight/incremental search
se hlsearch incsearch
" Ignore case by default when searching.
set ignorecase
syntax enable

if has('gui_running')
	colorscheme solarized
	set background=light
else
	set background=dark
endif

autocmd BufWritePre *.asm :%s/\s\+$//e

let g:go_fmt_command = "goimports"
set ttyfast
