call plug#begin('~/.config/nvim/plugged/')
Plug 'morhetz/gruvbox'

"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'

Plug 'bagrat/vim-buffet'

Plug 'hardcoreplayers/spaceline.vim'
" Use the icon plugin for better behavior
Plug 'ryanoasis/vim-devicons'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
Plug 'junegunn/fzf.vim'

" To delete surrounding chars easily
Plug 'tpope/vim-surround'

" Repeate some ops
Plug 'tpope/vim-repeat'

" Open the file on the last position before closed
Plug 'dietsche/vim-lastplace'

" Shows the vim undo tree
Plug 'mbbill/undotree'


" jump to a char based on 2 chars
Plug 'justinmk/vim-sneak'
let g:sneak#label = 1
nmap f <Plug>Sneak_s
nmap F <Plug>Sneak_S

Plug 'neovim/nvim-lsp'
Plug 'haorenW1025/diagnostic-nvim'
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'Shougo/deoplete-lsp'
Plug 'haorenW1025/completion-nvim'
"Plug 'ervandew/supertab'
Plug 'liuchengxu/vista.vim'

Plug 'nvim-treesitter/nvim-treesitter'

Plug 'tpope/vim-endwise'
Plug 'jiangmiao/auto-pairs'

let g:deoplete#enable_at_startup = 1

call plug#end()

set laststatus=2

set backspace=indent,eol,start
set autoread
set title

" Don't beep
set visualbell
set noerrorbells

" Para usar o mouse
set mouse=a

syntax on
filetype on
filetype plugin on
filetype plugin indent on
filetype indent on

"History
set history=1000
set undolevels=1000

" Searching
set hlsearch
set ignorecase
set incsearch
set smartcase

" Indentation
set autoindent
set breakindent
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

" Appearance
set display+=lastline
set ruler
set showcmd
set wildmenu

set number
set hidden
set scrolloff=2

set listchars=tab:▸\ ,eol:¬
"set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+


set wildmenu
set wildmode=longest,list
"Sempre mostra o menu, melhora o autocompletion
set completeopt=menuone,longest

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" Using Solarized
set background=dark

colorscheme gruvbox
set termguicolors

let mapleader=","

" Abreviations {
cab W w
cab Wq wq
cab wQ wq
cab WQ wq
cab Q q
cab q1 q!
"}


autocmd Filetype c,cpp,python,julia,vim,rust setlocal omnifunc=v:lua.vim.lsp.omnifunc
nnoremap <silent> ff    <cmd>lua vim.lsp.buf.formatting()<CR>

" disable preview window
"set completeopt-=preview
set signcolumn=yes

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>

" Use <Tab> and <S-Tab> to navigate through popup menu
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ completion#trigger_completion()
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

lua require 'tagfunc_nvim_lsp'
set tagfunc=v:lua.tagfunc_nvim_lsp

" FZF {
let g:fzf_nvim_statusline = 0 " disable statusline overwriting
nnoremap <silent> <leader>f :FZF<cr>
nnoremap <silent> <leader>b :Buffers<cr>
nnoremap <silent> <leader>t :Tags<cr>
"}

" Airline {
"let g:airline_powerline_fonts = 1
""let g:airline_theme='base16'
"let g:airline#extensions#tagbar#flags = 'f'
"
"" Enable the list of buffers
"let g:airline#extensions#tabline#enabled = 1
"
"" Show just the filename
"let g:airline#extensions#tabline#fnamemod = ':t'
"
"" " YCM
"" " let g:airline#extensions#ycm#enabled = 1
"
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline#extensions#tabline#buffer_idx_mode = 1
"nmap <leader>1 <Plug>AirlineSelectTab1
"nmap <leader>2 <Plug>AirlineSelectTab2
"nmap <leader>3 <Plug>AirlineSelectTab3
"nmap <leader>4 <Plug>AirlineSelectTab4
"nmap <leader>5 <Plug>AirlineSelectTab5
"nmap <leader>6 <Plug>AirlineSelectTab6
"nmap <leader>7 <Plug>AirlineSelectTab7
"nmap <leader>8 <Plug>AirlineSelectTab8
"nmap <leader>9 <Plug>AirlineSelectTab9
"" }


" vim-buffet {
nmap <leader>1 <Plug>BuffetSwitch(1)
nmap <leader>2 <Plug>BuffetSwitch(2)
nmap <leader>3 <Plug>BuffetSwitch(3)
nmap <leader>4 <Plug>BuffetSwitch(4)
nmap <leader>5 <Plug>BuffetSwitch(5)
nmap <leader>6 <Plug>BuffetSwitch(6)
nmap <leader>7 <Plug>BuffetSwitch(7)
nmap <leader>8 <Plug>BuffetSwitch(8)
nmap <leader>9 <Plug>BuffetSwitch(9)
nmap <leader>0 <Plug>BuffetSwitch(10)
" }



"Vista {
let g:vista_executive_for = {
            \ 'cpp': 'nvim_lsp',
            \ 'rust': 'nvim_lsp',
            \ 'python': 'nvim_lsp',
            \}
" }

luafile ~/.config/nvim/init.lua
