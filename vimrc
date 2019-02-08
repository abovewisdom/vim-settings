syntax on
"indent properly if the filtype is known
if has("autocmd")
  filetype indent plugin on
endif
"line numbers on
set number
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
"make insert -> Normal fast
set timeoutlen=1000 ttimeoutlen=0
" Enable fzf
set rtp+=/usr/local/opt/fzf
"shortcut key for copy entire file to clipboard 
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
"light search on at first
set hlsearch
"highlight searches
noremap ,; :set hlsearch!<CR>
"Tidy command for HTML5
:vmap ,x :!tidy -q -i --show-errors 0<CR>
