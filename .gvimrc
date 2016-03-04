" use gui tabs
set guioptions+=e

" kill the menubar
set guioptions-=T

" kill the scrollbars
set guioptions-=r
set guioptions-=L


" initial window size
set lines=45 columns=120

colorscheme monokai

set statusline="%f%m%r%h%w [%Y] [0x%02.2B]%< %F%=%4v,%4l %3p%% of %L"
set guifont=Inconsolata
set rnu
