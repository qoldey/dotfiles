" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" do not load defaults if ~/.vimrc is missing
"let skip_defaults_vim=1

set clipboard=unnamed
syntax on

"auto change dir
set autochdir

map <C-p> :!zathura --fork %:t:r.pdf<CR><CR>
map <C-w> :w!<CR> :!pdflatex %<CR><CR> 
map <C-b> :w!<CR> :!biber %:t:r<CR><CR>
