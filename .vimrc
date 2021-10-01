syntax on

set exrc
set relativenumber
set nu
set nohlsearch
set hidden
set smartindent
set smartcase
set noshowmode
set completeopt=menuone,noinsert,noselect
set guicursor=
set spell
set clipboard=unnamedplus
set nohlsearch
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=black

call plug#begin('~/.vim/plugged')

Plug 'tweekmonster/gofmt.vim'
Plug 'sheerun/vim-polyglot'
Plug 'vuciv/vim-bujo'
Plug 'tpope/vim-dispatch'
Plug 'vim-airline/vim-airline'
Plug 'inkarkat/vim-ingo-library' | Plug 'inkarkat/vim-SpellCheck'
Plug 'gruvbox-community/gruvbox'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'colepeters/spacemacs-theme.vim'
Plug 'sainnhe/gruvbox-material'
Plug 'morhetz/gruvbox'
Plug 'phanviet/vim-monokai-pro'
Plug 'flazz/vim-colorschemes'
Plug 'chriskempson/base16-vim'

call plug#end()

augroup vimrcEx
autocmd FileType markdown setlocal complete+=kspell
autocmd BufRead,BufNewFile *.md setlocal spell spelllang=en_gb
augroup END

" Spelling mistakes will also be colored red if you uncomment the colors.
hi SpellBad cterm=underline "ctermfg=203 guifg=#ff5f5f
hi SpellLocal cterm=underline "ctermfg=203 guifg=#ff5f5f
hi SpellRare cterm=underline "ctermfg=203 guifg=#ff5f5f
hi SpellCap cterm=underline "ctermfg=203 guifg=#ff5f5f

colorscheme gruvbox
set background=dark

if executable('rg')
    let g:rg_derive_root='true'
endif

let loaded_matchparen = 1
let mapleader = " "

nnoremap <Leader>ee oif err != nil {<CR>log.Fatalf("%+v\n", err)<CR>}<CR><esc>kkI<esc>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
vnoremap X "_d

nnoremap <leader>vwm :colorscheme gruvbox<bar>:set background=dark<CR>
nmap <leader>vtm :highlight Pmenu ctermbg=gray guibg=gray

inoremap <C-c> <esc>

command! -nargs=0 Prettier :CocCommand prettier.formatFile
inoremap <silent><expr> <C-space> coc#refresh()
inoremap kj <esc>
inoremap jk <esc>

inoremap jk <esc>

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

com! W w

augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank()
augroup END

augroup THE_PRIMEAGEN
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END
