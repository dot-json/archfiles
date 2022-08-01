:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'https://github.com/preservim/nerdtree'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'pangloss/vim-javascript'
Plug 'peitalin/vim-jsx-typescript'
Plug 'leafgarland/typescript-vim'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-eslint'
Plug 'neoclide/coc-prettier'

call plug#end()

let g:airline_theme='deus'

let g:material_theme_style = 'darker'
colorscheme material

let g:netrw_liststyle=3
let g:netrw_keepdir=0
let g:NERDTreeChDirMode = 1
let g:NERDTreeMinimalUI=1

let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

highlight Normal guibg=#141414
highlight LineNr guifg=#8a8a8a
highlight LineNr ctermfg=DarkGrey

nmap <C-f> :NERDTreeToggle<CR>

nmap <c-c> "+y
vmap <c-c> "+y
nmap <c-v> "+p
inoremap <c-v> <c-r>+
cnoremap <c-v> <c-r>+
" use <c-r> to insert original character without triggering things like auto-pairs
inoremap <c-r> <c-v>
