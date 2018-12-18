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
"show tablines for buffers
let g:airline#extensions#tabline#enabled = 1
"Apex plugin settings
filetype plugin on
"hidden buffers
set hidden
"make vimdiff better
:set diffopt+=algorithm:patience
"Force.com settings
let g:apex_backup_folder="/tmp/apex/backup"
let g:apex_temp_folder="/tmp/apex/gvim-deployment"
"Credentials for the Salesforce org go in the directory below
let g:apex_properties_folder="/media/truecrypt1"
"Path to a package that is needed
let g:apex_tooling_force_dot_com_path="~/.vim/pack/my-plugins/start/toolling-force"


