" ########################################################
" ############### PLUGINS INSTALL & IMPORTS ##############
" ########################################################
call plug#begin()
  Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
  Plug 'KeitaNakamura/neodark.vim'
  Plug 'matze/vim-move'
  Plug 'Yggdroot/indentLine'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'airblade/vim-gitgutter'
  Plug 'cohama/lexima.vim'
  Plug 'kien/ctrlp.vim'
  Plug 'ryanoasis/vim-devicons'
  Plug 'scrooloose/syntastic'
  Plug 'fatih/vim-go'
  Plug 'https://github.com/yosssi/vim-ace'
  Plug 'https://github.com/pangloss/vim-javascript'
  Plug 'cakebaker/scss-syntax.vim'
call plug#end()
" #########################################
" ############ GENERAL CONFIGS ############
" #########################################
" -> Set leader key
let mapleader =' '
" -> Set color
colorscheme neodark
" -> Save files map keys
nnoremap <silent><Leader>w :w<CR>
" -> Set line number available
set number
set noswapfile
set encoding   =utf8
" -> Set tabspaces and indent lines
set tabstop    =2
set shiftwidth =2
set expandtab
" #########################################
" ############ PLUGIN CONFIGS #############
" #########################################
" -> Neo dark theme <-
let g:neodark#background                ='gray'
let g:neodark#use_256color              =1
let g:neodark#use_custom_terminal_theme =1
" -> Ident line <-
let g:indentLine_char ='|'
" -> Lightline <-
let g:lightline ={}
let g:lightline.colorscheme ='neodark'
" -> NerdTree <-
autocmd vimenter * NERDTree
" * set map ctrl + n for open and close nerdtree
map <C-n> :NERDTreeToggle<CR>
" * set arrow for maximize and minimize tree
let NERDTreeShowHidden            =1
let g:NERDTreeDirArrowExpandable  ='▸'
let g:NERDTreeDirArrowCollapsible ='▾'
" -> Move Lines <-
let g:move_key_modifier ='C'
" -> Ariline <-
let g:airline_powerline_fonts =1
let g:airline_theme           ='light'
" -> Go <-
let g:go_highlight_functions         =1
let g:go_highlight_methods           =1
let g:go_highlight_fields            =1
let g:go_highlight_types             =1
let g:go_highlight_operators         =1
let g:go_highlight_build_constraints =1
