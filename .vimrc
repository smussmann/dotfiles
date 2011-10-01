set expandtab
set cindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set incsearch
set autoindent
set smartindent
set vb t_vb=
set ruler
set backspace=indent,eol,start
map <F2> :nohl<RETURN>
map <F6> :make<CR>
map <silent> <F7> :cprev<CR>
map <silent> <F8> :cnext<CR>
colorscheme elflord
syn on
set directory^=$HOME/vim_swap//

if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
