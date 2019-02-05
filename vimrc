set encoding=utf-8 " Because nobody wants latin-1
set laststatus=2 " Needed to get lightline working
set mouse=a " Enable mouse
set noshowmode " Disable mode show as lightline plugin already does it
set number " Show line numbers
set paste " Terminal copy/paste without side effects
set ruler " Show line and column numbers of cursor position

" Needs +clipboard and +xterm_clipboard options to work
" https://stackoverflow.com/a/4608206/1731473
" https://www.slothparadise.com/copy-system-clipboard-vim/
vmap <C-C> "+y

" https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'editorconfig/editorconfig-vim'
Plug 'itchyny/lightline.vim'
Plug 'mhinz/vim-signify'
call plug#end()

" mhinz/vim-signify
highlight SignColumn	cterm=none ctermbg=none
highlight DiffAdd	cterm=bold ctermbg=none ctermfg=119
highlight DiffDelete	cterm=bold ctermbg=none ctermfg=167
highlight DiffChange	cterm=bold ctermbg=none ctermfg=227
set updatetime=100 " https://github.com/mhinz/vim-signify/issues/277#issuecomment-439231809
let g:signify_realtime = 1
