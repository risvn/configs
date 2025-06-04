" Enable the statusline always
set laststatus=2

" Simple vintage-themed statusline
set statusline=%#StatusLine#\ 
set statusline+=%f              " File path
set statusline+=\ %m            " Modified flag
set statusline+=\ %y            " Filetype
set statusline+=\ %r            " Readonly flag
set statusline+=%=%#CursorLineNr#\ %{line('.')}\:%c " Line and column aligned right
set statusline+=\ %{strftime(\"%H:%M\")}              " Time
" === Basic Settings ===
set nobackup
set clipboard=unnamedplus
set cmdheight=1
set conceallevel=0
" set fileencoding=utf-8
set hlsearch
set ignorecase
set mouse=a
set pumheight=10
set showtabline=1
set smartcase
set smartindent
set splitbelow
set splitright
set noswapfile
set termguicolors
set timeoutlen=1000
set undofile
set updatetime=100
set nowritebackup
set expandtab
set shiftwidth=2
set tabstop=2
set cursorline
set number
set laststatus=3
set noshowcmd
set noruler
set relativenumber
set numberwidth=4
set signcolumn=yes
set nowrap
set scrolloff=0
set sidescrolloff=8
set guifont=monospace:h17
set title
set titlelen=0
set completeopt=menuone,noselect
set shortmess+=c
set whichwrap+=<,>,[,],h,l
set iskeyword+=-

" === Fillchars ===
set fillchars+=eob:\ 
set fillchars+=stl:\ 

" === Keybindings ===
let mapleader=" "
nnoremap <leader>x :Ex<CR>
inoremap jk <Esc>
inoremap kj <Esc>
nnoremap <C-b> <C-v>

" === Netrw Config ===
let g:netrw_banner=0
let g:netrw_mouse=2

" === Vintage Ghibli Color Scheme ===
syntax enable
set background=dark

highlight Normal       ctermbg=NONE guibg=#1b1b1b guifg=#e0d7c6
highlight Comment      guifg=#8a897c gui=italic
highlight Constant     guifg=#c7925b
highlight Identifier   guifg=#a3be8c
highlight Statement    guifg=#d08770
highlight PreProc      guifg=#b48ead
highlight Type         guifg=#88c0d0
highlight Special      guifg=#e5c07b
highlight LineNr       guifg=#5c5c5c
highlight CursorLineNr guifg=#ffd479 gui=bold
highlight CursorLine   guibg=#2f2f2f
highlight VertSplit    guifg=#444444
highlight StatusLine   guibg=#3c3c3c guifg=#dcdccc
highlight Pmenu        guibg=#2c2c2c guifg=#e0d7c6
highlight PmenuSel     guibg=#5a524c guifg=#ffd479
highlight Search       guibg=#5a524c guifg=#fffac2

" Fix for cursorline text visibility
highlight CursorLine ctermbg=236 guibg=#2f2f2f

" Enable the statusline always
set laststatus=2

" Simple vintage-themed statusline
set statusline=%#StatusLine#\ 
set statusline+=%f              " File path
set statusline+=\ %m            " Modified flag
set statusline+=\ %y            " Filetype
set statusline+=\ %r            " Readonly flag
set statusline+=%=%#CursorLineNr#\ %{line('.')}\:%c " Line and column aligned right
set statusline+=\ %{strftime(\"%H:%M\")}              " Time



" End of .vimrc
