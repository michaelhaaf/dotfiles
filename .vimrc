set clipboard=unnamedplus
set number
set tabstop=4 shiftwidth=2 expandtab
syntax on

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

