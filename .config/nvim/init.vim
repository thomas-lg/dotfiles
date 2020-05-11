" init.neovim
" -----------------------------
set nocompatible
set encoding=UTF-8
set hidden
set number

"-vim-plug---------------------
call plug#begin("~/.vim/plugged")

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': { -> fzf#install() } } "https://github.com/junegunn/fzf
Plug 'junegunn/fzf.vim' "https://github.com/junegunn/fzf.vim
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' } "https://github.com/preservim/nerdtree
Plug 'tpope/vim-surround' "https://github.com/tpope/vim-surround

Plug 'arcticicestudio/nord-vim' "https://github.com/arcticicestudio/nord-vim
Plug 'ayu-theme/ayu-vim' "https://github.com/ayu-theme/ayu-vim
Plug 'chriskempson/base16-vim' "https://github.com/chriskempson/base16
Plug 'dracula/vim', { 'as': 'dracula' } "https://github.com/dracula/vim
Plug 'jacoborus/tender.vim' "https://github.com/jacoborus/tender.vim
Plug 'joshdick/onedark.vim' "https://github.com/joshdick/onedark.vim
Plug 'junegunn/seoul256.vim' "https://github.com/junegunn/seoul256.vim
Plug 'mhartington/oceanic-next' "https://github.com/mhartington/oceanic-next
Plug 'morhetz/gruvbox' "https://github.com/morhetz/gruvbox
Plug 'NLKNguyen/papercolor-theme' "https://github.com/NLKNguyen/papercolor-theme
Plug 'sonph/onehalf' "https://github.com/sonph/onehalf/tree/master/vim

Plug 'vim-airline/vim-airline' "https://github.com/vim-airline/vim-airline
Plug 'vim-airline/vim-airline-themes' "https://github.com/vim-airline/vim-airline-themes
Plug 'ryanoasis/vim-devicons' "https://github.com/ryanoasis/vim-devicons

call plug#end()
"-/vim-plug--------------------

if (has("termguicolors"))
	 set termguicolors
 endif
 syntax enable
 colorscheme onedark

"-vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1
"-/vim-airline

"-nerdtree
let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>
"-/nerdtree

"-fzf-------------------------
nmap <C-p> :Files<CR>
nmap <C-b> :Buffers<CR>

"-Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

"-Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-l> <plug>(fzf-complete-line)
"-/fzf--------------------------

"-keymapping--------------------
"-navigation 
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
"-/keymapping-------------------
