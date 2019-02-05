set encoding=utf-8 " Because nobody wants latin-1
set mouse=a " Enable mouse
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
