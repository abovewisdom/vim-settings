syntax on
filetype plugin indent on
set number
"adding configuration for new plugins(taking this out to see if it breaks
"anything)
"set nocompatible
"Backspace over everything
set backspace=indent,eol,start
"define number of colors
set t_Co=256
" define initial background (light/dark)
set background=dark
" define color scheme
colorscheme solarized
" always display status line
set laststatus=2
" do not show mode as lightline shows it
set noshowmode
" define lightline configuration
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \  'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'modified', 'buffers']
      \           ]   
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \ },
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
"CtrlP settings(remove if not needed)
"set runtimepath^=~/.vim/pack/my-plugins/start/ctrlp.vim
"remap ctrl p 
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
"make insert -> Normal fast
set timeoutlen=1000 ttimeoutlen=0
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
" Enable fzf
set rtp+=/usr/local/opt/fzf
"shortcut key for copy entire fiel to clipboard 
noremap ,, :%w !pbcopy<CR>
"hide buffers instead of needing to save before switching
set hidden
"settings for lightline-bufferline
let g:lightline.tabline          = {'left': [['buffers']], 'right':[['']]}
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type   = {'buffers': 'tabsel'}
let g:lightline#bufferline#show_number = 1
"abreviation for finding files in parent folder usage: :e %%/
cabbr <expr> %% expand('%:p:h')
"highlight searches
noremap ,; :set hlsearch!<CR>
