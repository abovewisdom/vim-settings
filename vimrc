syntax on
filetype plugin indent on
set background=dark
"colorscheme solarized
set number
"adding configuration for new plugins
set nocompatible
"Backspace over everything
set backspace=indent,eol,start
" define number of colors
set t_Co=256
" define initial background (light/dark)
set background=dark
" define color scheme
colorscheme solarized
" always display status line
set laststatus=2
" do not show mode
set noshowmode
" define lightline configuration
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }
" define function to toggle solarized theme
" change background and update lightline color scheme
function! ToggleSolarizedTheme()
  let &background = ( &background == "dark"? "light" : "dark" )
  if exists("g:lightline")
    runtime autoload/lightline/colorscheme/solarized.vim
    call lightline#colorscheme()
  endif
endfunction
" map F12 to ToggleSolarizedTheme() function
map <F12> :call ToggleSolarizedTheme()<CR>
"CtrlP
"set runtimepath^=~/.vim/pack/my-plugins/start/ctrlp.vim
"remap ctrl p 
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
"make insert -> Normal fast
set timeoutlen=1000 ttimeoutlen=0
" Enable fzf
set rtp+=/usr/local/opt/fzf
"shortcut key for paste
noremap ,, :%w !pbcopy<CR>
"hide buffers instead of needing to save before switching
set hidden
"settings for lightline-bufferline
let g:lightline.tabline          = {'left': [['buffers']], 'right':[['']]}
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type   = {'buffers': 'tabsel'}
set showtabline=2
let g:lightline#bufferline#show_number = 1
let g:lightline#bufferline#min_buffer_count = 2
