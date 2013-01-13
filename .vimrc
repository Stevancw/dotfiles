"      _                                      
"  ___| |_ _____   ____ _ _ __   _____      __
" / __| __/ _ \ \ / / _` | '_ \ / __\ \ /\ / /
" \__ \ ||  __/\ V / (_| | | | | (__ \ V  V / 
" |___/\__\___| \_/ \__,_|_| |_|\___| \_/\_/  
"
" Stevan C Wing January 2013
"---------------------------------------------
                                            
set nocompatible	    " vi is a bit old
set autowrite 		    " write the old file out when switching between files.
set history=50		    " keep 50 lines of command line history
set ruler		          " show the cursor position all the time
set showcmd		        " display incomplete commands
set incsearch		      " do incremental searching
set mousehide 		    " hide mouse when typing
set number            " turn on numbers 
set cursorline        " highlight the current line
set showmode          " what mode am i in?

syntax on             " turn on syntax highlighting

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

colorscheme xoria256
