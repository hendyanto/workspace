 " Note: Skip initialization for vim-tiny or vim-small.
 if 0 | endif

 if &compatible
   set nocompatible               " Be iMproved
 endif

 " Required:
 set runtimepath^=~/.vim/bundle/neobundle.vim/

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'

 " My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!


 " Required:
 filetype plugin indent on

NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'windows' : 'make -f make_mingw32.mak',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
     \ }
NeoBundle 'Shougo/unite.vim'
NeoBundle 'm2mdas/phpcomplete-extended'
"your other plugins


  NeoBundle 'MarcWeber/vim-addon-mw-utils'
  NeoBundle 'tomtom/tlib_vim'
  NeoBundle 'garbas/vim-snipmate'

  " Optional:
  NeoBundle 'honza/vim-snippets'

  NeoBundle 'scrooloose/nerdtree'
NeoBundle '2072/PHP-Indenting-for-VIm'
NeoBundle 'junegunn/vim-easy-align'

NeoBundleCheck

call neobundle#end()
set rtp+=~/.fzf
map \t :FZF<CR>
map \g :NERDTreeToggle<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set guioptions+=e
set guioptions-=T
set guioptions-=r
set guioptions-=L
set lines=45 columns=120
colorscheme monokai
set statusline="%f%m%r%h%w [%Y] [0x%02.2B]%< %F%=%4v,%4l %3p%% of %L"
set guifont=Inconsolata
set rnu

filetype plugin on
syntax on

" Start interactive EasyAlign in visual mode (e.g. vipga)
 xmap ga <Plug>(EasyAlign)
"
" " Start interactive EasyAlign for a motion/text object (e.g. gaip)
 nmap ga <Plug>(EasyAlign)

 autocmd InsertEnter,InsertLeave * set cul!
function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END
