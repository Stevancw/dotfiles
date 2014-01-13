" Default window size
set lines=55 columns=82

colorscheme twilight

set guifont=Monaco:h15

" remove toolbar and scrollbars from macvim
set guioptions-=T
set guioptions-=L
set guioptions-=r

" show console dialogs
set guioptions+=c

" Use cmd-P to open PeepOpen
if has("gui_macvim")
  macmenu &File.New\ Tab key=<nop>
  map <D-t> <Plug>PeepOpen
end
