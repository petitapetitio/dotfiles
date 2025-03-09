
call plug#begin()

" Thèmes
Plug 'kadekillary/skull-vim'
Plug 'shawncplus/skittles_berry'
Plug 'ghifarit53/tokyonight-vim'
Plug 'EdenEast/nightfox.nvim' " doesn't work :(
Plug 'nanotech/jellybeans.vim' 
Plug 'rafi/awesome-vim-colorschemes' 
Plug 'andreasvc/vim-256noir' 
Plug 'Alligator/accent.vim' " let g:accent_colour = 'green'
Plug 'doums/darcula'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'nordtheme/vim'
Plug 'sainnhe/edge' " https://github.com/sainnhe/edge
Plug 'sainnhe/sonokai'
Plug 'sainnhe/everforest'

Plug 'vim-airline/vim-airline'
Plug 'junegunn/goyo.vim' " mode distraction free

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'preservim/tagbar'

" Linters, fixers + basic autocompletion and code navigation
" Simpler than coc.nvim
Plug 'dense-analysis/ale'

call plug#end()



:syntax on

set background=dark
" color skittles_berry
" colorscheme skull
" colorscheme accent
" colorscheme orbital
" colorscheme onedark
" colorscheme petitapetitio

if $TERM_PROGRAM == "Apple_Terminal"
  " Terminal.app only supports 256 colours as of 2021
  set notermguicolors
endif

function! s:setMainTheme()
  colorscheme skull
  " colorscheme edge
  " let g:edge_style = 'aura'
  " set background=dark
endfunction

autocmd FileType python colorscheme petitapetitio
autocmd FileType * if &ft!="python" | call s:setMainTheme() | endif
" call s:setMainTheme()

" Only run linters named in ale_linters settings.
let g:ale_linters_explicit = 1
let g:ale_lint_on_text_changed = 1

let g:ale_linters = { "python": ["ruff"]}
let g:ale_fixers = { "python": ["ruff", "ruff_format"] }


" Prévisualiser l'autocompletion
" let g:ale_completion_enabled = 1
" let g:ale_completion_autoimport = 1
" let g:ale_linters = { 'python': ['ruff', 'pyright'] }
" nnoremap <C-d> :ALEGoToDefinition
" set completeopt=menu,menuone,preview,noselect,noinsert
" set omnifunc=ale#completion#OmniFunc


" Presentation
set nowrap                        " I'l scroll horizontally
set list listchars=trail:·,tab:⇥· " make trailing whitespace visible

" Navigate 10 lines below / above
nnoremap J 10+
nnoremap K 10-

nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-L>

" Rechercher par nom de fichier
nnoremap <C-P> :Files<CR>

" Rechercher dans le texte
nnoremap <C-F> :Rg<CR>

" Rechercher parmi les fichiers modifiés
nnoremap <C-G> :GFiles?<CR>

" Rechercher pami les derniers fichiers ouverts
nnoremap <C-B> :Buffers<CR>

" Jump backward / jumb forward
nnoremap <A-Left> <C-o>
nnoremap <ESC>b <C-o>

nnoremap <A-Right> <C-i>
nnoremap <ESC>f <C-i>

" Move to previous file (on linux and on mac)
nnoremap <A-S-Left> :bprevious<CR>
nnoremap <ESC>OD :bprevious<CR>

" Move to next file (on linux and on mac)
nnoremap <A-S-Right> :bnext<CR>
nnoremap <ESC>OC :bnext<CR>


nnoremap <C-t> :TagbarToggle<CR>

" Folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

function! FoldSameLevel()
  " Get the current indent level
  let l:indent = indent('.')
  " echom "Current indent: " . l:indent

  " Calculate the fold level based on your shiftwidth
  let l:foldlevel = (l:indent / &shiftwidth) - 1
  " echom "Calculated fold level: " . l:foldlevel

  " Set the fold level
  execute 'set foldlevel=' . l:foldlevel
  " echom "Fold level set to: " . &foldlevel

  return
endfunction

nnoremap <S-z> :call FoldSameLevel()<CR>


set encoding=utf-8

" vimdiff mappings : go to next diff, go to prev diff
nnoremap à ]c
nnoremap ç [c

highlight DiffAdd ctermbg=34
highlight DiffDelete ctermbg=248
highlight DiffChange ctermbg=33
highlight DiffText ctermbg=21

