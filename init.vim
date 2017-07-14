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
  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'
  Plug 'https://github.com/yosssi/vim-ace'
  Plug 'https://github.com/pangloss/vim-javascript'
  Plug 'cakebaker/scss-syntax.vim'
  Plug 'cespare/vim-toml'
  Plug 'junegunn/vim-easy-align'
  Plug 'digitaltoad/vim-pug'
call plug#end()
" #########################################
" ############ GENERAL CONFIGS ############
" #########################################
" -> Set leader key
set shell =/bin/zsh
let mapleader =' '
" -> Set color
" set background =dark
colorscheme neodark
" -> Save files map keys
nnoremap <silent><Leader>w :w<CR>
" -> Set line number available
set number
set nowrap
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
" * set arrow for maximize and minimize tree
let g:NERDTreeShowHidden            =1
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
let g:go_list_type = "quickfix"
" -> Syntastic <-
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list =1
let g:syntastic_auto_loc_list =1
let g:syntastic_check_on_open =1
let g:syntastic_check_on_wq =0
"let g:syntastic_debug =3
" * go config
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
" -> NerdTree <-
autocmd vimenter * NERDTree
" * set map ctrl + n for open and close nerdtree
map <C-n> :NERDTreeToggle<CR>
" -> CTRLP <-
map <Leader>b :CtrlPBuffer<CR>
let g:ctrlp_match_window_bottom   = 0
let g:ctrlp_match_window_reversed = 0
" -> JavaScript <-
let g:jsx_ext_required = 0
