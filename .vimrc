"      _                                      
"  ___| |_ _____   ____ _ _ __   _____      __
" / __| __/ _ \ \ / / _` | '_ \ / __\ \ /\ / /
" \__ \ ||  __/\ V / (_| | | | | (__ \ V  V / 
" |___/\__\___| \_/ \__,_|_| |_|\___| \_/\_/  
"
" Stevan C Wing January 2014
"---------------------------------------------

execute pathogen#infect()

set nocompatible	    " vi is a bit old
set autowrite 		    " write the old file out when switching between files.
set history=50		    " keep 50 lines of command line history
set ruler		          " show the cursor position all the time
set showcmd		        " display incomplete commands
set mousehide 		    " hide mouse when typing
set number            " turn on numbers 
set cursorline        " highlight the current line
set showmode          " what mode am i in?

" better searching
set incsearch		      " do incremental searching
set showmatch         " show bracket matches
set ignorecase        " ignore case in search
set hlsearch          " highlight all search matches

syntax on                 " turn on syntax highlighting
filetype plugin indent on " turn on indent and filetype

" turn off that incessant bleeping (it's annoying)
set visualbell        " don't beep
set noerrorbells      " don't beep

" no backups or swap files (it's annoying)
set nobackup
set nowritebackup
set noswapfile

" indent things in a smart way
set smartindent
set autoindent

" softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

"Map escape key to jj -- much faster
imap jj <esc>

" Duplicate a selection (Visual mode: D)
vmap D y'>p

" Maps autocomplete to tab
imap <Tab> <C-N>
imap <C-L> <Space>=><Space>

" colorscheme xoria256

" Chris Hunt's colour-scheme settings
set background=dark
colorscheme base16-railscasts

highlight clear SignColumn
highlight VertSplit    ctermbg=236
highlight ColorColumn  ctermbg=237
highlight LineNr       ctermbg=236 ctermfg=240
highlight CursorLineNr ctermbg=236 ctermfg=240
highlight CursorLine   ctermbg=236
highlight StatusLineNC ctermbg=238 ctermfg=0
highlight StatusLine   ctermbg=240 ctermfg=12
highlight IncSearch    ctermbg=0   ctermfg=3
highlight Search       ctermbg=0   ctermfg=9
highlight Visual       ctermbg=3   ctermfg=0
highlight Pmenu        ctermbg=240 ctermfg=12
highlight PmenuSel     ctermbg=0   ctermfg=3
highlight SpellBad     ctermbg=0   ctermfg=1


" rename current file, via Gary Bernhardt
function! RenameFile()
  let old_name = expand('%')
  let new_name = input('New file name: ', expand('%'))
  if new_name != '' && new_name != old_name
    exec ':saveas ' . new_name
    exec ':silent !rm ' . old_name
    redraw!
  endif
endfunction
map <leader>n :call RenameFile()<cr>


"----------------------------------------------

"Plugin configurations 

"Map ctrl + n to open NERDTree
map <C-n> :NERDTreeToggle<CR>

"Open NERDTree if ther is no file selected
autocmd vimenter * if !argc() | NERDTree | endif

"Faster shortcut for commenting. Requires T-Comment plugin
map <leader>c <c-_><c-_>

"----------------------------------------------
