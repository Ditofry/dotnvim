"" Colors:
"" ---------------------------------------------------------------------------
"" What a pain, amirite?
"" 
"" TODO: this is currently shitty

set termguicolors

func! GetBase16(id)
  if filereadable(expand("~/.vimrc_background"))
    let base16colorspace=256
    source ~/.vimrc_background
  endif
endf

"" Gruv:
" ----------------------------------------------------------------------------

" let g:gruvbox_italic=1
" colorscheme gruvbox
" set background=dark

"" base16:
" ----------------------------------------------------------------------------

call GetBase16('init')
call timer_start(500, 'GetBase16', {'repeat':-1})
colorscheme base16-ashes
