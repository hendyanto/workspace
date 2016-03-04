set rtp+=~/.fzf
execute pathogen#infect()
map \t :FZF<CR>
map \g :NERDTreeToggle<CR>
set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
autocmd FileType ruby compiler ruby
set number
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

:set tabstop 2     - tabs are at proper location
:set expandtab     - don't use actual tab character (ctrl-v)
:set shiftwidth=2  - indenting is 4 spaces
:set autoindent    - turns it on
:set smartindent   - does the right thing (mostly) in programs
:set cindent       - stricter rules for C programs
